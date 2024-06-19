import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/controller/constants/colorconstants.dart';
import 'package:portfolio/view/contact_screen/contact.dart';

import 'package:portfolio/view/skills/skillscreen.dart';
import 'package:portfolio/view/mainscreen/mainscreen.dart';

class Customsliverappbar extends StatelessWidget {
  final navigateToPage;
  const Customsliverappbar({super.key, this.navigateToPage});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back,
            color: Colorconstants.textcolor,
          ),
        ),
      ),
      actions: [
        TextButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Mainscreen(),
                )),
            child: Text(
              "Home",
              style: GoogleFonts.chakraPetch(
                  color: Colorconstants.textcolor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            )),
        TextButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Mainscreen(),
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
                  builder: (context) => Mainscreen(),
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
                  builder: (context) => Mainscreen(),
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
      backgroundColor: Colorconstants.scaffoldcolor,
      pinned: true,
      expandedHeight: 50.0,
    );
  }
}

navigateToPage(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Mainscreen(),
          ));
      break;
    case 1:
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SkillCard(),
          ));
      break;
    case 2:
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Mainscreen(),
          ));
      break;
    // Add more cases as needed
    default:
      Navigator.pushNamed(context, '/');
  }
}
