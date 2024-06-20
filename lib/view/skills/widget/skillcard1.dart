import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/controller/constants/colorconstants.dart';
import 'package:portfolio/controller/constants/skillitems.dart'; // Import skill data
import 'package:portfolio/controller/constants/textconstants.dart';
import 'package:portfolio/view/skills/widget/skillclass.dart';

class Skillcard1 extends StatelessWidget {
  const Skillcard1({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    final mobileScreen = screensize.width < 800;

    return Padding(
      padding: mobileScreen
          ? EdgeInsets.only(left: 30, right: 30)
          : EdgeInsets.only(left: 60, right: 60),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "MY SKILLS",
              style: GoogleFonts.chakraPetch(
                decoration: TextDecoration.underline,
                decorationColor: Colorconstants.textcolor,
                color: Colorconstants.textcolor,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 50),
            mobileScreen
                ? Column(
                    children: List.generate(8, (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colorconstants.lightgrey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Row(
                              children: [
                                Image.asset(
                                  skillData[index]["imagePath"].toString(),
                                  height: 35,
                                  width: 35,
                                ),
                                SizedBox(width: 12),
                                Text(
                                  skillData[index]["title"].toString(),
                                  style: GoogleFonts.chakraPetch(
                                    color: Colorconstants.textcolor,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  )
                : Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(4, (index) {
                          return Expanded(
                            child: Container(
                              //width: 30,
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ListTile(
                                leading: Image.asset(
                                  skillData[index]["imagePath"].toString(),
                                  height: 35,
                                  width: 35,
                                ),
                                title: Text(
                                  skillData[index]["title"].toString(),
                                  style: GoogleFonts.chakraPetch(
                                    color: Colorconstants.textcolor,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(4, (index) {
                          return Expanded(
                            child: Container(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colorconstants.lightgrey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ListTile(
                                leading: Image.asset(
                                  skillData[index + 4]["imagePath"].toString(),
                                  height: 35,
                                  width: 35,
                                ),
                                title: Text(
                                  skillData[index + 4]["title"].toString(),
                                  style: GoogleFonts.chakraPetch(
                                    color: Colorconstants.textcolor,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: screensize.height / 1,
              constraints: BoxConstraints(minHeight: 300),
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
                padding: mobileScreen
                    ? const EdgeInsets.symmetric(horizontal: 5)
                    : const EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: skills.map((skill) {
                    double skillLevel = skill['level'] as double;
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            skill['name'] as String,
                            style: GoogleFonts.chakraPetch(
                                color: Colorconstants.textcolor),
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
      ),
    );
  }
}
