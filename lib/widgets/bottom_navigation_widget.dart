import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:my_wallet/screens/home_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int selectedPos = 0;

  List<TabItem> tabItems = List.of([
    new TabItem(Icons.apps, "", Color(0xff153564)),
    new TabItem(Icons.center_focus_weak, "", Color(0xff153564)),
    new TabItem(Icons.pie_chart, "", Color(0xff153564)),
  ]);

  CircularBottomNavigationController _navigationController;

  @override
  void initState() {
    super.initState();
    selectedPos = 0;
    _navigationController = new CircularBottomNavigationController(selectedPos);
  }

  @override
  void dispose() {
    super.dispose();
    _navigationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: false,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 40),
              child: Container(
                color: Color(0xffe8f2fc),
                child: bodyContainer(),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: bottomNav(),
            ),
          ],
        ),
      ),
    );
  }

  Widget bodyContainer() {
    switch (selectedPos) {
      case 0:
        return HomeScreen();
        break;
      case 1:
        return HomeScreen();
        break;
      case 2:
        return HomeScreen();
        break;
      default:
        return HomeScreen();
        break;
    }
  }

  Widget bottomNav() {
    return CircularBottomNavigation(
      tabItems,
      selectedPos: 0,
      normalIconColor: Colors.grey,
      selectedIconColor: Colors.white,
      circleStrokeWidth: 0,
      controller: _navigationController,
      barHeight: 40,
      circleSize: 50,
      iconsSize: 24,
      barBackgroundColor: Colors.white,
      animationDuration: Duration(milliseconds: 300),
      selectedCallback: (int selectedPos) => setState(
        () {
          this.selectedPos = selectedPos;
        },
      ),
    );
  }
}
