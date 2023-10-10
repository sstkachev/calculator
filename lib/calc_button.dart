import 'package:flutter/material.dart';

class ButtonCircle extends StatelessWidget {
  final buttonText;
  final buttonTextColor;
  final buttonColor;
  final buttonFunc;

  const ButtonCircle({
    super.key,
    this.buttonText,
    this.buttonTextColor,
    this.buttonColor,
    this.buttonFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: buttonColor,
          fixedSize: const MaterialStatePropertyAll(
            Size(
              80,
              80,
            ),
          ),
          shape: const MaterialStatePropertyAll(
            CircleBorder(),
          ),
        ),
        onPressed: buttonFunc,
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 24,
            color: buttonTextColor,
          ),
        ),
      ),
    );
  }
}
