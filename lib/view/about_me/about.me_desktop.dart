import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/controller/constants/colorconstants.dart';

class Aboutme extends StatelessWidget {
  const Aboutme({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 80, right: 80),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: screensize.height / 0.68,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "ABOUT ME",
                      style: GoogleFonts.chakraPetch(
                        decoration: TextDecoration.underline,
                        decorationColor: Colorconstants.textcolor,
                        color: Colorconstants.textcolor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(colors: [
                          Colorconstants.scaffoldcolor,
                          Colors.blueGrey
                        ])),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        "I'm Amal Das P.D , 2024 INMCA graduate with a strong foundation in computer science, Dart, and Flutter. My journey into the world of Flutter development began with a spark of curiosity, and since then, there's been no looking back. I find joy in exploring the depths of Dart and Flutter, leveraging their power to bring ideas to life in the form of captivating mobile applications. Beyond coding, I'm a fervent tech enthusiast, always on the lookout for the latest innovations and trends shaping our digital landscape. Whether it's diving into new frameworks or experimenting with cutting-edge technologies, I'm driven by an insatiable thirst for knowledge and growth. But my interests extend beyond the realm of technology. I'm also deeply passionate about digital art, finding solace and expression in the vibrant world of pixels and brushes. From intricate designs to whimsical illustrations, digital art serves as both a creative outlet and a source of inspiration in my life. In essence, I'm a blend of a Flutter developer, a tech enthusiast, and a digital artist, weaving together code, creativity, and curiosity to craft experiences that leave a lasting impression. Join me on this journey as we explore the endless possibilities of the digital realm together.",
                        style: GoogleFonts.chakraPetch(
                          color: Colorconstants.textcolor,
                          fontSize: 20,
                          height: 2,
                        ),
                        textAlign: TextAlign.justify,
                        maxLines: 11,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Experience",
                      style: GoogleFonts.chakraPetch(
                        decoration: TextDecoration.underline,
                        decorationColor: Colorconstants.textcolor,
                        color: Colorconstants.textcolor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        //Icon(
                        //  Icons.star,
                        //  color: Colors.white,
                        //),
                        Text(
                          " Intern at Luminar TechnoHub  ",
                          style: GoogleFonts.chakraPetch(
                            decoration: TextDecoration.underline,
                            decorationColor: Colorconstants.textcolor,
                            color: Colorconstants.textcolor,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "(Responsablities:)",
                          style: GoogleFonts.chakraPetch(
                              color: Colorconstants.textcolor, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "        - Assisted in developing and maintaining mobile applications using Flutter",
                      style: GoogleFonts.chakraPetch(
                        // decoration: TextDecoration.underline,
                        decorationColor: Colorconstants.textcolor,
                        color: Colorconstants.textcolor,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "        - Collaborated with senior developers to implement new features and fix bugs",
                      style: GoogleFonts.chakraPetch(
                        // decoration: TextDecoration.underline,
                        decorationColor: Colorconstants.textcolor,
                        color: Colorconstants.textcolor,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "        - Participated in code reviews and contributed to improving code quality.",
                      style: GoogleFonts.chakraPetch(
                        // decoration: TextDecoration.underline,
                        decorationColor: Colorconstants.textcolor,
                        color: Colorconstants.textcolor,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "        - Gained hands-on experience in mobile application development and enhanced problem-solving skills.",
                      style: GoogleFonts.chakraPetch(
                        // decoration: TextDecoration.underline,
                        decorationColor: Colorconstants.textcolor,
                        color: Colorconstants.textcolor,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
