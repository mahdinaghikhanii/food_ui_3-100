import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ui/common/constans/images.dart';
import 'package:food_ui/common/widgets/custom_eleveted_button.dart';
import 'package:food_ui/ui/home/home.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
            padding: const EdgeInsets.only(left: 50, right: 50, bottom: 30),
            child: SizedBox(
              height: 58,
              child: CustomElevetedButtonmWidgets(
                  ontap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScrean())),
                  text: "GET STARTED",
                  textColor: Colors.white,
                  borderRadius: 39,
                  buttonColor: Theme.of(context).colorScheme.onBackground),
            )),
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: SvgPicture.asset(Images.splashImage,
                    width: MediaQuery.of(context).size.width, height: 300),
              )),
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 5),
                child: Text(
                  'Delicious Food',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont('Poppins').copyWith(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.32,
                  ),
                ),
              ),
              Text(
                'We help you to find best and \ndelicious food',
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont('Poppins').copyWith(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.32,
                ),
              ),
              const SizedBox(height: 40)
            ]));
  }
}
