import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_with_firebase/firebase_options.dart';
import 'package:flutter_app_with_firebase/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:flutter_app_with_firebase/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:flutter_app_with_firebase/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:flutter_app_with_firebase/src/repository/authenticaiton_repository/authenticaiton_repository.dart';
import 'package:flutter_app_with_firebase/src/utils/theme/theme.dart';
import 'package:get/get.dart';

import 'src/features/core/screens/dashboard/dashboard.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((value) => Get.put(AuthenticationRepository()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: SAppTheme.lightTheme,
        darkTheme: SAppTheme.darkTheme,
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
        home: WelcomeScreen()
        // SplashScreen(),
        );
  }
}

// class AppHome extends StatelessWidget {
//   const AppHome({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('My App'),
//         leading: const Icon(Icons.ondemand_video),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         tooltip: 'Increment',
//         child: const Icon(Icons.add_shopping_cart),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: ListView(
//           children: [
//             Text('Heading', style: Theme.of(context).textTheme.headline2),
//             Text('Sub-heading', style: Theme.of(context).textTheme.subtitle1),
//             Text('Paragraph', style: Theme.of(context).textTheme.bodyText1),
//             ElevatedButton(onPressed: () {}, child: Text('Elevated Button')),
//             ElevatedButton(onPressed: () {}, child: Text('Outlined Button')),
//             const Padding(
//               padding: EdgeInsets.all(20.0),
//               child: Image(image: AssetImage('assets/images/my_adobie.jpg')),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
