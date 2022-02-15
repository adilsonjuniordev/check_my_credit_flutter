import 'package:check_my_credito/app/ui/my_colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  MyButton({Key? key, this.textSize, this.textColor, this.bgColor, required this.onPressed, required this.text}) : super(key: key);

  String text;
  Function onPressed;
  Color? bgColor;
  Color? textColor;
  double? textSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.75,
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(text, style: TextStyle(color: textColor ?? MyColors.primary, fontWeight: FontWeight.bold, fontSize: textSize ?? 20)),
          ),
        ),
        style: ElevatedButton.styleFrom(primary: bgColor ?? MyColors.secondary, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      ),
    );
  }
}
