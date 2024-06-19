import 'package:flutter/material.dart';
import 'package:portfolio/controller/constants/colorconstants.dart';
import 'package:portfolio/controller/constants/textconstants.dart';
import 'package:portfolio/skills/widget/skillclass.dart';

class Skillcard2 extends StatelessWidget {
  const Skillcard2({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: screensize.height / 4.3,
            constraints: BoxConstraints(minHeight: 350),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Colorconstants.scaffoldcolor,
                  Colorconstants.scaffoldcolor,
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: skills2.map((skill) {
                  double skillLevel =
                      skill['level'] as double; // Explicitly cast to double
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          skill['name'] as String, // Explicitly cast to String
                          style: NeededTextstyles.littletextdark,
                        ),
                        SizedBox(height: 5.0),
                        Row(
                          children: [
                            Expanded(
                              child: LinearProgressIndicator(
                                value: skillLevel,
                                minHeight: 5.0,
                                backgroundColor: Colors.grey[300],
                                color: Colorconstants.nothingred,
                              ),
                            ),
                            SizedBox(width: 10.0),
                            Text(
                              '${(skillLevel * 100).toInt()}%',
                              style: NeededTextstyles.littletextdark,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
