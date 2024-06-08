import 'package:adobix_ui1/src/helpers/helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({
    super.key,
    required this.color,
    required this.title,
    required this.description,
    required this.skip,
    required this.image,
    required this.onTab,
    required this.index,
  });

  final String color;
  final String title;
  final String description;
  final bool skip;
  final String image;
  final VoidCallback onTab;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 1.16,
          decoration: BoxDecoration(
            color: const Color(0xfff7deff),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.fill,
              alignment: Alignment.center,
              opacity: 0.9
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            height: MediaQuery.of(context).size.height / 2.16,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: index == 0
                    ? const Radius.circular(100)
                    : const Radius.circular(0),
                topRight: index == 2
                    ? const Radius.circular(100)
                    : const Radius.circular(0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: Column(
                children: [
                  62.hBox,
                  Text(
                    title,
                    style: Get.textTheme.bodySmall!.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  16.hBox,
                  Text(
                    description,
                    style: AppSty.bodySmall!.copyWith(
                      fontSize: 18,
                      height: 1.5,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          right: 0,
          left: 0,
          child: Padding(
            padding: AppEdge.all(a: 16),
            child: skip
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                        },
                        child: Text(
                          'Skip Now',
                          style: AppSty.bodySmall!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: onTab,
                        child: Container(
                          padding: AppEdge.all(a: 16),
                          decoration: BoxDecoration(
                            color: hexToColor(color),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Icon(
                            Icons.arrow_circle_right,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  )
                : SizedBox(
                    height: 46,
                    child: MaterialButton(
                      color: hexToColor(color),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Get Started',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
          ),
        )
      ],
    );
  }
}

Color hexToColor(String hex) {
  assert(
    RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
  );
  return Color(int.parse(hex.substring(1), radix: 16) +
      (hex.length == 7 ? 0xFF000000 : 0x00000000));
}
