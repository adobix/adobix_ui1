part of 'components.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 50,
        height: 50,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              AppImages.logo,
              fit: BoxFit.cover,
              height: 25,
              width: 25,
            ),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.blue),
              strokeWidth: 1.2,
            ),
            const SizedBox(
              width: 45,
              height: 45,
              child: RotatingCircularIndicator(),
            )
          ],
        ),
      ),
    );
  }
}

class RotatingCircularIndicator extends StatefulWidget {
  const RotatingCircularIndicator({super.key});

  @override
  State<RotatingCircularIndicator> createState() =>
      _RotatingCircularIndicatorState();
}

class _RotatingCircularIndicatorState extends State<RotatingCircularIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget? child) {
        return Transform.rotate(
          angle: -_controller.value * 2 * 3.14,
          child: const CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.green),
            strokeWidth: 1.2,
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
