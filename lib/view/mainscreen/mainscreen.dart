import 'package:flutter/material.dart';
import 'package:portfolio/controller/constants/colorconstants.dart';
import 'package:portfolio/controller/constants/screensize.dart';
import 'package:portfolio/view/contact_screen/widget/contactcard.dart';
import 'package:portfolio/view/education/widget/educationcard.dart';
import 'package:portfolio/view/projectscreen/widgets/projectwidget.dart';

import 'package:portfolio/view/about_me/about.me_desktop.dart';
import 'package:portfolio/view/about_me/about.me_mobile.dart';
import 'package:portfolio/view/header/desktop_sliver.dart';
import 'package:portfolio/view/header/mobile_sliver.dart';
import 'package:portfolio/view/header/widget/mobile_drawer.dart';
import 'package:portfolio/view/homecard/Homecard_desktop.dart';
import 'package:portfolio/view/homecard/homecard_mobile.dart';
import 'package:portfolio/view/skills/widget/skillcard1.dart';

class Mainscreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
  final ScrollController scrollController = ScrollController();

  Mainscreen({super.key});

  void scrollToTop() {
    scrollController.animateTo(
      0,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldkey,
          endDrawer: MobileDrawer(),
          backgroundColor: Colorconstants.scaffoldcolor,
          body: Stack(
            children: [
              CustomScrollView(
                controller: scrollController,
                slivers: [
                  if (constraints.maxWidth >= mobilescreen)
                    DesktopSliver()
                  else
                    MobileSliver(
                      ontap: () {
                        scaffoldkey.currentState?.openEndDrawer();
                      },
                    ),
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

                      //skills
                      Skillcard1(),

                      //education
                      Educard(),

                      //projects
                      ProjectGrid(),

                      //contact
                      ContactCard(),

                      SizedBox(height: 50),
                    ]),
                  ),
                ],
              ),
              Positioned(
                right: 20,
                bottom: 20,
                child: FloatingActionButton(
                  onPressed: scrollToTop,
                  backgroundColor: Colorconstants.textcolor,
                  child: Icon(Icons.arrow_upward),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
