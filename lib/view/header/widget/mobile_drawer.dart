import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/controller/constants/colorconstants.dart';
import 'package:portfolio/controller/constants/navitems.dart';
import 'package:portfolio/view/contact_screen/contact.dart';
import 'package:portfolio/view/education/education.dart';
import 'package:portfolio/view/projectscreen/projectscreen.dart';
import 'package:portfolio/view/skills/skillscreen.dart';
import 'package:portfolio/view/mainscreen/mainscreen.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key});

  void navigateToPage(BuildContext context, String page) {
    Widget screen;
    switch (page) {
      case 'Home':
        screen = Mainscreen();
        break;
      case 'Skills':
        screen = SkillCard();
        break;
      case 'Education':
        screen = Education();
        break;
      case 'Projects':
        screen = ProjectScreen();
        break;
      case 'Contact':
        screen = ContactScreen();
        break;
      default:
        screen = Mainscreen();
    }
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colorconstants.scaffoldcolor,
      child: ListView(
        children: [
          for (int i = 0; i < navicons.length; i++)
            InkWell(
              onTap: () {
                Navigator.pop(context);
                navigateToPage(context, navtitles[i]);
              },
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 30),
                leading: Icon(
                  navicons[i],
                  color: Colorconstants.textcolor,
                ),
                title: Text(
                  navtitles[i],
                  style: GoogleFonts.chakraPetch(
                      color: Colorconstants.textcolor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
