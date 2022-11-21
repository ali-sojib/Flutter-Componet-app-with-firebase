import 'package:flutter/material.dart';
import 'package:flutter_app_with_firebase/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:flutter_app_with_firebase/src/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: SAppTheme.lightTheme,
      darkTheme: SAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const SplashScreen(),
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
