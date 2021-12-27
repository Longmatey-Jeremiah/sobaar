import 'package:flutter/cupertino.dart';
import 'package:sobaar/colors/colors.dart';
import 'package:sobaar/widgets/BaseLargeText.dart';

class BaseButton extends StatelessWidget {
  final bool? isResponsive;
  final double? width;
  const BaseButton({Key? key, this.isResponsive = false, this.width = 80})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: BaseColors.primary,
      ),
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
