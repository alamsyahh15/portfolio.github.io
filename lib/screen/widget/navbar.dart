import 'package:flutter/material.dart';
import 'package:portfolio_web/screen/home_page.dart';
import 'package:portfolio_web/utils/constant.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return NavbarDesktop();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return NavbarDesktop();
        } else {
          return NavbarMobile();
        }
      },
    );
  }
}

class NavbarDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "My Portfolio",
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Container(
                height: 40,
                width: 120,
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
                    await Scrollable.ensureVisible(
                      homeKey.currentContext,
                      curve: Curves.slowMiddle,
                      duration: Duration(milliseconds: 300),
                    );
                  },
                ),
              ),
              SizedBox(width: 16),
              MaterialButton(
                onPressed: () async {
                  await Scrollable.ensureVisible(
                    aboutKey.currentContext,
                    curve: Curves.slowMiddle,
                    duration: Duration(milliseconds: 300),
                  );
                },
                child: Text(
                  "Tentang",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(width: 16),
              MaterialButton(
                onPressed: () async {
                  await Scrollable.ensureVisible(
                    experienceKey.currentContext,
                    curve: Curves.slowMiddle,
                    duration: Duration(milliseconds: 300),
                  );
                },
                child: Text(
                  "Pengalaman",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(width: 16),
              MaterialButton(
                onPressed: () async {
                  await Scrollable.ensureVisible(
                    portfolioKey.currentContext,
                    curve: Curves.slowMiddle,
                    duration: Duration(milliseconds: 300),
                  );
                },
                child: Text(
                  "Portfolio",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(width: 16),
              MaterialButton(
                onPressed: () async {
                  await Scrollable.ensureVisible(
                    contactKey.currentContext,
                    curve: Curves.slowMiddle,
                    duration: Duration(milliseconds: 300),
                  );
                },
                child: Text(
                  "Contact",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(width: 16),
            ],
          ),
        ],
      ),
    );
  }
}

class NavbarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "My Portfolio",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                scKey.currentState.openEndDrawer();
              },
            ),
          ),
        ],
      ),
    );
  }
}
