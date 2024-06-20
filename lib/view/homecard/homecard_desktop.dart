import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio/controller/constants/colorconstants.dart';
import 'package:url_launcher/url_launcher.dart';

class Homecard_desktop extends StatelessWidget {
  const Homecard_desktop({super.key});
  void _launchURL(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $urlString';
    }
  }

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    final screenwidth = screensize.width;
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 80),
          height: screensize.height / 1,
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
            padding: const EdgeInsets.only(left: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      " Hi \n I'm Amal Das P D \n Junior Flutter developer",
                      style: GoogleFonts.chakraPetch(
                          color: Colorconstants.textcolor,
                          fontSize: 26,
                          height: 1.6,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            _launchURL('mailto:swathishkumar03@gmail.com');
                          },
                          icon: Icon(
                            Bootstrap.google,
                            color: Colorconstants.textcolor,
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        IconButton(
                          onPressed: () {
                            _launchURL(
                                "https://www.linkedin.com/in/amal-das-p-d-37b143283/");
                          },
                          icon: Icon(
                            Bootstrap.linkedin,
                            color: Colorconstants.textcolor,
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        IconButton(
                          onPressed: () {
                            _launchURL("https://GitHub.com/Amaldas467");
                          },
                          icon: Icon(
                            Bootstrap.github,
                            color: Colorconstants.textcolor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 190,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 233, 161, 38)),
                          onPressed: () {
                            _launchURL(
                                "https://drive.google.com/file/d/1UDL1KhOwI-tN7DHQOQDfA50L4_06tODS/view?usp=sharing");
                          },
                          child: Text(
                            "CV / Resume",
                            style: TextStyle(color: Colorconstants.textcolor),
                          )),
                    )
                  ],
                ),
                Flexible(
                  child: Image.asset(
                    "assets/image1.jpg",
                    width: screenwidth / 1.7,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
