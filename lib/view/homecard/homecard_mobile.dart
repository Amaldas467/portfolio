import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/controller/constants/colorconstants.dart';

class Homecard_mobile extends StatelessWidget {
  const Homecard_mobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    final screenwidth = screensize.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: screensize.height / 1.5,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Image.asset(
                  "assets/image1.jpg",
                  width: screenwidth / 1.5,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                " Hi \n I'm Amal Das P D \n Junior Flutter developer",
                style: GoogleFonts.chakraPetch(
                    color: Colorconstants.textcolor,
                    fontSize: 24,
                    height: 1.6,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 190,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 233, 161, 38)),
                    onPressed: () {},
                    child: Text(
                      "CV / Resume",
                      style: TextStyle(color: Colorconstants.textcolor),
                    )),
              )
            ],
          ),
          //Container(
          //  //height: 300,
          //  //width: 300,
          //  decoration: BoxDecoration(
          //    image: DecorationImage(
          //      image: AssetImage("assets/image1.jpg"),
          //      fit: BoxFit.cover, // Adjust as needed
          //    ),
          //  ),
          //)
        ],
      ),
    );
  }
}
