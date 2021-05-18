import 'package:flutter/material.dart';
import 'package:portfolio_web/screen/home_page.dart';
import 'package:portfolio_web/screen/widget/widget_two_items.dart';
import 'package:portfolio_web/utils/constant.dart';

class ExperienceDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        margin: EdgeInsets.only(
          bottom: widthScreen(context) / 12,
        ),
        padding: EdgeInsets.symmetric(horizontal: widthScreen(context) / 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Container(
                    width: widthScreen(context),
                    child: Text(
                      "Edukasi",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 32),
                Flexible(
                  child: Container(
                    width: widthScreen(context),
                    child: Text(
                      "Pengalaman Bekerja",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 32),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// List Data Education
                Flexible(
                  child: Container(
                    width: widthScreen(context),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: dataDev.experienceDev.education.map((e) {
                        return Card(
                          child: Container(
                            margin: EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                        fontSize: () {
                                          if (constraints.maxWidth > 1200) {
                                            return 24.0;
                                          } else {
                                            return 16.0;
                                          }
                                        }(),
                                        fontWeight: FontWeight.bold),
                                    children: [
                                      TextSpan(
                                          text: "${e.majors} ",
                                          style:
                                              TextStyle(color: Colors.black)),
                                      TextSpan(
                                        text: "${e.schoolName}",
                                        style: TextStyle(color: Colors.pink),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 16),
                                Text(
                                  "${e.years}",
                                  style: TextStyle(
                                      color: Colors.pink, fontSize: 16),
                                ),
                                SizedBox(height: 16),
                                Text(
                                  "${e.desc}",
                                  style: TextStyle(
                                    fontSize: () {
                                      if (constraints.maxWidth > 1200) {
                                        return 16.0;
                                      } else {
                                        return 12.0;
                                      }
                                    }(),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(width: 32),

                /// List Data Experience Work
                Flexible(
                  child: Container(
                    width: widthScreen(context),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: dataDev.experienceDev.work.map((work) {
                        return Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          child: Container(
                            margin: EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                        fontSize: () {
                                          if (constraints.maxWidth > 1200) {
                                            return 24.0;
                                          } else {
                                            return 16.0;
                                          }
                                        }(),
                                        fontWeight: FontWeight.bold),
                                    children: [
                                      TextSpan(
                                          text: "${work.position} ",
                                          style:
                                              TextStyle(color: Colors.black)),
                                      TextSpan(
                                        text: "${work.companyName}",
                                        style: TextStyle(color: Colors.pink),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 16),
                                Text(
                                  "${work.expired}",
                                  style: TextStyle(
                                      color: Colors.pink, fontSize: 16),
                                ),
                                SizedBox(height: 16),
                                Column(
                                  children: work.jobdesk.map((jobs) {
                                    return widgetTwoItems(
                                      child1: Icon(
                                        Icons.circle,
                                        size: () {
                                          if (constraints.maxWidth > 1200) {
                                            return 15.0;
                                          } else {
                                            return 10.0;
                                          }
                                        }(),
                                      ),
                                      child2: Flexible(
                                        child: Container(
                                          width: widthScreen(context),
                                          child: Text("$jobs", style: TextStyle(
                                            fontSize: () {
                                              if (constraints.maxWidth > 1200) {
                                                return 16.0;
                                              } else {
                                                return 12.0;
                                              }
                                            }(),
                                          )),
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
