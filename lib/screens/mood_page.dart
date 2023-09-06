import 'package:flutter/material.dart';
import '../service/constants/colors.dart';
import '../service/constants/custom_box.dart';
import '../service/constants/fonts.dart';
import '../service/constants/icons.dart';
import '../service/constants/images.dart';
import '../service/constants/strings.dart';

class MoodPage extends StatefulWidget {
  const MoodPage({Key? key}) : super(key: key);

  @override
  State<MoodPage> createState() => _MoodPageState();
}

class _MoodPageState extends State<MoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.06,
              left: 25,right: 36,bottom: 44,
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
          Text(CustomStrings.feel,
          style: CustomStyle.textStyle(size: 35,fontWeight: FontWeight.w500),),
           const SizedBox(height: 22,),
           const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// one row
                Row(
                  children: [
                    CustomBox(
                      isBorder: true,
                      text: CustomStrings.veryGoodSNC,
                      x: 0.11,
                      y: 0.35,
                    ),
                    SizedBox(width: 20,),
                    CustomBox(
                      text: CustomStrings.okish,
                      x: 0.11,
                      y: 0.35,
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                /// two row
                 Row(
                  children: [
                    CustomBox(
                      text: CustomStrings.veryBad,
                      x: 0.11,
                      y: 0.35,
                    ),
                    SizedBox(width: 20,),
                    CustomBox(
                      text: CustomStrings.angry,
                      x: 0.11,
                      y: 0.35,
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                /// three row
                CustomBox(
                  text: CustomStrings.reason,
                  x: 0.13,
                  y: 0.70,
                ),
                SizedBox(height: 15,),
                /// four row
                CustomBox(
                  text: CustomStrings.happy,
                  x: 0.13,
                  y: 0.70,
                ),
                SizedBox(height: 20,),
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

