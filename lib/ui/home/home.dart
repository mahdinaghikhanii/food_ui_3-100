import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ui/common/constans/images.dart';
import 'package:food_ui/ui/home/home_model.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/widgets/custom_textfiled.dart';
import '../../common/widgets/loading.dart';

class HomeScrean extends StatefulWidget {
  const HomeScrean({super.key});

  @override
  State<HomeScrean> createState() => _HomeScreanState();
}

bool laoding = false;

class _HomeScreanState extends State<HomeScrean> {
  @override
  void initState() {
    super.initState();
    delay();
  }

  delay() async {
    await Future.delayed(const Duration(seconds: 3)).then((value) {
      setState(() {
        laoding = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: laoding == false
            ? const Center(child: LoadingWidgets())
            : SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _title(),
                      _searchAndFilter(),
                      _listToggleButton(),
                      _listAvivableFood(avavibleFoodList, context)
                    ]),
              ),
      ),
    );
  }
}

Widget _title() {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Padding(
        padding: const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 0),
        child: Row(children: [
          Text(
            'Hello, ',
            textAlign: TextAlign.center,
            style: GoogleFonts.getFont('Inter').copyWith(
              color: Colors.black,
              fontSize: 35,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            'Mahdi',
            textAlign: TextAlign.center,
            style: GoogleFonts.getFont('Inter').copyWith(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(Images.mahdi, width: 50, height: 50))
        ])),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Text(
        'What you want eat today?',
        style: GoogleFonts.getFont('Inter').copyWith(
          color: const Color(0xFF848484),
          fontSize: 20,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  ]);
}

Widget _searchAndFilter() {
  return Padding(
    padding: const EdgeInsets.only(right: 15, left: 15, top: 35, bottom: 24),
    child: Row(
      children: [
        Expanded(
            child: Container(
                width: 309,
                height: 62,
                decoration: ShapeDecoration(
                  color: const Color(0xFFE6E6E6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 14, right: 11),
                      child: Icon(CupertinoIcons.search,
                          size: 45, color: Color(0x99A7A7A7)),
                    ),
                    SizedBox(
                        width: 200,
                        height: 30,
                        child: customTextField("Search for Food")),
                  ],
                ))),
        Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Stack(
              children: [
                SvgPicture.asset(Images.shapeFilter),
                Positioned(
                    top: 0,
                    right: 0,
                    bottom: 0,
                    left: 5,
                    child: Image.asset(Images.filterIcon))
              ],
            ))
      ],
    ),
  );
}

Widget _toggleButton(bool selected, String title, String icon) {
  return Container(
      margin: const EdgeInsets.only(left: 15),
      width: 88,
      height: 35,
      decoration: ShapeDecoration(
        color: selected ? const Color(0xFFF37B2D) : const Color(0xFFFDD9D1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(33),
        ),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 2, right: 1),
            width: 31,
            height: 31,
            decoration: const ShapeDecoration(
              color: Colors.white,
              shape: OvalBorder(),
            ),
            child: Container(
              alignment: Alignment.center,
              child:
                  Image.asset(icon, width: 20, height: 20, fit: BoxFit.cover),
            ),
          ),
          Text(title,
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont('Inter').copyWith(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ))
        ],
      ));
}

Widget _listToggleButton() {
  return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        _toggleButton(true, "Pizza", Images.pizza1Icon),
        _toggleButton(false, "Burger", Images.burgerIcon),
        _toggleButton(false, "Sushi", Images.makiIcon),
        _toggleButton(false, "Drinks", Images.sodaIcon)
      ]));
}

Widget _listAvivableFood(List<HomeItemModel> homeItemModel, context) {
  return Container(
    margin: const EdgeInsets.only(top: 30),
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: homeItemModel.length,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            //  , childAspectRatio: 1.3
            crossAxisSpacing: 0,
            mainAxisSpacing: 0,
            mainAxisExtent: 320),
        itemBuilder: (context, index) {
          return Container(
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60),
              ),
            ),
            child: Stack(
              children: [
                Container(
                  height: 220,
                  margin: const EdgeInsets.only(top: 68, left: 15, right: 15),
                  width: MediaQuery.of(context).size.width,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x4C000000),
                        blurRadius: 12.70,
                        offset: Offset(0, 7),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 96, left: 13),
                        child: Text(
                          'Meat Pizza',
                          style: GoogleFonts.getFont('Inter').copyWith(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1, left: 13),
                        child: Text(
                          'Meat Pizza',
                          style: GoogleFonts.getFont('Inter').copyWith(
                            color: const Color(0xFFAEAEAE),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 35, left: 13),
                        child: Row(
                          children: [
                            Text('\$ 8.30',
                                style: GoogleFonts.getFont('Inter').copyWith(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                )),
                            const Spacer(),
                            Container(
                              width: 30,
                              margin: const EdgeInsets.only(right: 8),
                              height: 30,
                              decoration: const ShapeDecoration(
                                color: Color(0xFFF37B2D),
                                shape: OvalBorder(),
                              ),
                              child: const Icon(
                                CupertinoIcons.plus,
                                size: 30,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: 2,
                  child: Center(
                    child: Image.asset(
                      width: 140,
                      height: 140,
                      homeItemModel[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
  );
}
