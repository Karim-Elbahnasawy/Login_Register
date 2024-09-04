import 'package:flutter/material.dart';
import '../core/utils/styles.dart';

class CustomElvatedButton extends StatelessWidget {
  CustomElvatedButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.color,
    required this.onPressed,
  });

  final String text;
  final Color backgroundColor;
  void Function()? onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        backgroundColor: backgroundColor,
        side: const BorderSide(
          color: Color(0xffFFDE69),
          width: 2.5,
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
