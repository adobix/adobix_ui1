part of 'helper.dart';

extension Decoration on Widget {
  Widget alignWdg([AlignmentGeometry alignment = Alignment.center]) {
    return Align(
      alignment: alignment,
      child: this,
    );
  }

  Widget expendItem(BuildContext context, double bdWidth, Color color) {
    return Container(
      width: context.w - 50,
      margin: AppSty.eSym(v: 4),
      padding: AppSty.eSym(h: 5, v: 5),
      decoration: BoxDecoration(
        color: Colors.green.withOpacity(0.02),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: bdWidth, color: color.withOpacity(0.7)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: this,
      ),
    );
  }
}

extension StringDate on DateTime {
  String dateToString() {
    return DateFormat("yyyy-MM-dd").format(this);
  }
}

extension INDNum on num {
  Widget get wBox => SizedBox(
        width: toDouble(),
      );

  Widget get hBox => SizedBox(
        height: toDouble(),
      );
}

extension INDBox on Widget {
  Widget pSym({double h = 0.0, double v = 0.0}) => Padding(
        padding: EdgeInsets.symmetric(horizontal: h, vertical: v),
        child: this,
      );

  Widget pAll({double a = 0.0}) => Padding(
        padding: EdgeInsets.all(a),
        child: this,
      );

  Widget pO({
    double t = 0.0,
    double l = 0.0,
    double r = 0.0,
    double b = 0.0,
  }) =>
      Padding(
        padding: EdgeInsets.only(top: t, bottom: b, left: l, right: r),
        child: this,
      );
}

extension Context on BuildContext {
  Size get mediaQuerySize => MediaQuery.of(this).size;

  double get h => mediaQuerySize.height;

  double get w => mediaQuerySize.width;
}
