
import 'package:flutter/material.dart';
import 'package:weather/service/constants/colors.dart';
import '../service/constants/fonts.dart';
import '../service/constants/icons.dart';
import '../service/constants/images.dart';
import '../service/constants/strings.dart';

class MapsPage extends StatefulWidget {
  const MapsPage({Key? key}) : super(key: key);

  @override
  State<MapsPage> createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
           Padding(
             padding: const EdgeInsets.only(left: 20,right: 20),
             child: TextField(
               textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: CustomColors.colors12_24_35_1,width: 5)
                ),
                filled: true,
                hintText: CustomStrings.searchText,
                hintStyle: CustomStyle.textStyle(size: 20),
                fillColor: CustomColors.white,
                 suffixIcon: CollectionIcon.suffixIcon,
               // suffixIcon: Icon
              ),
          ),
           ),
          Container(
            padding: const EdgeInsets.only(right: 170),
            height: MediaQuery.of(context).size.height * 0.59,
            width: double.infinity,
           margin: const EdgeInsets.only(left: 20,right: 20,top: 20),
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: const DecorationImage(
                fit: BoxFit.fill,
                  image: CustomImage.map,
              ),
            ),
            child:  CollectionIcon.location,
          ),
        ],
      ),
    );
  }
}
