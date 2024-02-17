import 'package:flutter/material.dart';
import '../utility/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  
  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 17,
            color: Colors.white, // Set text color to white
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.buttonColor, // Set button color to buttonColor
          minimumSize: const Size(
            double.infinity,
            50,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            
          ),
        ),
      ),
    );
  }
}
