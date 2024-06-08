import 'package:flutter/material.dart';

import 'features/intro/intro_screen.dart';
import 'features/intro/intro_widget.dart';
import 'features/splash_ui/screens/splash_screen.dart';
import 'styles/styles.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Toolkit',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaleFactor: 0.8,
          ),
          child: child!,
        );
      },
      themeMode: ThemeMode.system,
      home: const IntroScreen(),
    );
  }
}
