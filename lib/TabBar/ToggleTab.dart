import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:flutter_toggle_tab/helper.dart';

class ToggleTab extends StatefulWidget {
  @override
  _ToggleTabState createState() => _ToggleTabState();
}

class _ToggleTabState extends State<ToggleTab> {
  var _tabTextIndexSelected = 0;
  var _tabTextIconIndexSelected = 0;
  var _tabIconIndexSelected = 0;
  var _tabSelectedIndexSelected = 0;

  var _listTextTabToggle = ["Tab A (10)", "Tab B (6)", "Tab C (9)"];
  var _listTextSelectedToggle = [
    "Select A (10)",
    "Select B (6)",
    "Select C (9)"
  ];
  var _listIconTabToggle = [
    Icons.person,
    Icons.pregnant_woman,
  ];
  var _listGenderText = ["Male", "Female"];
  var _listGenderEmpty = ["", ""];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Tab Toggle"),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: heightInPercent(3, context),
            ),
            Text(
              "Basic Tab Toggle",
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: heightInPercent(3, context),
            ),
            FlutterToggleTab(
              // width in percent
              width: 90,
              borderRadius: 30,
              height: 50,
              initialIndex: 0,
              selectedBackgroundColors: [Colors.blue, Colors.blueAccent],
              selectedTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
              unSelectedTextStyle: TextStyle(
                  color: Colors.black87,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
              labels: _listTextTabToggle,
              selectedLabelIndex: (index) {
                setState(() {
                  _tabTextIndexSelected = index;
                });
              },
              isScroll: false,
            ),
            SizedBox(
              height: heightInPercent(3, context),
            ),
            Text(
              "Index selected : $_tabTextIndexSelected",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: heightInPercent(3, context),
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: heightInPercent(3, context),
            ),
            Text(
              "With Icon",
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Select your sex : ",
                    style: TextStyle(fontSize: 20),
                  ),
                  FlutterToggleTab(
                    width: 45,
                    borderRadius: 15,
                    initialIndex: 0,
                    selectedTextStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                    unSelectedTextStyle: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    labels: _listGenderText,
                    icons: _listIconTabToggle,
                    selectedLabelIndex: (index) {
                      setState(() {
                        _tabTextIconIndexSelected = index;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: heightInPercent(3, context),
            ),
            Text(
              "Selected sex : ${_listGenderText[_tabTextIconIndexSelected]} ",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: heightInPercent(3, context),
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: heightInPercent(3, context),
            ),
            Text(
              "With Icon Only ",
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Select your sex : ",
                    style: TextStyle(fontSize: 20),
                  ),
                  FlutterToggleTab(
                    width: 40,
                    borderRadius: 15,
                    initialIndex: _tabIconIndexSelected,
                    selectedTextStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                    unSelectedTextStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    labels: _listGenderEmpty,
                    icons: _listIconTabToggle,
                    selectedLabelIndex: (index) {
                      setState(() {
                        _tabIconIndexSelected = index;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: heightInPercent(3, context),
            ),
            Text(
              "Selected sex index: $_tabIconIndexSelected ",
              style: TextStyle(fontSize: 20),
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: heightInPercent(3, context),
            ),
            Text(
              "Update selected programmatically  ",
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Select your sex : ",
                    style: TextStyle(fontSize: 20),
                  ),
                  FlutterToggleTab(
                    width: 90,
                    borderRadius: 15,
                    initialIndex: 0,
                    selectedIndex: _tabSelectedIndexSelected,
                    selectedTextStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                    unSelectedTextStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    labels: _listTextSelectedToggle,
                    selectedLabelIndex: (index) {
                      setState(() {
                        _tabSelectedIndexSelected = index;
                      });
                    },
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _tabSelectedIndexSelected = 2;
                      });
                    },
                    child: Text("Select C"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: heightInPercent(3, context),
            ),
            Text(
              "Selected sex index: $_tabIconIndexSelected ",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
