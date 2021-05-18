import 'package:flutter/material.dart';
import 'package:portfolio_web/screen/home_page.dart';
import 'package:portfolio_web/utils/constant.dart';

class DrawerNavbar extends StatelessWidget {
  void openMenu(context) async {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(195, 20, 50, 0.75),
              Color.fromRGBO(35, 11, 54, 0.75),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 40,
              width: widthScreen(context),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                color: Colors.pink,
                child: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () async {
                  openMenu(context);
                  await Scrollable.ensureVisible(
                    homeKey.currentContext,
                    curve: Curves.slowMiddle,
                    duration: Duration(milliseconds: 300),
                  );
                },
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white),
              title: Text(
                "Tentang",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () async {
                openMenu(context);
                await Scrollable.ensureVisible(
                  aboutKey.currentContext,
                  curve: Curves.slowMiddle,
                  duration: Duration(milliseconds: 300),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white),
              title: Text(
                "Pengalaman",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () async {
                openMenu(context);
                await Scrollable.ensureVisible(
                  experienceKey.currentContext,
                  curve: Curves.slowMiddle,
                  duration: Duration(milliseconds: 300),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.insert_chart, color: Colors.white),
              title: Text(
                "Portfolio",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () async {
                openMenu(context);
                await Scrollable.ensureVisible(
                  portfolioKey.currentContext,
                  curve: Curves.slowMiddle,
                  duration: Duration(milliseconds: 300),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.white),
              title: Text(
                "Contact",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () async {
                openMenu(context);
                await Scrollable.ensureVisible(
                  contactKey.currentContext,
                  curve: Curves.slowMiddle,
                  duration: Duration(milliseconds: 300),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
