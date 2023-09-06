
import 'package:flutter/material.dart';
import 'package:weather/screens/main_page.dart';
import 'package:weather/service/constants/colors.dart';
import 'package:weather/service/constants/fonts.dart';
import 'package:weather/service/constants/images.dart';
import 'package:weather/service/constants/strings.dart';

class NetWork extends StatefulWidget {
  const NetWork({Key? key}) : super(key: key);

  @override
  State<NetWork> createState() => _NetWorkState();
}

class _NetWorkState extends State<NetWork> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: CustomImage.netWork,),
             Text(CustomStrings.netWorkText,style: CustomStyle.textStyle(fontWeight: FontWeight.w500,size: 20,color: Colors.black),),
             const SizedBox(height: 60,),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 40,right: 40),
              child: ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MainPage()));
                setState(() {});
              },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: CustomColors.colors12_24_35_1,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  fixedSize: const Size(250, 60),
                ),
                  child: Text(CustomStrings.goToHome,style: CustomStyle.textStyle(size: 22,color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
