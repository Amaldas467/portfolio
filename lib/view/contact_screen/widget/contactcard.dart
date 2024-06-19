import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/controller/constants/colorconstants.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    final mobileScreen = screensize.width < 800;
    return Padding(
      padding: mobileScreen
          ? const EdgeInsets.symmetric(horizontal: 60)
          : const EdgeInsets.symmetric(horizontal: 180),
      child: Container(
        decoration: BoxDecoration(),
        constraints: BoxConstraints.loose(const Size.fromWidth(700)),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: mobileScreen ? 50 : 50),
              Text(
                "GET IN TOUCH",
                style: GoogleFonts.chakraPetch(
                  decoration: TextDecoration.underline,
                  decorationColor: Colorconstants.textcolor,
                  color: Colorconstants.textcolor,
                  fontWeight: FontWeight.bold,
                  fontSize: mobileScreen ? 20 : 25,
                ),
              ),
              SizedBox(
                height: mobileScreen ? 30 : 60,
              ),
              SizedBox(
                height: 600,
                width: 1000,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name",
                      style: GoogleFonts.chakraPetch(
                        decorationColor: Colorconstants.textcolor,
                        color: Colorconstants.textcolor,
                        fontWeight: FontWeight.w600,
                        fontSize: mobileScreen ? 16 : 20,
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Enter your name here',
                        hintStyle: GoogleFonts.chakraPetch(
                            color: Colorconstants.lightgrey),
                      ),
                    ),
                    SizedBox(
                      height: mobileScreen ? 15 : 30,
                    ),
                    Text(
                      "Email Address",
                      style: GoogleFonts.chakraPetch(
                        decorationColor: Colorconstants.textcolor,
                        color: Colorconstants.textcolor,
                        fontWeight: FontWeight.w600,
                        fontSize: mobileScreen ? 16 : 20,
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(),
                            borderRadius: BorderRadius.circular(10)),
                        hintText: 'E g: name@website.com',
                        hintStyle: GoogleFonts.chakraPetch(
                            color: Colorconstants.lightgrey),
                      ),
                    ),
                    SizedBox(
                      height: mobileScreen ? 15 : 30,
                    ),
                    Text(
                      " Message",
                      style: GoogleFonts.chakraPetch(
                        decorationColor: Colorconstants.textcolor,
                        color: Colorconstants.textcolor,
                        fontWeight: FontWeight.w600,
                        fontSize: mobileScreen ? 16 : 20,
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 60.0, horizontal: 10.0),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'How can I help you',
                        hintStyle: GoogleFonts.chakraPetch(
                            color: Colorconstants.lightgrey),
                      ),
                    ),
                    SizedBox(
                      height: mobileScreen ? 15 : 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colorconstants.lightgrey,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              "Send Message",
                              style: GoogleFonts.chakraPetch(
                                decorationColor: Colorconstants.textcolor,
                                color: Colorconstants.textcolor,
                                fontWeight: FontWeight.w600,
                                fontSize: mobileScreen ? 16 : 20,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              // Contactcard(),
            ],
          ),
        ),
      ),
    );
  }
}

//class ContactSubtitle extends StatelessWidget {
//  const ContactSubtitle({
//    super.key,
//    required this.text,
//  });
//
//  final String text;
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      child: Text(
//        text,
//        style: Theme.of(context).textTheme.titleSmall?.copyWith(
//              color: Colorconstants.textcolor,
//            ),
//      ),
//    );
//  }
//}
