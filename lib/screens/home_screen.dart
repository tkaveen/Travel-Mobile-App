// import 'dart:html';

import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:travel_app/widgets/custom_tab_indicator.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(physics: BouncingScrollPhysics(), children: <Widget>[
            Container(
              height: 57.6,
              margin: EdgeInsets.only(top: 28, left: 28.8, right: 28.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 57.6,
                    width: 57.6,
                    padding: EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      color: Color(0x080a0928),
                    ),
                    child: Icon(
                      Icons.menu,
                      color: Color(0xFF676E79),
                    ),
                    // child: SvgPicture.asset('assets/svg/icon_drawer.svg '),
                  ),
                  Container(
                    height: 57.6,
                    width: 57.6,
                    padding: EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      color: Color(0x080a0928),
                    ),
                    child: Icon(
                      Icons.search,
                      color: Color(0xFF676E79),
                    ),
                    // child: SvgPicture.asset('assets/svg/icon_search.svg '),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 48, left: 28.8),
              child: Text(
                'Explore\nthe Nature',
                style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 50,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              height: 30,
              margin: EdgeInsets.only(left: 14.4, top: 28.8),
              child: DefaultTabController(
                length: 4,
                child: TabBar(
                  labelPadding: EdgeInsets.only(left: 14.4, right: 14.4),
                  indicatorPadding: EdgeInsets.only(left: 14.4, right: 14.4),
                  isScrollable: true,
                  labelColor: Color(0xFF000000),
                  unselectedLabelColor: Color(0xFF8a8a8a),
                  labelStyle: TextStyle(
                      fontFamily: 'Apercu Pro',
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                  unselectedLabelStyle: TextStyle(
                      fontFamily: 'Apercu Pro',
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                  indicator: RoundedRectangleTabIndicator(
                      color: Color(0xFF000000), weight: 2.4, width: 14.4),
                  // indicator: MaterialIndicator(color:Color(0xFF000000) ,  : 2.4 , width: 14.4 ),
                  tabs: [
                    Tab(
                      child: Container(
                        child: Text('Recomemended'),
                      ),
                    ),
                    Tab(
                      child: Container(
                        child: Text('Popular'),
                      ),
                    ),
                    Tab(
                      child: Container(
                        child: Text('New Destination'),
                      ),
                    ),
                    Tab(
                      child: Container(
                        child: Text('Hidden Gems'),
                      ),
                    )
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
