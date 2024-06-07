part of 'styles.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    scaffoldBackgroundColor: AppColors.white,
    useMaterial3: true,
    fontFamily: 'Poppins',
    appBarTheme: const AppBarTheme(
      elevation: 0.0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarColor: AppColors.primary,
        systemNavigationBarDividerColor: AppColors.white,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: AppColors.white,
      ),
    ),
  );

  static ThemeData dark = ThemeData(
    scaffoldBackgroundColor: AppColors.black,
    useMaterial3: true,
    fontFamily: 'Poppins',
    appBarTheme: const AppBarTheme(
      elevation: 0.0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarColor: AppColors.primary,
        systemNavigationBarDividerColor: AppColors.black,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: AppColors.black,
      ),
    ),
  );
}
