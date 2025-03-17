import 'package:bluecs_assignment/views/screens/business_profile_screen.dart';
import 'package:bluecs_assignment/configure/colors.dart';
import 'package:bluecs_assignment/configure/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: CustomColors.backgroundColor,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: CustomColors.backgroundColor,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: CustomTheme.darkTheme,
      home: const BusinessProfileScreen(),
    );
  }
}
