import 'package:checkout_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, required this.text, this.isLoading = false,});

  final Function()? onPressed;
  final String text;
  final bool isLoading;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: const Color(0xff34A853),
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: isLoading
            ? const CircularProgressIndicator()
            : Text(
          text,
          textAlign: TextAlign.center,
          style: Styles.style22,
        ),
      ),
    );
  }
}
