import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'Detail.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outlined), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "")
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20.0, 0, 0, 0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 20.0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Where",
                  style: TextStyle(color: Colors.lightBlue, fontSize: 28),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  " Would you like to go?",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50.0,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 8,
                          child: TextField(
                            autofocus: false,
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.fromLTRB(20, 5, 0, 0),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "Search a Place",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Color(0x33000000)),
                                    borderRadius: BorderRadius.circular(25.0)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Color(0x33000000)),
                                    borderRadius: BorderRadius.circular(25.0))),
                          )),
                      Expanded(
                          flex: 2,
                          child: Center(
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(15.0)),
                              child: Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                SizedBox(height: 50.0),
                vacationItems1("Recently Viewed"),
                SizedBox(
                  height: 30.0,
                ),
                vacationItems2("Popular locations"),
                SizedBox(
                  height: 20.0,
                ),
                vacationItems2("Popular locations"),
                SizedBox(
                  height: 20.0,
                ),
                vacationItems2("Popular locations")
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget vacationItems1(String title) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.black87, fontSize: 18.0),
                ),
                Text(
                  "See all",
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 77.77,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [vacationItem1(), vacationItem1(), vacationItem1()],
            ),
          )
        ],
      ),
    );
  }

  Widget vacationItem1() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Detail()),
        );
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
        width: 138,
        height: 77.77,
        child: Stack(
          children: [
            ClipRRect(
              child: Image.asset("vacation_1_small.jpg"),
              borderRadius: BorderRadius.circular(10.0),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0x44000000),
              ),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Amazon beach",
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  ),
                  SizedBox(
                    height: 1.0,
                  ),
                  Text(
                    "Columbia",
                    style: TextStyle(color: Colors.white, fontSize: 9),
                  )
                ],
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0), color: Colors.white),
      ),
    );
  }

  Widget vacationItems2(String title) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.black87, fontSize: 18.0),
                ),
                Text(
                  "See all",
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 140,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                vacationItem2(),
                vacationItem2(),
                vacationItem2(),
                vacationItem2(),
                vacationItem2(),
                vacationItem2()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget vacationItem2() {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              child: Image.asset("vac_banner_1.png"),
              borderRadius: BorderRadius.circular(10.0),
            ),
            SizedBox(height: 8.0),
            Text(
              "Amazon beach",
              style: TextStyle(color: Colors.black87, fontSize: 11),
            ),
            SizedBox(
              height: 3.0,
            ),
            Text(
              "Columbia",
              style: TextStyle(color: Colors.blue, fontSize: 9),
            )
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Detail()),
        );
      },
    );
  }

  void onVacationItemSelected() {}
}
