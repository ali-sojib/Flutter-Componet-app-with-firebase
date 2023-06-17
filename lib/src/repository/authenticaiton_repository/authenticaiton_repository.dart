import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app_with_firebase/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:flutter_app_with_firebase/src/features/core/screens/dashboard/dashboard.dart';
import 'package:flutter_app_with_firebase/src/repository/authenticaiton_repository/expception/signup_email_password_faild.dart';
import 'package:get/get.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  // Variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  var verificationId = ''.obs;

  //will be load when app launches this function will be called and set the firebase state
  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
    super.onReady();
  }

  //setting initial screen onLOAD
  void _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const WelcomeScreen())
        : Get.offAll(() => const Dashboard());
  }

  //Function
  Future<void> phoneAuthentication(phoneNo) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNo,
      verificationCompleted: (credential) async {
        await _auth.signInWithCredential(credential);
      },
      codeSent: (verification, resendToken) {
        verificationId.value = verification;
      },
      codeAutoRetrievalTimeout: (verification) {
        verificationId.value = verification;
      },
      verificationFailed: (e) {
        if (e.code == 'invalid-phone-number') {
          Get.snackbar("Error", "invalid-phone-number");
        }
        Get.snackbar("Error", "Something went wrong");
        print("pirnt ${e.message}");
      },
    );
  }

  Future<bool> verifyOTP(String otp) async {
    var credentials = await _auth.signInWithCredential(
      PhoneAuthProvider.credential(
          verificationId: verificationId.value, smsCode: otp),
    );
    print("verifyOTP AUTH waiting");
    return credentials.user != null ? true : false;
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => const Dashboard())
          : Get.offAll(() => const WelcomeScreen());
    } on FirebaseException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      print("FIREBASE AUTH EXCEPTION :[ - ${ex.message}");
      throw ex;
    } catch (_) {
      final ex = SignUpWithEmailAndPasswordFailure();
      print("EXCEPTION - ${ex.message}");
      throw ex;
    }
  }

  Future<void> loginWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      print("FIREBASE AUTH EXCEPTION :[ - ${ex.message}");
      throw ex;
    } catch (_) {
      final ex = SignUpWithEmailAndPasswordFailure();
      print("EXCEPTION - ${ex.message}");
      throw ex;
    }
  }

  Future<void> logout() async => await _auth.signOut();
}
