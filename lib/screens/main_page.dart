import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather/screens/home_screen.dart';
import 'package:weather/screens/mood_page.dart';
import 'package:weather/screens/settings.dart';
import 'package:weather/service/constants/icons.dart';
import '../service/constants/colors.dart';
import '../service/constants/images.dart';
import 'maps.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController controller = PageController();
  int currentIndex = 0;

  void pressButton(int index) {
    currentIndex = index;
    controller.jumpToPage(currentIndex);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        onPageChanged: (index) => pressButton(index),
        children: const [
          HomePage(),
          MoodPage(),
          MapsPage(),
          Settings(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: currentIndex,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
        items: [
          /// #sun
          BottomNavigationBarItem(
              label: "",
              icon: currentIndex == 0
                  ? CollectionIcon.sellectedIcons(selectIndex: 0)
                  : CollectionIcon.suny),

          /// #cludy
          BottomNavigationBarItem(
            label: "",
            icon: currentIndex == 1
                ? CollectionIcon.sellectedIcons(selectIndex: 1)
                : CollectionIcon.cloudy,
          ),

          /// #location
          BottomNavigationBarItem(
              label: "",
              icon: currentIndex == 2
                  ? CollectionIcon.sellectedIcons(selectIndex: 2)
                  : CollectionIcon.locationBottom),

          /// #Lighting
          BottomNavigationBarItem(
            label: "",
            icon: currentIndex == 3
                ? CollectionIcon.sellectedIcons(selectIndex: 3)
                : CollectionIcon.lighting,
          ),
        ],
      ),
    );
  }
}

/*

Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for(int i = 0;i < 4;i++)
              CustomNavigationIcon(
                index: i,
                currentIndex: currentIndex,
                icons: CollectionIcon.icons[i],
                onPressed: pressButton,
              ),
          ],
        ),
 */
