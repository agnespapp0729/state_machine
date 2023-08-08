import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:state_machine/home_page.dart';
import 'package:state_machine/login_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('user_box');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => AnimatedSplashScreen(
              splash: 'assets/images/flutter5786.jpg',
              nextScreen: const LoginPage(),
              splashTransition: SplashTransition.rotationTransition,
            ),
        '/home': (context) => const HomePage(),
      },
      //home: const SplashPage(),
    );
  }
}
