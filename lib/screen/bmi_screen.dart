import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/model/dmi_brain.dart';
import 'package:bmi_calculator/screen/result_screen.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  Gender? selectedGender;
  int height = 185;
  int weight = 74;
  int age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI  CALCULATOR'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        color: selectedGender == Gender.male
                            ? kActiveColor
                            : kInActiveColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.male,
                          size: 60,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'MALE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        color: selectedGender == Gender.female
                            ? kActiveColor
                            : kInActiveColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.female,
                          size: 60,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'FEMALE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
                color: kInActiveColor, borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'HEIGHT',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    const Text(
                      'cm',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
                SliderTheme(
                  data: const SliderThemeData(
                      trackHeight: 1,
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xffFF0067),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15)),
                  child: Slider(
                    value: height.toDouble(),
                    min: 120,
                    max: 185,
                    onChanged: (value) {
                      setState(() {
                        height = value.round();
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  width: 150,
                  decoration: BoxDecoration(
                      color: kInActiveColor,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'WEIGHT',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        weight.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                weight++;
                              });
                            },
                            child: const CircleAvatar(
                              backgroundColor: Color(0xff222747),
                              child: Icon(Icons.add),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                weight--;
                              });
                            },
                            child: const CircleAvatar(
                              backgroundColor: Color(0xff222747),
                              child: Icon(Icons.remove),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  width: 150,
                  decoration: BoxDecoration(
                      color: kInActiveColor,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'AGE',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        age.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                age++;
                              });
                            },
                            child: const CircleAvatar(
                              backgroundColor: Color(0xff222747),
                              child: Icon(Icons.add),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                age--;
                              });
                            },
                            child: const CircleAvatar(
                              backgroundColor: Color(0xff222747),
                              child: Icon(Icons.remove),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              BmiBrain bmiBrain = BmiBrain(height, weight);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultScreen(bmiBrain: bmiBrain),
                  ));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffFF0067),
                minimumSize: const Size(double.infinity, 60)),
            child: const Text(
              'CALCULATE YOUR BMI',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}

enum Gender { male, female }
