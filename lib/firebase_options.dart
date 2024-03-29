// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCJJX84DFRHIUsiHztfnJ9oXwRp6Sa30EA',
    appId: '1:618827230661:android:e1a920b3337f7f262dafac',
    messagingSenderId: '618827230661',
    projectId: 'flutter-componentapp-firebase',
    storageBucket: 'flutter-componentapp-firebase.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBy04jkBhkT0f5fu0nsqUx3LevH6wCbmDE',
    appId: '1:618827230661:ios:2c556bb677eb57e92dafac',
    messagingSenderId: '618827230661',
    projectId: 'flutter-componentapp-firebase',
    storageBucket: 'flutter-componentapp-firebase.appspot.com',
    androidClientId: '618827230661-j6ambubrmmlbf80rjs8jm1rg3f9dvsba.apps.googleusercontent.com',
    iosClientId: '618827230661-r4dvdr2uo3fn7fgaf4n4jiib15fvmcri.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterAppWithFirebase',
  );
}
