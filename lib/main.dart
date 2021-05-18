import 'package:flutter/material.dart';

import 'screen/home_page.dart';

void main() {
  runApp(PortfolioApps());
}

class PortfolioApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
