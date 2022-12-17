import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gcx_marketplace/responsive/mobile_screen_layout.dart';
import 'package:gcx_marketplace/responsive/responsive_layout_screen.dart';
import 'package:gcx_marketplace/responsive/web_screen_layout.dart';
import 'package:gcx_marketplace/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'GUIDEstagram',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: mobileBackgroundColor,
        ),
        home: const ResponsiveLayout(
          webScreenLayout: WebScreenLayout(),
          mobileScreenLayout: MobileScreenLayout(),
        ));
  }
}
