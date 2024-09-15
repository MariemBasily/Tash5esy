import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart'; 

class CustomButton extends StatelessWidget {
  final String label;
  final Function onPressed;

  const CustomButton({Key? key, required this.label, required this.onPressed}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed(),
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.secondary,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        textStyle: const TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w200,),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Text(label),
    );
  }
}
// this custom button of :
//Get started/
// NID Verfication 2 (Confirmation) / 
//Pop-Up Message1 / 
//Admin Verify / 
//all medical history/ 

