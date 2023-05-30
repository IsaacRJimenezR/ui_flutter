import 'package:flutter/material.dart';
import 'package:ui_flutter/pages/login_page.dart';
import 'package:ui_flutter/pages/welcome_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, //PARA QUITAR MENSAJE DE EMULADOR
      title: 'UI_FLUTTER',
      // home: WelcomePage(),
      home: LoginPage(),
      // initialRoute: '/', //RUTA INICIAL
      // routes: {
      //   '/': (context) => WelcomePage(),
      //   '/loginPage': (context) => LoginPage(),
      // },
    );
  }
}
