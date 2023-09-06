import 'package:flutter/material.dart';
import 'package:weather/screens/splash_two_page.dart';
import 'package:weather/service/constants/colors.dart';
import 'package:weather/service/constants/fonts.dart';
import 'package:weather/service/constants/images.dart';
import 'package:weather/service/constants/strings.dart';

class SplashOne extends StatefulWidget {
  const SplashOne({Key? key}) : super(key: key);

  @override
  State<SplashOne> createState() => _SplashOneState();
}

class _SplashOneState extends State<SplashOne> {
  @override
  void initState() {
    super.initState();
    twoPage();
  }

  void twoPage() async {
    await Future.delayed(const Duration(seconds: 3));
   if(mounted) {
     Navigator.push(context,
         MaterialPageRoute(builder: (context) => const SplashTwoPage()));
     setState(() {});
   }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.colors12_24_35_1,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
              child: Image(
            height: 100,
            width: 180,
            fit: BoxFit.fill,
            image: CustomImage.logo,
          )),
          const SizedBox(
            height: 32,
          ),
          Text(
            CustomStrings.weather,
            style: Style.splashOneTextStyle(35),
          ),
        ],
      ),
    );
  }
}
