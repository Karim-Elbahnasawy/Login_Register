import 'package:flutter/material.dart';
import '../core/utils/styles.dart';

class CustomElvatedButton extends StatelessWidget {
  const CustomElvatedButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.color,
    required this.onPressed,
    required this.borderSide,
  });

  final String text;
  final Color backgroundColor;
  final void Function()? onPressed;
  final Color color;
  final Color borderSide;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        backgroundColor: backgroundColor,
        side: BorderSide(
          color: borderSide,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: Styles.textStyle20.copyWith(
          color: color,
        ),
      ),
    );
  }
}
