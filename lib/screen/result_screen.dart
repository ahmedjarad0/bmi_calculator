import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/model/dmi_brain.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final BmiBrain bmiBrain ;
  const ResultScreen({required this.bmiBrain ,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              child: Center(
                child: Text(
                  'Your Result',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
                child: Container(
                  width: double.infinity,
              decoration: const BoxDecoration(
                color: kActiveColor,
                borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(15),
                    topEnd: Radius.circular(15)),
              ),
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Your BMI:',
                    style: TextStyle(fontSize: 22,color: kBackground, fontWeight: FontWeight.bold,),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    bmiBrain.calculateBMI().toStringAsFixed(1),
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  SizedBox(height: 10,),

                  Text(
                    bmiBrain.checkBMI().toString(),
                    style: TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold,),
                  ),
                ],
              ),
            )),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor:  Colors.green,
                  minimumSize: const Size(double.infinity, 60)),
              child: const Text(
                'ReCALCULATE',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
