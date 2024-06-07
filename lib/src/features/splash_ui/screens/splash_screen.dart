import 'dart:async';

import 'package:adobix_ui1/src/features/dashboard/screen/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:adobix_ui1/src/components/components.dart';
import 'package:adobix_ui1/src/styles/styles.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../components/background_shapes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundShapes(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                const Spacer(),
                const LoadingIndicator(),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const FlutterLogo(size: 54),
                    AppSizes.dp12.w,
                    Column(
                      children: [
                        const Text(
                          'Made with',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                            .animate(
                                onPlay: (controller) => controller.repeat())
                            .shimmer(
                              duration: 2400.ms,
                              color: Colors.red,
                            ),
                        const Text(
                          'Flutter',
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 27,
                          ),
                        )
                            .animate(
                                onPlay: (controller) => controller.repeat())
                            .shimmer(
                              duration: 2400.ms,
                              color: Colors.orange,
                            ),
                      ],
                    ),
                  ],
                ),
                AppSizes.dp12.h
              ],
            ),
          ),
        ),
      ),
    );
  }
}
