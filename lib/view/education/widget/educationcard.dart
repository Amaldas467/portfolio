import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/controller/constants/colorconstants.dart';

class Educard extends StatelessWidget {
  const Educard({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    final mobileScreen = screensize.width < 800;
    return Column(
      children: [
        Text(
          "EDUCATION",
          style: GoogleFonts.chakraPetch(
            decoration: TextDecoration.underline,
            decorationColor: Colorconstants.textcolor,
            color: Colorconstants.textcolor,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: mobileScreen
              ? const EdgeInsets.symmetric(horizontal: 30)
              : const EdgeInsets.symmetric(horizontal: 180),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colorconstants.lightgrey,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Add padding/margin to the container for better alignment
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Flutter Android Application Development",
                            style: GoogleFonts.chakraPetch(
                              decoration: TextDecoration.underline,
                              decorationColor: Colorconstants.textcolor,
                              color: Colorconstants.textcolor,
                              fontSize: mobileScreen ? 16 : 18,
                              fontWeight: mobileScreen
                                  ? FontWeight.w600
                                  : FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "     Luminar TechnoLab Kochi (2024).",
                            style: GoogleFonts.chakraPetch(
                              color: Colorconstants.textcolor,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colorconstants.lightgrey,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Add padding/margin to the container for better alignment
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Integrated MCA",
                            style: GoogleFonts.chakraPetch(
                              decoration: TextDecoration.underline,
                              decorationColor: Colorconstants.textcolor,
                              color: Colorconstants.textcolor,
                              fontSize: mobileScreen ? 16 : 18,
                              fontWeight: mobileScreen
                                  ? FontWeight.w600
                                  : FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "     SreeNarayana Guru Institute Of Science & Technology (2024).",
                            style: GoogleFonts.chakraPetch(
                              color: Colorconstants.textcolor,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colorconstants.lightgrey,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Add padding/margin to the container for better alignment
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Higher Secondary",
                            style: GoogleFonts.chakraPetch(
                              decoration: TextDecoration.underline,
                              decorationColor: Colorconstants.textcolor,
                              color: Colorconstants.textcolor,
                              fontSize: mobileScreen ? 16 : 18,
                              fontWeight: mobileScreen
                                  ? FontWeight.w600
                                  : FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "     St Anns Public School ,(Eloor / Kochi / Ernakulam)",
                            style: GoogleFonts.chakraPetch(
                              color: Colorconstants.textcolor,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colorconstants.lightgrey,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Add padding/margin to the container for better alignment
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "SSLC",
                            style: GoogleFonts.chakraPetch(
                              decoration: TextDecoration.underline,
                              decorationColor: Colorconstants.textcolor,
                              color: Colorconstants.textcolor,
                              fontSize: mobileScreen ? 16 : 18,
                              fontWeight: mobileScreen
                                  ? FontWeight.w600
                                  : FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "     St Anns Public School ,(Eloor / Kochi / Ernakulam)",
                            style: GoogleFonts.chakraPetch(
                              color: Colorconstants.textcolor,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
