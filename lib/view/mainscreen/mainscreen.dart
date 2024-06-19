import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/controller/constants/colorconstants.dart';
import 'package:portfolio/controller/constants/navitems.dart';
import 'package:portfolio/controller/constants/screensize.dart';
import 'package:portfolio/skills/skill.dart';
import 'package:portfolio/view/about_me/about.me_desktop.dart';
import 'package:portfolio/view/about_me/about.me_mobile.dart';
import 'package:portfolio/view/header/desktop_sliver.dart';
import 'package:portfolio/view/header/mobile_sliver.dart';

import 'package:portfolio/view/header/widget/mobile_drawer.dart';
import 'package:portfolio/view/homecard/Homecard_desktop.dart';

import 'package:portfolio/view/homecard/homecard_mobile.dart';

class Mainscreen extends StatelessWidget {
  final scaffoldkey = GlobalKey<ScaffoldState>();

  Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldkey,
          endDrawer: Mobile_drawer(),
          backgroundColor: Colorconstants.scaffoldcolor,
          body: CustomScrollView(
            slivers: [
              if (constraints.maxWidth >= mobilescreen)
                DesktopSliver()
              else
                mobile_sliver(),
              SliverList(
                delegate: SliverChildListDelegate([
                  // Home
                  if (constraints.maxWidth >= mobilescreen)
                    Homecard_desktop()
                  else
                    Homecard_mobile(),

                  // About_me
                  if (constraints.maxWidth >= mobilescreen)
                    Aboutme()
                  else
                    Aboutme_mobile(),

                  // Other widgets like skills, etc.
                  // Skillcard1(),
                  // Skillcard2(),
                  // Container(
                  //   height: 500,
                  //   color: Colors.amber,
                  // ),
                ]),
              ),
            ],
          ),
        );
      },
    );
  }
}

void _navigateToPage(BuildContext context, int index) {
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
      Navigator.pushNamed(context, '/contact');
      break;
    // Add more cases as needed
    default:
      Navigator.pushNamed(context, '/');
  }
}
