part of 'components.dart';

void loadingAlert(BuildContext context) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (_) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        contentPadding: AppStyles.eSym(),
        content: Container(
          height: AppSizes.dp230,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(AppSizes.dp14),
            boxShadow: AppStyles.iBoxShadow,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Align(
                alignment: Alignment.center,
                child: LoadingIndicator(),
              ),
              AppSizes.dp12.h,
              const Text('Loading...')
            ],
          ),
        ),
      );
    },
  );
}
