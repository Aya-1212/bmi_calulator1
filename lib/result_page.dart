// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, must_be_immutable

import 'package:bmi_calulator1/App_colors.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  dynamic message;
  final double result;
  String getClassifications() {
    if (result < 16) {
      message = 'you must visit the doctor';
      return 'Severe Thinness';
    } else if (result >= 16 || result < 17) {
        message = 'you must visit the doctor';
      return 'Moderate Thinnes';
    } else if (result >= 17 || result < 18.5) {
     message = 'few steps to be normal';
      return 'Mild Thinness';
    } else if (result >= 18.5 || result < 25) {
      message = 'your body weight is absolutely normal ! good job';
      return 'normal';
    } else if (result >= 25 || result < 30) {
       message =
          'being overweight increase the risk of a number of serious diseases';
      return 'Overweight';
    
    } else {
      message = 'you must visit the doctor';
      return 'Obese Class';
    }
  }

  ResultScreen({super.key, required this.result});
  TextStyle styleSmall = TextStyle(color: AppColors.white, fontSize: 14);
  TextStyle styleBig = TextStyle(
      color: AppColors.white, fontSize: 26, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: AppBar(
            foregroundColor: AppColors.white,
            backgroundColor: AppColors.background,
          )),
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Padding(
              padding: const EdgeInsets.only(bottom:25,top: 10),
              child: Text(
                'The Result is',
                style: styleBig,
              ),
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20),color:AppColors.containers ),
                    
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          getClassifications(),
                          style: TextStyle(color: AppColors.green, fontSize: 15),
                        ),
                        SizedBox(height: 20,),
                        Text(result.toStringAsFixed(2),style: styleBig,),
                        SizedBox(height: 25,),
                        Text(message,style: styleSmall,),      
                      ],
                    )),
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text('ReCalculate',
                    style: TextStyle(color: AppColors.white, fontSize: 15)),
              ),
            ),
          ],
        ),
      ),
    );
  }
  

  }

