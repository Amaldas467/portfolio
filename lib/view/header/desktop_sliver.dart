import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/controller/constants/colorconstants.dart';
import 'package:portfolio/view/contact_screen/contact.dart';
import 'package:portfolio/view/education/education.dart';
import 'package:portfolio/view/projectscreen/projectscreen.dart';
import 'package:portfolio/view/projectscreen/widgets/projectwidget.dart';
import 'package:portfolio/view/skills/skillscreen.dart';
import 'package:portfolio/view/mainscreen/mainscreen.dart';

class DesktopSliver extends StatelessWidget {
  const DesktopSliver({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Text(
          "   AD",
          style: GoogleFonts.chakraPetch(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Row(
            children: [
              TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Mainscreen(),
                  ),
                ),
                child: Text(
                  "Home",
                  style: GoogleFonts.chakraPetch(
                      color: Colorconstants.textcolor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
              TextButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SkillCard(),
                      )),
                  child: Text(
                    "Skills",
                    style: GoogleFonts.chakraPetch(
                        color: Colorconstants.textcolor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  )),
              TextButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Education(),
                      )),
                  child: Text(
                    "Education",
                    style: GoogleFonts.chakraPetch(
                        color: Colorconstants.textcolor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  )),
              TextButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProjectScreen(),
                      )),
                  child: Text(
                    "Project",
                    style: GoogleFonts.chakraPetch(
                        color: Colorconstants.textcolor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  )),
              TextButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContactScreen(),
                      )),
                  child: Text(
                    "Contact",
                    style: GoogleFonts.chakraPetch(
                        color: Colorconstants.textcolor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ))
            ],
          ),
        )
      ],
      backgroundColor: Colorconstants.scaffoldcolor,
      pinned: true,
      expandedHeight: 50.0,
    );
  }
}
