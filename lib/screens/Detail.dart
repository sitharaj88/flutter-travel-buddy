import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailState();
  }
}

class DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Image.asset("travel_banner.jpg"),
            Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              width: double.infinity,
              height: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 3,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            header(),
                            SizedBox(
                              height: 180,
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                              child: Text(
                                "Sky Land",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Str City, Thailand",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 4,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(50),
                                bottom: Radius.circular(50))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                item("Distance", "23 Km", Icons.location_on,
                                    Color(0xffb2ebf2), Color(0xff0097a7)),
                                item("Temperature", "20 \u2103", Icons.wb_sunny,
                                    Color(0xfff8bbd0), Color(0xffad1457)),
                                item("07k+ Reviews", "4.5", Icons.star,
                                    Color(0xffbbdefb), Color(0xff0d47a1))
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text("About"),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
                              "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                              " Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.",
                              style: TextStyle(height: 1.5),
                            ),
                            SizedBox(
                              height: 65.0,
                            ),
                            Container(
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "\$120",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        padding: EdgeInsets.all(10.0),
                                        child: Text(
                                          "Book Now",
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                      ),
                                    )
                                  ],
                                ),
                                width: double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(15.0))),
                          ],
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: CircleAvatar(
            backgroundColor: Color(0x33ffffff),
            child: Container(
              padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
            radius: 20.0,
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.white,
          child: Container(
            child: Icon(
              Icons.favorite_outlined,
              color: Colors.red,
            ),
          ),
          radius: 20.0,
        )
      ],
    );
  }

  Widget item(String name, String value, IconData iconData, Color bgColor,
      Color iconColor) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            child: Icon(
              iconData,
              color: iconColor,
            ),
            decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
          SizedBox(height: 5),
          Text(
            value,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            name,
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
