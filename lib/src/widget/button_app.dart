import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {
  Color? color;
  Color? textColor;
  String? text;
  IconData? iconData;
  Function? onPressed;

  ButtonApp({
    super.key,
    this.color = Colors.black,
    this.textColor = Colors.white,
    @required this.text,
    this.iconData = Icons.arrow_forward_ios,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed!();
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: textColor, backgroundColor: color, // text color
        textStyle: TextStyle(color: textColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
                alignment: Alignment.center, height: 50, child: Text(text!)),
          ),
        ],
      ),
    );
  }
}
