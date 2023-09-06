import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather/service/constants/colors.dart';
import 'package:weather/service/constants/icons.dart';
import 'package:weather/service/constants/images.dart';
import 'package:weather/service/constants/strings.dart';
import '../service/constants/fonts.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Column(
        children: [
          Padding(
             padding:  EdgeInsets.only(
                 top: MediaQuery.of(context).size.height * 0.06,
                 left: 25,right: 36,
             ),
             child: Row(
               children: [
                 const Image(
                   height: 70,
                   image: CustomIconImage.user,
                 ),
                 const SizedBox(width: 10,),
                 Text(
                   CustomStrings.userName,
                   style: CustomStyle.textStyle(
                       size: 22,
                   ),
                 ),
                 const Padding(
                   padding: EdgeInsets.only(top: 30),
                   child: CollectionIcon.userIcon,
                 ),
                 const SizedBox(width: 60,),
                 const Image(
                   height: 35,
                     image: CustomIconImage.menu,
                 ),
               ],
             ),
           ),
          Padding(
               padding: EdgeInsets.only(top: 48,left: 38,right: 54,bottom: 50),
             child: Row(
               children: [
                 Text(
                   CustomStrings.bikeWalk,
                   style: CustomStyle.textStyle(
                     fontWeight: FontWeight.w500,
                     size: 30,
                   ),
                 ),
                 const Padding(
                   padding: EdgeInsets.only(top: 25,left: 20),
                   child: Image(
                     height: 35,
                     image: CustomImage.bike,
                   ),
                 ),
               ],
             ) ,
           ),
          Padding(
            padding: const EdgeInsets.only(left: 30,bottom: 20),
            child: Stack(
              children: [
                Container(
                alignment: const Alignment(-0.1,- 0.2),
                height: 330,
                width: 330,
                decoration: BoxDecoration(
                  color: CustomColors.colors12_24_35_1,
                  borderRadius: BorderRadius.circular(360),
                ),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: CustomStyle.textStyle(size: 17,color:CustomColors.white),
                    children:  [
                      const TextSpan(text: CustomStrings.todayLike,),
                      TextSpan(text: CustomStrings.temp,
                        style: CustomStyle.textStyle(
                            size: 65,
                            color:CustomColors.white,),)
                    ],
                  ),
                ),
              ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image(height: 100,image: CustomIconImage.cloudSun),
                    SizedBox(width: 130,),
                    Image(height: 80,image: CustomIconImage.rainCloudy),
                  ],
                ),
                Transform.translate(
                  offset: const Offset(-20,180),
                child: const Image(height: 100,image: CustomIconImage.windy),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 155,left: 155),
                  child: Image(height: 120, image: CustomIconImage.sunny),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 195,left: 260),
                  child: Image(height: 100,image: CustomIconImage.moon),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 280,left: 120),
                  child: Image(height: 80,image: CustomIconImage.stromRain),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RichText(
              text: TextSpan(
                style: CustomStyle.textStyle(
                    size: 18,
                    color: CustomColors.color54_66_77_1,
                 ),
                children: [
                  const TextSpan(text: CustomStrings.todayMood,),
                  TextSpan(text: CustomStrings.veryGoodUP,
                    style: CustomStyle.textStyle(
                      fontWeight: FontWeight.w500,
                      size: 16,
                      color: CustomColors.colors12_24_35_1,
                    ),
                  ),
                ]
              ),
              ),
              RichText(
                text: TextSpan(
                    style: CustomStyle.textStyle(
                      size: 18,
                      color: CustomColors.color54_66_77_1,
                    ),
                    children: [
                      const TextSpan(text: CustomStrings.tomorrowMood,),
                      TextSpan(text: CustomStrings.excellent,
                        style: CustomStyle.textStyle(
                          fontWeight: FontWeight.w500,
                          size: 16,
                          color: CustomColors.colors12_24_35_1,
                        ),
                      ),
                    ]
                ),
              ),
            ],
          ),
         ],
      ),
    );
  }
}


