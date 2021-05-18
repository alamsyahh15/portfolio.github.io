import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:portfolio_web/model/developer_model.dart';
import 'package:portfolio_web/screen/personal_desc.dart';
import 'package:portfolio_web/screen/widget/drawer_navbar.dart';
import 'package:portfolio_web/screen/widget/navbar.dart';
import 'package:portfolio_web/utils/constant.dart';
import 'about_desc.dart';
import 'contact_desc.dart';
import 'experience_desc.dart';
import 'portfolio_desc.dart';
import 'package:flutter/services.dart' show rootBundle;

GlobalKey<ScaffoldState> scKey = GlobalKey<ScaffoldState>();
final homeKey = GlobalKey();
final aboutKey = GlobalKey();
final experienceKey = GlobalKey();
final portfolioKey = GlobalKey();
final contactKey = GlobalKey();
ScrollController scrollController = ScrollController();
DeveloperModel dataDev = DeveloperModel();

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoading = false;
  Future loadData() async {
    try {
      setState(() => isLoading = true);

      final res = await rootBundle.loadString("assets/config/data.json");
      if (res != null) {
        setState(() {
          dataDev = developerModelFromJson(res);
          print("Length Work : ${dataDev.experienceDev.work.length}");
        });
      }
    } catch (e) {} finally {
      setState(() => isLoading = false);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawerEnableOpenDragGesture: false,
      endDrawer: DrawerNavbar(),
      key: scKey,
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : Stack(
              children: [
                Image.asset(
                  'assets/bg_image.jpg',
                  fit: BoxFit.cover,
                  width: widthScreen(context),
                  height: heightScreen(context),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(195, 20, 50, 0.85),
                        Color.fromRGBO(35, 11, 54, 0.85),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  child: Column(
                    children: [
                      Navbar(),
                      SizedBox(height: 20),
                      Expanded(
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              Container(
                                  key: homeKey, child: PersonalDescription()),
                              Container(
                                  key: aboutKey, child: AboutDescription()),
                              Container(
                                  key: experienceKey,
                                  child: ExperienceDescription()),
                              Container(
                                  key: portfolioKey,
                                  child: PortfolioDescription()),
                              Container(
                                  key: contactKey, child: ContactDescription()),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
