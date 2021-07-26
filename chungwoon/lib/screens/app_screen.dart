import 'package:flutter/material.dart';
import 'home_screen.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({Key? key}) : super(key: key);
  @override
  _AppScreenState createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  late int _currentPageIndex;

  void initState() {
    super.initState();
    _currentPageIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyWidget(),
      bottomNavigationBar: _bottomNavigationBarWidget(),
    );
  }

  Widget _bodyWidget() {
    switch (_currentPageIndex) {
      case 0: //home
        return Center(
          child:Text('홈')
        );
      case 1:
        return Center(
          child: Text('루틴'),
        );
      case 2:
        return Center(
          child: Text('히스토리'),
        );
      case 3:
        return Center(
          child: Text('설정'),
        );
    }
    return Container();
  }

  BottomNavigationBarItem _bottomNavigationBarItem(
      String iconName, String label) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 5.0),
        // child: Image.asset(
        //   "assets/png/${iconName}_off.png",
        //   width: 22,
        ),
      // ),
      // activeIcon: Padding(
      //   padding: const EdgeInsets.only(bottom: 5.0),
        // child: Image.asset(
        //   "assets/png/${iconName}_on.png",
        //   width: 22,
        // ),
    //   ),
    //   label: label,
    );
  }

  Widget _bottomNavigationBarWidget() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        print(index);
        setState(() {
          _currentPageIndex = index;
        });
      },
      currentIndex: _currentPageIndex,
      selectedFontSize: 12,
      selectedItemColor: Colors.black,
      selectedLabelStyle: TextStyle(color: Colors.black),
      items: [
        _bottomNavigationBarItem("home", "홈"),
        _bottomNavigationBarItem("routine", "루틴"),
        _bottomNavigationBarItem("history", "히스토리"),
        _bottomNavigationBarItem("setting", "설정"),
      ],
    );
  }
}
