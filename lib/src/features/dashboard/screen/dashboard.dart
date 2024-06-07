import 'package:adobix_ui1/src/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/heroicons_solid.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:iconify_flutter/icons/ri.dart';
import '../../../model/coffee_item.dart';
import '../widget/search_bar.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final List<String> coffeeTypes = [
    'Cappuccino',
    'Espresso',
    'Latte',
    'Flat White'
  ];

  String selectedItem = 'Cappuccino';
  int counter = -1;

  final List<CoffeeItem> coffeeList = [
    CoffeeItem(
        rating: 4.5,
        itemImg: 'assets/images/coffeemain.jpg',
        price: 4.21,
        subtitle: 'With Oat Milk',
        title: 'Cappuccino'),
    CoffeeItem(
        rating: 4.2,
        itemImg: 'assets/images/secondary.jpg',
        price: 3.14,
        subtitle: 'With Chocolate',
        title: 'Cappuccino')
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorPalette().scaffoldBg,
        body: ListView(
          children: [
            25.h,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(7.0),
                    height: 42.0,
                    width: 42.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF1F242C),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: const Iconify(
                      HeroiconsSolid.view_grid,
                      size: 12.0,
                      color: Color(0xFF4D4F52),
                    ),
                  ),
                ],
              ),
            ),
            15.h,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Text(
                'Find the best coffee for you',
                style: GoogleFonts.aBeeZee(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            20.h,
            const SearchBarView(),
            20.h,
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
              child: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return const LinearGradient(
                      begin: Alignment(0.7, -1.0),
                      end: Alignment(1.0, -1.0),
                      colors: [
                        Color(0xFF333C4B),
                        Colors.transparent,
                      ]).createShader(bounds);
                },
                blendMode: BlendMode.dstATop,
                child: Container(
                  // color: const Color(0xFF0D0F14),
                  width: MediaQuery.of(context).size.width - 20.0,
                  height: 40.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ...coffeeTypes.map((e) {
                        counter++;
                        if (counter <= 3) {
                          return _buildTypes(e, counter);
                        } else {
                          counter = 0;
                          return _buildTypes(e, counter);
                        }
                      })
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
                height: (MediaQuery.of(context).size.height) - 50.0,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  padding: const EdgeInsets.only(top: 5.0),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Container(
                        color: const Color(0xFF333C4B),
                        width: MediaQuery.of(context).size.width - 10.0,
                        height: 225.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            ...coffeeList.map((e) {
                              return _buildCoffeeItem(e);
                            })
                          ],
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Widget _buildCoffeeItem(CoffeeItem cItem) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              ColorPalette().gradientTopLeft,
              Colors.black,
            ],
          ),
        ),
        height: 200.0,
        width: 150.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 140.0,
              width: 150.0,
              child: Stack(
                children: [
                  Positioned(
                    top: 10.0,
                    left: 10.0,
                    child: Hero(
                      tag: cItem.itemImg.toString(),
                      child: Container(
                        height: 120.0,
                        width: 130.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(cItem.itemImg!),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(15.0)),
                      ),
                    ),
                  ),
                  Positioned(
                      right: 10.0,
                      top: 10.0,
                      child: Container(
                        height: 25.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            color: const Color(0xFF342520).withOpacity(0.7),
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(15.0),
                                bottomLeft: Radius.circular(15.0))),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.star,
                                color: ColorPalette().coffeeSelected,
                                size: 15.0,
                              ),
                              Text(
                                cItem.rating.toString(),
                                style: GoogleFonts.aBeeZee(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 13.0),
                              )
                            ],
                          ),
                        ),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                cItem.title!,
                style: GoogleFonts.aBeeZee(color: Colors.white, fontSize: 17.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 5.0),
              child: Text(
                cItem.subtitle!,
                style: GoogleFonts.aBeeZee(
                    fontWeight: FontWeight.w200,
                    color: Colors.white,
                    fontSize: 12.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 40.0,
                    width: 60.0,
                    child: Row(
                      children: [
                        Text(
                          '\$',
                          style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.bold,
                              color: ColorPalette().coffeeSelected,
                              fontSize: 20.0),
                        ),
                        Text(
                          cItem.price.toString(),
                          style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20.0),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      //To Do
                    },
                    child: Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                          color: ColorPalette().coffeeSelected,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const Center(
                        child: Icon(
                          Icons.add,
                          size: 11.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTypes(coffee, counter) {
    return Padding(
      padding: counter != 0
          ? const EdgeInsets.only(left: 25.0)
          : const EdgeInsets.only(left: 7.0),
      child: Container(
        height: 50.0,
        color: const Color(0xFF0D0F14),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedItem = coffee;
                });
              },
              child: Text(
                coffee,
                style: GoogleFonts.aBeeZee(
                    fontWeight: FontWeight.bold,
                    color: coffee == selectedItem
                        ? ColorPalette().coffeeSelected
                        : ColorPalette().coffeeUnselected,
                    fontSize: 17.0),
              ),
            ),
            const SizedBox(height: 4.0),
            Container(
              height: 8.0,
              width: 8.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: coffee == selectedItem
                      ? ColorPalette().coffeeSelected
                      : Colors.transparent),
            )
          ],
        ),
      ),
    );
  }
}