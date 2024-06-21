import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/controller/constants/colorconstants.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectGrid extends StatelessWidget {
  const ProjectGrid({super.key});
  void _launchURL(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $urlString';
    }
  }

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    final mobilescren = screensize.width < 800;
    return Column(
      children: [
        SizedBox(height: mobilescren ? 60 : 100),
        Text(
          "PROJECTS",
          style: GoogleFonts.chakraPetch(
            decoration: TextDecoration.underline,
            decorationColor: Colorconstants.textcolor,
            color: Colorconstants.textcolor,
            fontWeight: FontWeight.bold,
            fontSize: mobilescren ? 20 : 25,
          ),
        ),
        Padding(
          padding: mobilescren
              ? const EdgeInsets.symmetric(horizontal: 5, vertical: 5)
              : const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: ProjectData.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: mobilescren ? 2 : 3,
              mainAxisSpacing: mobilescren ? 16 : 20,
              crossAxisSpacing: mobilescren ? 5 : 20,
              childAspectRatio: 1, // Aspect ratio of grid items
            ),
            itemBuilder: (context, index) {
              return Padding(
                padding: mobilescren
                    ? const EdgeInsets.all(10)
                    : const EdgeInsets.all(40),
                child: Container(
                  //height: 100,
                  //width: 100,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colorconstants.scaffoldcolor,
                      Colors.blueGrey
                    ]),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        ProjectData[index]["Heading"].toString(),
                        style: GoogleFonts.chakraPetch(
                          decoration: TextDecoration.underline,
                          decorationColor: Colorconstants.textcolor,
                          fontWeight: FontWeight.w600,
                          fontSize: mobilescren ? 16 : 24,
                          color: Colorconstants.textcolor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          ProjectData[index]["Desc"].toString(),
                          style: GoogleFonts.chakraPetch(
                            //fontWeight: FontWeight.w600,
                            fontSize: mobilescren ? 10 : 19,
                            color: Colorconstants.textcolor,
                          ),
                          textAlign: TextAlign.justify,
                          maxLines: 8,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: InkWell(
                          onTap: () {},
                          child: InkWell(
                            onTap: () {
                              _launchURL(ProjectData[index]["link"].toString());
                            },
                            child: Row(
                              children: [
                                Text(
                                  "Check on Github",
                                  style: GoogleFonts.chakraPetch(
                                    fontWeight: FontWeight.w600,
                                    fontSize: mobilescren ? 12 : 20,
                                    color: Colorconstants.textcolor,
                                  ),
                                ),
                                Text(">>",
                                    style: GoogleFonts.chakraPetch(
                                      fontWeight: FontWeight.w600,
                                      fontSize: mobilescren ? 12 : 20,
                                      color: Colors.yellow,
                                    ))
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

final List<Map<String, String>> ProjectData = [
  {
    'Heading': 'Hypermart',
    'Desc':
        'Flutter-based Application designed to facilitate offline product scanning and online payments, online shopping, streamlining the offline shopping experience and saving valuable time',
    'link': 'https://github.com/Amaldas467/hypermarket_user.git'
  },
  {
    'Heading': 'ToolUp',
    'Desc':
        ' Web Application implemented using Python django which focus on providing tools rental and sales platform for users',
    'link': 'https://github.com/Amaldas467/hypermarket_user.git'
  },
  {
    'Heading': 'NoteApp',
    'Desc':
        'Flutter based Note Application used for writing notes and include other functionalities such as adding ,deleting,modifying contents',
    'link': 'https://github.com/Amaldas467/note_application-main.git'
  },
  {
    'Heading': 'Quiz App',
    'Desc':
        'Flutter based Application which uses question of different category and and provide a quiz platform wand calculate score ',
    'link': 'https://github.com/Amaldas467/quiz_app_clone.git'
  },
  {
    'Heading': 'Instagram UI Clone',
    'Desc': 'UI clone of Instagram implemented using Flutter',
    'link': 'https://github.com/Amaldas467/hypermarket_user.git'
  },
  {
    'Heading': 'Portfolio',
    'Desc':
        'Responsive portfolio implemented using Flutter which provides my professional portfolo including details about skill,projects,education and other details',
    'link': 'https://github.com/Amaldas467/hypermarket_user.git'
  },
];
