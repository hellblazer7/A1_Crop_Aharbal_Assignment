import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final void Function()? onPressed;
  final String displayText;
  final Color color;
  final BorderRadius borderRadius;
  final double width;
  final Color textColor;
  double verticalPadding = 16;

  RoundedButton(
      {Key? key,
      required this.onPressed,
      required this.displayText,
      required this.color,
      required this.borderRadius,
      required this.width,
      required this.textColor,
      required this.verticalPadding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: borderRadius,
        child: MaterialButton(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          onPressed: onPressed,
          minWidth: width,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: verticalPadding),
            child: Text(
              displayText,
              style: TextStyle(
                fontFamily: 'GentiumPlus',
                color: textColor,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
