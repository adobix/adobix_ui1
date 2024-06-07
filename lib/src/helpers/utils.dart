part of 'helper.dart';

class Utils {
  static GlobalKey<FormState> key = GlobalKey<FormState>();

  static DateTime now = DateTime.now();
  static String todayDate = DateFormat("dd-MM-yyyy").format(now);


  static toastMsg({required String msg, Color? color}) =>
      Fluttertoast.showToast(msg: msg, backgroundColor: color);

  static centerToast(String msg) => Fluttertoast.showToast(
        msg: msg,
        gravity: ToastGravity.CENTER,
      );


  static successSnack(BuildContext context, title) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(title),
        backgroundColor: Colors.green,
        duration: const Duration(seconds: 8),
      ),
    );
  }
}
