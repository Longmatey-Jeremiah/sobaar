import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sobaar/colors/colors.dart';
import 'package:sobaar/widgets/BaseLargeText.dart';

class BaseButton extends StatelessWidget {
  final bool? isResponsive;
  final double? width;
  final Color color;

  const BaseButton({
    Key? key,
    this.color = Colors.blue,
    this.isResponsive = false,
    this.width = 80,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
          border: Border.all(
            color: BaseColors.light,
          )),
      width: width,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BaseLargeText(
            text: 'Next',
            color: BaseColors.light,
            size: 16,
            // font: 'Montserrat',
          )
        ],
      ),
    );
  }
}
