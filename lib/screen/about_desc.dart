import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:portfolio_web/screen/home_page.dart';
import 'package:portfolio_web/utils/constant.dart';

class AboutDescription extends StatefulWidget {
  @override
  _AboutDescriptionState createState() => _AboutDescriptionState();
}

class _AboutDescriptionState extends State<AboutDescription>
    with TickerProviderStateMixin {
  PageController controller = PageController(initialPage: 0);
  List<String> skill = dataDev.skillDev;

  Widget imageAbout(double layoutSize) {
    return Container(
      width: () {
        if (layoutSize > 1200) {
          return widthScreen(context) / 3;
        } else if (layoutSize > 800 && layoutSize < 1200) {
          return widthScreen(context) / 3;
        } else {
          return widthScreen(context);
        }
      }(),
      child: Image.asset("assets/ab-img.png", fit: BoxFit.cover),
    );
  }

  Widget descAbout(double layoutSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Tentang Saya",
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          softWrap: true,
        ),
        SizedBox(height: 24),
        Text(
          "${dataDev.aboutDev}",
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
          softWrap: true,
        ),
        SizedBox(height: 24),
        Wrap(
          children: skill.map((e) {
            return Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.white)),
              child: Text(
                "$e",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        margin: EdgeInsets.only(
          top: widthScreen(context) / 12,
          bottom: widthScreen(context) / 8,
        ),
        padding: EdgeInsets.symmetric(horizontal: widthScreen(context) / 8),
        child: Column(
          children: [
            /// About me & Skill
            () {
              if (constraints.maxWidth > 1200) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    imageAbout(constraints.maxWidth),
                    SizedBox(width: 120),
                    Expanded(child: descAbout(constraints.maxWidth)),
                  ],
                );
              } else if (constraints.maxWidth > 800 &&
                  constraints.maxWidth < 1200) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    imageAbout(constraints.maxWidth),
                    SizedBox(width: 120),
                    Expanded(child: descAbout(constraints.maxWidth)),
                  ],
                );
              } else {
                return Column(
                  children: [
                    imageAbout(constraints.maxWidth),
                    SizedBox(height: 64),
                    descAbout(constraints.maxWidth),
                  ],
                );
              }
            }(),

            SizedBox(height: 64),

            /// Apa yang saya bisa
            Text(
              "Apa yang saya buat ?",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 64),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// Skills 1
                Expanded(
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Container(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.smartphone,
                              color: Colors.purple, size: 35),
                          SizedBox(height: 24),
                          Text(
                            "Mobile Development",
                            style: TextStyle(
                              fontSize: subTitleSize(constraints.maxWidth),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 24),
                          Text(
                            "Membuat aplikasi berbasis mobile untuk cross platform Android dan iOS menggunakan bahasa pemrograman Dart dan framework Flutter.",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 32),

                /// Skills 2
                Expanded(
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Container(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.code, color: Colors.pink, size: 35),
                          SizedBox(height: 24),
                          Text(
                            "Backend Development",
                            style: TextStyle(
                              fontSize: subTitleSize(constraints.maxWidth),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 24),
                          Text(
                            "Membuat RestfullAPI menggunakan framework Laravel dan Codeigniter untuk keperluan data handling dari sisi Mobile Applications.",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            /// New Project
            // Row(
            //   children: [
            //     IconButton(
            //       icon: Icon(Icons.arrow_back_ios),
            //       onPressed: () {
            //         if (controller.page > 0) {
            //           controller.animateToPage(
            //             controller.page.toInt() - 1,
            //             duration: Duration(milliseconds: 500),
            //             curve: Curves.easeIn,
            //           );
            //         }
            //       },
            //     ),
            //     Flexible(
            //       child: Container(
            //         height: 300,
            //         width: widthScreen(context),
            //         child: PageView(
            //           controller: controller,
            //           children: [
            //             Center(child: Text("Index 1")),
            //             Center(child: Text("Index 2")),
            //             Center(child: Text("Index 3")),
            //           ],
            //         ),
            //       ),
            //     ),
            //     IconButton(
            //       icon: Icon(Icons.arrow_forward_ios),
            //       onPressed: () {
            //         if (controller.page < 3) {
            //           controller.animateToPage(
            //             controller.page.toInt() + 1,
            //             duration: Duration(milliseconds: 500),
            //             curve: Curves.easeIn,
            //           );
            //         }
            //       },
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
