import 'package:flutter/material.dart';
import 'package:weather/screens/maps.dart';
import 'package:weather/screens/net_work_page.dart';
import 'package:weather/service/constants/colors.dart';
import 'package:weather/service/constants/fonts.dart';
import 'package:weather/service/constants/icons.dart';
import 'package:weather/service/constants/images.dart';
import 'package:weather/service/constants/strings.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isCheck = false;
  bool onCheck1 = true;
  bool onCheck2 = false;
  int index = 0;
  void selectedBox(){
    onCheck1 != onCheck1;
    onCheck2 != onCheck2;
    setState(() {});}

  List <Row> list = [
    Row(
      children: [
        const Image(height: 45, image: CustomIconImage.account),
        const SizedBox(width: 25,),
        Text(CustomStrings.account,style: CustomStyle.textStyle(size: 23,color: CustomColors.settingsColor),),
      ],
    ),
    Row(
      children: [
        const Image(height: 30, image: CustomIconImage.location),
        const SizedBox(width: 38,),
        Text(CustomStrings.location,style: CustomStyle.textStyle(size: 23,color: CustomColors.settingsColor),),
      ],
    ),
    Row(
      children: [
        const Image(height: 50, image: CustomIconImage.notfiacion),
        const SizedBox(width: 26,),
        Text(CustomStrings.notfications,style: CustomStyle.textStyle(size: 23,color: CustomColors.settingsColor),),
        const SizedBox(width: 100,),
        const Image(height: 30, image: CustomIconImage.offNotfiacion),
      ],
    ),
    Row(
      children: [
        const Image(height: 43, image: CustomIconImage.terms),
        const SizedBox(width: 23,),
        Text(CustomStrings.termsservices,style: CustomStyle.textStyle(size: 23,color: CustomColors.settingsColor),),
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Image(height: 30, image: CustomIconImage.about),
        const SizedBox(width: 28,),
        Text(CustomStrings.about,style: CustomStyle.textStyle(size: 23,color: CustomColors.settingsColor),),
      ],
    ),
    Row(
      children: [
        const Image(height: 45, image: CustomIconImage.buggy),
        const SizedBox(width: 23,),
        Text(CustomStrings.report,style: CustomStyle.textStyle(size: 23,color: CustomColors.settingsColor),),
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: CustomColors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => const MapsPage()));
            setState(() {});
            },
          icon: CollectionIcon.appBarIcon,
        ),
        actions:  [
          ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(elevation: 0,backgroundColor: Colors.white),
            child: const Image(height: 30,image: CustomIconImage.menu,),
          ),
        ],
      ),
      body:   Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Padding(
             padding: const EdgeInsets.only(left: 5),
             child: Text(CustomStrings.generalSetting,style: CustomStyle.textStyle(size: 25,fontWeight: FontWeight.w500,color: Colors.black),),
           ),
            /// account setting
            ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.only(right: 20),
                backgroundColor: Colors.white,
                elevation: 0,
              ),
              child:   Row(
                children: [
                 const Image(height: 45, image: CustomIconImage.account),
                  const SizedBox(width: 25,),
                  Text(CustomStrings.account,style: CustomStyle.textStyle(size: 23,color: CustomColors.settingsColor),),
                ],
              ),
            ),
            const SizedBox(height: 5,),
            /// location
            ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                elevation: 0,
              ),
              child:   Row(
                children: [
                  const Image(height: 30, image: CustomIconImage.location),
                  const SizedBox(width: 38,),
                  Text(CustomStrings.location,style: CustomStyle.textStyle(size: 23,color: CustomColors.settingsColor),),
                ],
              ),
            ),
            const SizedBox(height: 5,),
            /// notfication setting
            ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.only(right: 20),
                backgroundColor: Colors.white,
                elevation: 0,
              ),
              child:   Row(
                children: [
                  const Image(height: 50, image: CustomIconImage.notfiacion),
                  const SizedBox(width: 26,),
                  Text(CustomStrings.notfications,style: CustomStyle.textStyle(size: 23,color: CustomColors.settingsColor),),
                   const SizedBox(width: 100,),
                  const Image(height: 30, image: CustomIconImage.offNotfiacion),
                ],
              ),
            ),
            const SizedBox(height: 30,),
            Text(CustomStrings.temprature,style: CustomStyle.textStyle(size: 25,fontWeight: FontWeight.w500,color: Colors.black),),
            const SizedBox(height: 30,),
            /// celce
             Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(CustomStrings.celcius,style: CustomStyle.textStyle(size: 25,fontWeight: FontWeight.w500,color: Colors.black),),
                ),
                 const SizedBox(width: 200,),
                 IconButton(
                     onPressed: () => selectedBox,
                     icon: onCheck1?  CollectionIcon.offCheckBox : CollectionIcon.onCheckBox,
                 ),
                 ],
                 ),
            const SizedBox(height: 20,),
             /// fahrenhate
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(CustomStrings.fahrenheit,style: CustomStyle.textStyle(size: 25,fontWeight: FontWeight.w500,color: Colors.black),),
                ),
                const SizedBox(width: 170,),
                IconButton(
                  onPressed: () => selectedBox,
                  icon: onCheck2?  CollectionIcon.offCheckBox : CollectionIcon.onCheckBox,
                ),
              ],
            ),
                 const SizedBox(height: 45,),
                 /// terms and servise
            ElevatedButton(
                 onPressed: (){},
                 style: ElevatedButton.styleFrom(
                 padding: const EdgeInsets.only(right: 20),
                 backgroundColor: Colors.white,
                 elevation: 0,
                 ),
                 child:   Row(
                 children: [
                 const Image(height: 43, image: CustomIconImage.terms,),
                  const SizedBox(width: 23,),
                  Text(CustomStrings.termsservices,style: CustomStyle.textStyle(size: 23,color: CustomColors.settingsColor),),
                ],
              ),
            ),
            const SizedBox(height: 5,),
            /// about
            ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.only(left: 10),
                backgroundColor: Colors.white,
                elevation: 0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Image(height: 30, image: CustomIconImage.about),
                  const SizedBox(width: 28,),
                  Text(CustomStrings.about,style: CustomStyle.textStyle(size: 23,color: CustomColors.settingsColor),),
                ],
              ),
            ),
            const SizedBox(height: 5,),
            /// buggy
            ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const NetWork()));
                setState(() {});
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.only(right: 20),
                backgroundColor: Colors.white,
                elevation: 0,
              ),
              child:   Row(
                children: [
                  const Image(height: 45, image: CustomIconImage.buggy),
                  const SizedBox(width: 23,),
                  Text(CustomStrings.report,style: CustomStyle.textStyle(size: 23,color: CustomColors.settingsColor),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

