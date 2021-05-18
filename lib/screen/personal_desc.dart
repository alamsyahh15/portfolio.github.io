import 'package:flutter/material.dart';
import 'package:portfolio_web/screen/home_page.dart';
import 'package:portfolio_web/screen/widget/widget_two_items.dart';
import 'package:portfolio_web/utils/constant.dart';

class PersonalDescription extends StatelessWidget {
  Widget imageProfile(double layoutSize) {
    double sizeRadius1() {
      if (layoutSize > 1200) {
        return 300;
      } else if (layoutSize > 800 && layoutSize < 1200) {
        return 270;
      } else {
        return 240;
      }
    }

    double sizeRadius2() {
      if (layoutSize > 1200) {
        return 270;
      } else if (layoutSize > 800 && layoutSize < 1200) {
        return 240;
      } else {
        return 210;
      }
    }

    double sizeRadius3() {
      if (layoutSize > 1200) {
        return 240;
      } else if (layoutSize > 800 && layoutSize < 1200) {
        return 210;
      } else {
        return 180;
      }
    }

    return Stack(
      alignment: Alignment.center,
      fit: StackFit.passthrough,
      children: [
        Container(
          width: sizeRadius1(),
          height: sizeRadius1(),
          child: CircleAvatar(
            backgroundColor: Colors.grey.withOpacity(0.25),
            minRadius: 100,
          ),
        ),
        Container(
          width: sizeRadius2(),
          height: sizeRadius2(),
          child: CircleAvatar(
            backgroundColor: Colors.grey.withOpacity(0.75),
            minRadius: 100,
          ),
        ),
        Container(
          width: sizeRadius3(),
          height: sizeRadius3(),
          child: CircleAvatar(
            backgroundColor: Colors.red,
            minRadius: 100,
            backgroundImage: NetworkImage(
              "${dataDev.photoDev}",
            ),
            onBackgroundImageError: (exception, stackTrace) {},
          ),
        ),
      ],
    );
  }

  Widget profileDesc(double layoutSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 32),
          child: Text(
            "Bonjour! Nama Saya",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(50),
              bottomRight: Radius.circular(50),
              topLeft: Radius.circular(50),
            ),
          ),
        ),
        SizedBox(height: 24),
        Text(
          "${dataDev.nameDev}",
          style: TextStyle(
            fontSize: titleSize(layoutSize),
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          "${dataDev.positionDev}",
          style: TextStyle(
            fontSize: subTitleSize(layoutSize),
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 24),
        widgetTwoItems(
          child1: Icon(Icons.email, color: Colors.white),
          child2: Text(
            "${dataDev.emailDev}",
            style: TextStyle(
              color: Colors.white,
              fontSize: normalTextSize(layoutSize),
            ),
          ),
        ),
        widgetTwoItems(
          child1: Icon(Icons.phone, color: Colors.white),
          child2: Text(
            "${dataDev.phoneDev}",
            style: TextStyle(
              color: Colors.white,
              fontSize: normalTextSize(layoutSize),
            ),
          ),
        ),
        widgetTwoItems(
          child1: Icon(Icons.location_on, color: Colors.white),
          child2: Text(
            "${dataDev.addressDev}",
            style: TextStyle(
              color: Colors.white,
              fontSize: normalTextSize(layoutSize),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        margin: EdgeInsets.only(
          top: widthScreen(context) / 16,
          bottom: widthScreen(context) / 16,
        ),
        width: widthScreen(context),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: widthScreen(context) / 8),
          child: Column(
            children: [
              () {
                if (constraints.maxWidth > 1200) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      profileDesc(constraints.maxWidth),
                      imageProfile(constraints.maxWidth)
                    ],
                  );
                } else if (constraints.maxWidth > 800 &&
                    constraints.maxWidth < 1200) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      profileDesc(constraints.maxWidth),
                      imageProfile(constraints.maxWidth)
                    ],
                  );
                } else {
                  return Column(
                    children: [
                      imageProfile(constraints.maxWidth),
                      SizedBox(height: 32),
                      profileDesc(constraints.maxWidth),
                    ],
                  );
                }
              }(),
              Row(
                children: [
                  /// Your Button Media Social
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
