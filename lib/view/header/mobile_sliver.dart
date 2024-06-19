import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/controller/constants/colorconstants.dart';

class MobileSliver extends StatelessWidget {
  final Function()? ontap;

  const MobileSliver({super.key, this.ontap});

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
          child: IconButton(
            onPressed: ontap,
            icon: Icon(
              Icons.menu,
              color: Colorconstants.textcolor,
            ),
          ),
        )
      ],
      backgroundColor: Colorconstants.scaffoldcolor,
      pinned: true,
      expandedHeight: 50.0,
    );
  }
}
