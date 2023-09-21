import 'package:flutter/material.dart';
import 'package:state_machine/pages/emulator_data_page.dart';
import 'package:state_machine/pages/home_page/home_page.dart';
import 'package:state_machine/pages/login_page.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:state_machine/pages/splash_page.dart';
import 'package:state_machine/model/user_model/users.dart';

//late Box box;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  //box = await Hive.openBox('user_box');
  //Hive.registerAdapter(UsersAdapter());
  //box.put('user', Users(name: "David", age: 33));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/data': (context) => const EmulatorData(),
      },
    );
  }
}
