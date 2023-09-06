

import 'package:flutter/material.dart';
import 'package:weather/screens/main_page.dart';
import 'package:weather/service/constants/colors.dart';
import 'package:weather/service/constants/fonts.dart';
import 'package:weather/service/constants/images.dart';
import 'package:weather/service/constants/strings.dart';

import 'home_screen.dart';

class SplashTwoPage extends StatefulWidget {
  const SplashTwoPage({Key? key}) : super(key: key);

  @override
  State<SplashTwoPage> createState() => _SplashTwoPageState();
}

class _SplashTwoPageState extends State<SplashTwoPage> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Column(
        children: [
         const Row(
           mainAxisAlignment: MainAxisAlignment.end,
           children: [
             SizedBox(
               height: 180,
               child: Image(
                 image: CustomImage.star,
               ),
             ),
           ],
         ),
         Padding(
           padding: EdgeInsets.only(
             left: 60,right: 60, bottom: 140,
             top: MediaQuery.of(context).size.height * 0.18,),
           child: const Text(
             CustomStrings.twoPageText,
             style: TextStyle(
               fontSize: 45,
               fontFamily: Fonts.poppins,
               fontWeight: FontWeight.w700,
               color: CustomColors.colors12_24_35_1,
             ),
           ),
         ) ,
          ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MainPage()));
              setState(() {});},
             style: ElevatedButton.styleFrom(
               backgroundColor: CustomColors.colors12_24_35_1,
               elevation: 0,
               fixedSize: Size(
                   MediaQuery.of(context).size.height * 0.34,
                 MediaQuery.of(context).size.width * 0.16,
               ),
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
             ),
              child: const Text(
                CustomStrings.iconText,
                style: TextStyle(fontSize: 25,fontFamily: Fonts.poppins,fontWeight: FontWeight.w400,color: CustomColors.white),
              ),
          ),
        ],
      ),
    );
  }
}
