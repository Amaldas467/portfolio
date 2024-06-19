import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/controller/constants/colorconstants.dart';

class ProjectGrid extends StatelessWidget {
  const ProjectGrid({super.key});

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
              ? const EdgeInsets.symmetric(horizontal: 10, vertical: 10)
              : const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: ProjectData.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: mobilescren ? 2 : 3,
              mainAxisSpacing: mobilescren ? 10 : 30,
              crossAxisSpacing: mobilescren ? 5 : 30,
              childAspectRatio: 1, // Aspect ratio of grid items
            ),
            itemBuilder: (context, index) {
              return Flexible(
                child: Padding(
                  padding: mobilescren
                      ? const EdgeInsets.all(20)
                      : const EdgeInsets.all(50),
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
                        )
                      ],
                    ),
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
        'Flutter-based Application designed to facilitate offline product scanning and online payments, online shopping, streamlining the offline shopping experience and saving valuable time'
  },
  {
    'Heading': 'ToolUp',
    'Desc':
        ' Web Application implemented using Python django which focus on providing tools rental and sales platform for users'
  },
  {
    'Heading': 'NoteApp',
    'Desc':
        'Flutter based Note Application used for writing notes and include other functionalities such as adding ,deleting,modifying contents'
  },
  {
    'Heading': 'NewsApp',
    'Desc':
        'Flutter based Application which uses local storage to show news in the Ui,it also include usage of state management ie, provider'
  },
  {
    'Heading': 'Instagram UI Clone',
    'Desc': 'UI clone of Instagram implemented using Flutter'
  },
  {
    'Heading': 'Portfolio',
    'Desc':
        'Responsive portfolio implemented using Flutter which provides my professional portfolo including details about skill,projects,education and other details'
  },
];
