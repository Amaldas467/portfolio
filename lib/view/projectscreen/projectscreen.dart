import 'package:flutter/material.dart';
import 'package:portfolio/controller/constants/colorconstants.dart';
import 'package:portfolio/controller/constants/screensize.dart';
import 'package:portfolio/view/header/desktop_sliver.dart';
import 'package:portfolio/view/header/mobile_sliver.dart';
import 'package:portfolio/view/header/widget/mobile_drawer.dart';
import 'package:portfolio/view/projectscreen/widgets/projectwidget.dart';

class ProjectScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Colorconstants.scaffoldcolor,
          endDrawer: MobileDrawer(), // Ensure MobileDrawer is included
          body: CustomScrollView(
            slivers: [
              if (constraints.maxWidth >= mobilescreen)
                DesktopSliver()
              else
                MobileSliver(
                  ontap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Center(
                    child: Column(
                      children: [
                        SizedBox(height: 80),
                        Container(
                          width: screensize.width / 1.2,
                          child: ProjectGrid(),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ],
          ),
        );
      },
    );
  }
}
