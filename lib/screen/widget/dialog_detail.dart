import 'package:flutter/material.dart';
import 'package:portfolio_web/model/developer_model.dart';
import 'package:portfolio_web/screen/widget/widget_two_items.dart';
import 'package:portfolio_web/utils/constant.dart';
import 'dart:js' as js;

showDialogDetail(context, double layout, {Portfolio dataPortfolio}) {
  Widget widgetDescription() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("${dataPortfolio.nameProject}",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        SizedBox(height: 16),
        Text("${dataPortfolio.descProject}"),
        SizedBox(height: 16),
        Wrap(
            children: dataPortfolio.stackTechno.map((e) {
          return Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.pink)),
            child: Text(
              "$e",
              style: TextStyle(color: Colors.pink, fontSize: 16),
            ),
          );
        }).toList()),
        widgetTwoItems(
          child1: Visibility(
            visible: dataPortfolio.linkPlay != null,
            child: Flexible(
              child: Container(
                height: 45,
                width: widthScreen(context),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  color: Colors.pink,
                  textColor: Colors.white,
                  child: Text("Get On Playstore"),
                  onPressed: () {
                    js.context
                        .callMethod('open', ['${dataPortfolio.linkPlay}']);
                  },
                ),
              ),
            ),
          ),
          child2: Visibility(
            visible: dataPortfolio.linkApps != null,
            child: Flexible(
              child: Container(
                height: 45,
                width: widthScreen(context),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  color: Colors.pink,
                  textColor: Colors.white,
                  child: Text("Get On Appstore"),
                  onPressed: () {
                    js.context
                        .callMethod('open', ['${dataPortfolio.linkApps}']);
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget widgetImage() {
    return Image.network(
      "${dataPortfolio.imgUrl}",
      width: widthScreen(context),
      height: 300,
      fit: BoxFit.fill,
    );
  }

  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) =>
              AlertDialog(
            title: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(Icons.clear, size: 20),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            content: Container(
              padding: EdgeInsets.all(16),
              child: Scrollbar(
                isAlwaysShown: true,
                child: () {
                  print("${constraints.maxWidth}");
                  if (constraints.maxWidth > 1200) {
                    return widgetTwoItems(
                      child1: Flexible(
                          child: SingleChildScrollView(
                        child: widgetDescription(),
                      )),
                      child2: Flexible(child: widgetImage()),
                    );
                  } else if (constraints.maxWidth > 800 && layout < 1200) {
                    return widgetTwoItems(
                      child1: Flexible(
                          child: SingleChildScrollView(
                        child: widgetDescription(),
                      )),
                      child2: Flexible(child: widgetImage()),
                    );
                  } else {
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          widgetImage(),
                          SizedBox(height: 16),
                          widgetDescription(),
                        ],
                      ),
                    );
                  }
                }(),
              ),
            ),
          ),
        );
      });
}
