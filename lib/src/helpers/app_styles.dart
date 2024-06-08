
part of 'helper.dart';


class AppSty {
  //// Display Text Style
  static TextStyle? displayMedium = Get.textTheme.displayMedium;
  static TextStyle? displayLarge = Get.textTheme.displayLarge;
  static TextStyle? displaySmall = Get.textTheme.displaySmall;

  //// Title Text Style
  static TextStyle? titleSmall = Get.textTheme.titleSmall;
  static TextStyle? titleMedium = Get.textTheme.titleMedium;
  static var titleLarge = Get.textTheme.titleLarge;

  //// Body Text Style
  static TextStyle? bodyLarge = Get.textTheme.bodyLarge;
  static TextStyle? bodyMedium = Get.textTheme.bodyMedium;
  static TextStyle? bodySmall = Get.textTheme.bodySmall;

  static EdgeInsets eSym({
    double v = 0,
    double h = 0,
  }) =>
      EdgeInsets.symmetric(
        vertical: v,
        horizontal: h,
      );

  static EdgeInsets eOnly({
    double l = 0,
    double r = 0,
    double t = 0,
    double b = 0,
  }) =>
      EdgeInsets.only(
        left: l,
        right: r,
        top: t,
        bottom: b,
      );

  static Alignment bLft = Alignment.bottomLeft;
}

class AppEdge {
  static EdgeInsets sym({
    double v = 0,
    double h = 0,
  }) =>
      EdgeInsets.symmetric(
        vertical: v,
        horizontal: h,
      );

  static EdgeInsets all({double a = 0}) => EdgeInsets.all(a);

  static EdgeInsets only({
    double l = 0,
    double r = 0,
    double t = 0,
    double b = 0,
  }) =>
      EdgeInsets.only(
        left: l,
        right: r,
        top: t,
        bottom: b,
      );

  BorderRadius circular(double? r) => BorderRadius.circular(r ?? 5);
}
