import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/constants/colors.dart';
import 'package:todo_app/pages/home_page.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  //Init the hive
  await Hive.initFlutter();

  //Open a box
  var box = await Hive.openBox('mybox');

  //Remove the splash screen after load hive components
  FlutterNativeSplash.remove();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: CustomColor.customPink),
      home: HomePage(),
    );
  }
}
