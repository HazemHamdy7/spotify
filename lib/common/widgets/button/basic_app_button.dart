import 'package:flutter/material.dart';

class BasicAppButton extends StatelessWidget {
  const BasicAppButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.height,
  });
  final double? height;
  final void Function()? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(height ?? 80),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
