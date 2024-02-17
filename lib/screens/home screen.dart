import 'package:flutter/material.dart';
import '../utility/colors.dart';
import '../widgets/customButton.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/Image.png'),
          Padding(padding:const EdgeInsets.symmetric(vertical: 17.0)),
          const Text(
            'Agri-Commodity',
            style: const TextStyle(
              fontSize: 33,
              fontWeight: FontWeight.bold,
            ),
          ),
         // Padding(padding:const EdgeInsets.symmetric(vertical: 20.0)),
           const Text(
            'Price Predictor',
            style: const TextStyle(
              fontSize: 33,
              fontWeight: FontWeight.bold,
            )
           ),
          
           Padding(padding:const EdgeInsets.symmetric(vertical: 17.0)),
           const Text(
            'Predict prices accurately with ease',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColors.darkGreen
            )
           ),
          Padding(padding:const EdgeInsets.symmetric(vertical: 17.0)),
        CustomButton(text: "Get Started", onPressed: (){Navigator.pushNamed(context, '/login');
          
        })


           




        ],

      ),
    );
  }
}