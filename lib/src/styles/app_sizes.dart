part of 'styles.dart';

extension EmptySpace on num {
  SizedBox get h => SizedBox(height: toDouble());

  SizedBox get w => SizedBox(width: toDouble());
}

class AppSizes {
  static const double dpp5 = 0.5;
  static const double dp0 = 0.0;
  static const double dp1 = 1.0;
  static const double dp2 = 2.0;
  static const double dp3 = 3.0;
  static const double dp4 = 4.0;
  static const double dp5 = 5.0;
  static const double dp6 = 6.0;
  static const double dp7 = 7.0;
  static const double dp8 = 8.0;
  static const double dp10 = 10.0;
  static const double dp12 = 12.0;
  static const double dp14 = 14.0;
  static const double dp16 = 16.0;
  static const double dp20 = 20.0;
  static const double dp24 = 24.0;
  static const double dp30 = 30.0;
  static const double dp32 = 32.0;
  static const double dp34 = 34.0;
  static const double dp40 = 40.0;
  static const double dp48 = 48.0;
  static const double dp50 = 50.0;
  static const double dp56 = 56.0;
  static const double dp60 = 56.0;
  static const double dp64 = 64.0;
  static const double dp90 = 90.0;
  static const double dp110 = 110.0;
  static const double dp120 = 120.0;
  static const double dp160 = 160.0;
  static const double dp230 = 230.0;

  /// full width
  static double width(context) => MediaQuery.of(context).size.width;

  /// full height
  static double height(context) => MediaQuery.of(context).size.height;

}
