import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final String icon;
  final void Function()? onPress;
  const RoundIconButton({Key? key, required this.icon, required this.onPress})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      child: Image(
          image: AssetImage(icon),
          fit: BoxFit.scaleDown,
          alignment: FractionalOffset.center),
      shape: const CircleBorder(),
      elevation: 10.0,
      fillColor: Colors.white,
      constraints: const BoxConstraints.tightFor(
        width: 48.0,
        height: 48.0,
      ),
    );
  }
}
