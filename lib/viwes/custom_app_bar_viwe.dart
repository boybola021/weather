import 'package:flutter/material.dart';
import 'package:weather/service/constants/colors.dart';


/// ishlagn yuq hozircha
class CustomNavigationIcon extends StatelessWidget {
  final InkWell icons;
  final int index;
  final int currentIndex;
  final void Function(int) onPressed;

  const CustomNavigationIcon({
    super.key,
    required this.currentIndex,
    required this.index,
    required this.icons,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSelected = currentIndex == index;
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: 60,
      width: 70,
      child: NavigaionButton(
        onTap: (int) => onPressed(index),
        index: index,
        icons: icons,
        isSelected: isSelected,
      ),
    );
  }
}

class NavigaionButton extends StatelessWidget {
  final bool isSelected;
  final void Function(int) onTap;
  final InkWell icons;
  final int index;

  const NavigaionButton(
      {super.key,
      required this.index,
      required this.icons,
      required this.onTap,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor:
            isSelected ? CustomColors.colors12_24_35_1 : CustomColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: () {
        onTap(index);
      },
      child: icons,
    );
  }
}
