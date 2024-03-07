// ignore_for_file: prefer_const_constructors

import 'package:bmi_calulator1/App_colors.dart';
import 'package:bmi_calulator1/result_page.dart';
import 'package:flutter/material.dart';

class MyFirstScreen extends StatefulWidget {
  const MyFirstScreen({super.key});

  @override
  State<MyFirstScreen> createState() => _MyFirstScreenState();
}

class _MyFirstScreenState extends State<MyFirstScreen> {
  TextStyle styleSmall = TextStyle(color: AppColors.white, fontSize: 14);
  TextStyle styleBig = TextStyle(
      color: AppColors.white, fontSize: 26, fontWeight: FontWeight.bold);
  int height = 120, weight = 70, age = 20;
  bool isfemale = true ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            leading: Icon(
              Icons.local_pizza_sharp,
              color: Colors.amber,
            ),
            centerTitle: true,
            title: Text("BMI Calculator",
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 16,
                )),
            backgroundColor: AppColors.background,
          )),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            //male&female
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: InkWell(onTap: () {
                      setState(() {
                        isfemale= false ;
                      });
                    },
                      child: Container(
                                        decoration: BoxDecoration(
                      color: (isfemale)? AppColors.containers : AppColors.pink,
                      borderRadius: BorderRadius.circular(20),
                                        ),
                                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male_rounded,
                            color: AppColors.white,
                            size: 65,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('male', style: styleSmall),
                        ]),
                                      ),
                    )),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                    child: InkWell(    onTap: () {
                      setState(() {
                        isfemale = true ;
                      });
                    },
                      child: Container(
                                        decoration: BoxDecoration(
                      color: (isfemale)? AppColors.pink  : AppColors.containers,
                      borderRadius: BorderRadius.circular(20),
                                        ),
                                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female_rounded,
                            color: AppColors.white,
                            size: 65,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('female', style: styleSmall),
                        ]),
                                      ),
                    ))
              ],
            )),
            //height
            Expanded(
                child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: AppColors.containers,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Height',
                      style: styleSmall,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.toString()}',
                          style: styleBig,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          'cm',
                          style: styleSmall,
                        ),
                      ],
                    ),
                    Slider(
                      value: height.toDouble(),
                      onChanged: (value) {
                        setState(() {
                          height=value.toInt();
                        });
                      },
                      min: 120,
                      max: 210,
                      inactiveColor: AppColors.grey,
                      activeColor: AppColors.pink,
                    ),
                  ]),
            )),
            // weight&age
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.containers,
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Weight',
                          style: styleSmall,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '$weight',
                          style: styleBig,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                if(weight>0)
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: Icon(
                                Icons.add,
                                color: AppColors.white,
                              ),
                              style: IconButton.styleFrom(
                                  backgroundColor: AppColors.grey),
                            ),
                            IconButton(
                              onPressed: () {   
                                 if(weight>0)
                                setState(() {
                                  weight--;
                                });},
                              icon: Icon(
                                Icons.remove,
                                color: AppColors.white,
                              ),
                              style: IconButton.styleFrom(
                                  backgroundColor: AppColors.grey),
                            ),
                          ],
                        )
                      ]),
                )),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.containers,
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age',
                          style: styleSmall,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '$age',
                          style: styleBig,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {   
                                 if(age>0)
                                setState(() {
                                  age++;
                                });},
                              icon: Icon(
                                Icons.add,
                                color: AppColors.white,
                              ),
                              style: IconButton.styleFrom(
                                  backgroundColor: AppColors.grey),
                            ),
                            IconButton(
                              onPressed: () {
                                    if(age>0)
                                setState(() {
                                  age--;
                                });
                              },
                              icon: Icon(
                                Icons.remove,
                                color: AppColors.white,
                              ),
                              style: IconButton.styleFrom(
                                  backgroundColor: AppColors.grey),
                            ),
                          ],
                        )
                      ]),
                ))
              ],
            )),
            SizedBox(
              height: 10,
            ),
            //ElevatedButton
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  double result = weight /((height*0.01)/(height*0.01));
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ResultScreen(result: result)));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text('Calculate',
                    style: TextStyle(color: AppColors.white, fontSize: 15)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
