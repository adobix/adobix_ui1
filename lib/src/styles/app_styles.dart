part of 'styles.dart';

class AppStyles {
  static const TextStyle txtStyle = TextStyle(
    color: Colors.white,
    fontSize: 13,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle headerStyle = TextStyle(
      fontSize: 14, color: AppColors.primary, fontWeight: FontWeight.bold
  );

  static const TextStyle fs12 = TextStyle(fontSize: AppSizes.dp12);
  static const TextStyle fs12Bold = TextStyle(
    fontSize: AppSizes.dp12,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle fontBold =
      TextStyle(fontWeight: FontWeight.bold, color: AppColors.primary);

  static const TextStyle undoBtn = TextStyle(color: Colors.white, fontSize: 13);
  static const TextStyle drawerTxtStyle =
      TextStyle(fontSize: 15, color: AppColors.primary);

  static const TextStyle appBarTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 16,
  );

  static BorderRadius borderRadius20 = BorderRadius.circular(AppSizes.dp20);

  static const EdgeInsets p4 = EdgeInsets.all(AppSizes.dp4);
  static const EdgeInsets p8 = EdgeInsets.all(AppSizes.dp8);
  static const EdgeInsets p12 = EdgeInsets.all(AppSizes.dp12);
  static const EdgeInsets p16 = EdgeInsets.all(AppSizes.dp16);

  static EdgeInsets eSym({double v = AppSizes.dp0, double h = AppSizes.dp0}) =>
      EdgeInsets.symmetric(vertical: v, horizontal: h);

  static EdgeInsets eOnly({
    double l = AppSizes.dp0,
    double r = AppSizes.dp0,
    double t = AppSizes.dp0,
    double b = AppSizes.dp0,
  }) =>
      EdgeInsets.only(left: l, right: r, top: t, bottom: b);

  static const Border iBorder = Border(
    top: BorderSide(color: AppColors.primary, width: AppSizes.dpp5),
    bottom: BorderSide(color: AppColors.primary, width: AppSizes.dpp5),
    right: BorderSide(color: AppColors.primary, width: AppSizes.dpp5),
    left: BorderSide(color: AppColors.primary, width: AppSizes.dp34),
  );

  static List<BoxShadow> iBoxShadow = [
    BoxShadow(
      color: Colors.grey.withOpacity(0.2),
      spreadRadius: 5,
      blurRadius: 7,
      offset: const Offset(0, 3),
    ),
  ];
}
