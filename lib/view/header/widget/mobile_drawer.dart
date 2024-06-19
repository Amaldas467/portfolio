import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/controller/constants/colorconstants.dart';
import 'package:portfolio/controller/constants/navitems.dart';

class Mobile_drawer extends StatelessWidget {
  const Mobile_drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colorconstants.scaffoldcolor,
      child: ListView(
        children: [
          for (int i = 0; i < navicons.length; i++)
            InkWell(
              onTap: () {},
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
            )
        ],
      ),
    );
  }
}
