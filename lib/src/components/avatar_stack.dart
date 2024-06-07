import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AvatarStack extends StatelessWidget {
  const AvatarStack({
    super.key,
    required this.avatars,
    this.stackHeight = 120,
    this.extraParticipantsCount,
  });

  final List<String> avatars;
  final double stackHeight;
  final int? extraParticipantsCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: stackHeight,
      child: Stack(
        children: List.generate(
          avatars.length,
          (index) => Align(
            alignment: Alignment.center,
            child: Transform.translate(
              offset: Offset((index - 1) * 50.0, 0),
              child: Avatar(imageUrl: avatars[index])
                  .animate(
                    delay: const Duration(
                      milliseconds: 500,
                    ),
                  )
                  .fadeIn(
                    delay: Duration(
                      milliseconds: index * 100,
                    ),
                  )
                  .slide(
                    begin: const Offset(0.5, 0),
                    duration: const Duration(
                      milliseconds: 200,
                    ),
                    curve: Curves.easeOut,
                    delay: Duration(
                      milliseconds: index * 100,
                    ),
                  )
                  .animate(
                onPlay: (controller) {
                  controller.repeat();
                },
              ).shimmer(
                duration: 2400.ms,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Avatar extends StatelessWidget {
  const Avatar({
    super.key,
    required this.imageUrl,
    this.radius = 50,
    this.child,
  });

  final String imageUrl;
  final int radius;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius.toDouble() + 2,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: radius.toDouble(),
        backgroundImage: NetworkImage(imageUrl),
        child: child,
      ),
    );
  }
}