
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color, textColor;
  final double width;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = Colors.black,
    this.textColor = Colors.white, required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 50, ),
      width:
       width,
      height: 50,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
