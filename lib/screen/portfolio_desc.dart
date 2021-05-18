import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio_web/model/developer_model.dart';
import 'package:portfolio_web/screen/home_page.dart';
import 'package:portfolio_web/screen/widget/dialog_detail.dart';
import 'package:portfolio_web/utils/constant.dart';

class PortfolioDescription extends StatefulWidget {
  @override
  _PortfolioDescriptionState createState() => _PortfolioDescriptionState();
}

class _PortfolioDescriptionState extends State<PortfolioDescription>
    with TickerProviderStateMixin {
  List<Portfolio> backupPortfolio = [];
  TabController tabController;
  List<bool> listHover = [];
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    backupPortfolio.addAll(dataDev.portfolio);
    listHover = List.generate(dataDev.portfolio.length, (index) => false);
  }

  filterData(int index) {
    dataDev.portfolio = backupPortfolio;
    if (index == 1) {
      dataDev.portfolio = dataDev.portfolio
          .where((e) => e.categoryProject == "Mobile")
          .toList();
    }
    if (index == 2) {
      dataDev.portfolio =
          dataDev.portfolio.where((e) => e.categoryProject == "Web").toList();
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        margin: EdgeInsets.only(
          bottom: widthScreen(context) / 8,
        ),
        padding: EdgeInsets.symmetric(horizontal: widthScreen(context) / 8),
        child: Column(
          children: [
            Text(
              "Portfolio",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 64),
            TabBar(
              controller: tabController,
              indicatorColor: Colors.pink,
              tabs: [
                Tab(
                  child: Text("All Categories",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Tab(
                  child: Text(
                    "Mobile Apps",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Web Apps",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
              onTap: (index) {
                filterData(index);
              },
            ),
            SizedBox(height: 20),
            dataDev.portfolio.length == 0
                ? Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "No Record Data",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  )
                : GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: () {
                        if (constraints.maxWidth > 1200) {
                          return 3;
                        } else if (constraints.maxWidth > 800 &&
                            constraints.maxWidth < 1200) {
                          return 2;
                        } else {
                          return 1;
                        }
                      }(),
                      childAspectRatio: 1.5,
                    ),
                    itemCount: dataDev.portfolio.length,
                    itemBuilder: (context, index) {
                      final data = dataDev.portfolio[index];
                      return InkWell(
                        onHover: (event) {
                          setState(() => listHover[index] = event);
                        },
                        onTap: () {
                          showDialogDetail(context, constraints.maxWidth,
                              dataPortfolio: data);
                        },
                        child: Card(
                          child: Stack(
                            children: [
                              Container(
                                width: 500,
                                height: 250,
                                child: Image.network(
                                  data.imgUrl,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Visibility(
                                visible: listHover[index],
                                child: AnimatedContainer(
                                  width: 500,
                                  height: 250,
                                  duration: Duration(milliseconds: 400),
                                  color: Colors.pink.withOpacity(0.5),
                                  curve: Curves.easeInOut,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.search,
                                        color: Colors.white,
                                        size: 35,
                                      ),
                                      Text(
                                        "${data.nameProject}",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    })
          ],
        ),
      ),
    );
  }
}
