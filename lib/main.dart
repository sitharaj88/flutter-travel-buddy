import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_buddy/screens/Detail.dart';
import 'package:travel_buddy/screens/Home.dart';

void main() {
  runApp(TravelBuddy());
}

class TravelBuddy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return MaterialApp(home: Home(), debugShowCheckedModeBanner: false);
  }
}
