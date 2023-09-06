import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather/service/constants/images.dart';
import 'colors.dart';

class CollectionIcon{
    /// bottob bar icon

  static ElevatedButton sellectedIcons({ required int selectIndex}) {
    List <ElevatedButton> icons = [
      ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        fixedSize: const Size(80, 60),
        backgroundColor: CustomColors.colors12_24_35_1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: () {},
      child: const InkWell(
        child: Icon(CupertinoIcons.sun_max, size: 27,
            color: CustomColors.white),),),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          fixedSize: const Size(80, 60),
          backgroundColor: CustomColors.colors12_24_35_1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {},
        child: const InkWell(child: Image(
          height: 25,
          color: CustomColors.white ,
          image: CustomIconImage.cloud,),),
      ),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          fixedSize: const Size(80, 60),
          backgroundColor: CustomColors.colors12_24_35_1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {},
        child: const InkWell(
            child: Icon(Icons.location_on_outlined,size: 35,color: CustomColors.white )),
      ),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          fixedSize: const Size(80, 60),
          backgroundColor: CustomColors.colors12_24_35_1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {},
        child: const  InkWell(child: Image(
          height: 35,
          color: CustomColors.white,
          image:CustomIconImage.lighting,),),
      ),
    ];
   return  icons[selectIndex];
  }
   static const suny = InkWell(child: Icon(CupertinoIcons.sun_max,size: 27,color:  CustomColors.colors12_24_35_1),);
   static const cloudy =  InkWell(child: Image(height: 25, color:  CustomColors.colors12_24_35_1, image: CustomIconImage.cloud,),);
   static const locationBottom = InkWell(child: Icon(Icons.location_on_outlined,size: 35,color: CustomColors.colors12_24_35_1));
   static const lighting = InkWell(child: Image(height: 35,color: CustomColors.colors12_24_35_1,image:CustomIconImage.lighting,),);

     /// user icon
   static const userIcon = Icon(Icons.keyboard_arrow_down_sharp,size: 35,color: CustomColors.colors12_24_35_1,);
    /// search icon
   static const suffixIcon = Icon(CupertinoIcons.search,size: 30,color: CustomColors.colors12_24_35_1,);
   /// location icons map
   static const  location = Icon(Icons.location_on,size: 30,color: CustomColors.locationColor);

   /// 6 page
 static const appBarIcon =  Icon(Icons.keyboard_arrow_left,size: 45,color: Colors.black,);
 static const offCheckBox = Icon(Icons.check_circle_outline,color: CustomColors.offCheckColor,size: 35,);
 static const onCheckBox = Icon(Icons.check_circle,color: CustomColors.onCheckColor,size: 35,);

}


