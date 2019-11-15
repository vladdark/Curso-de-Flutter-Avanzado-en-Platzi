import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:platzi_trips_app/place/ui/screens/home_trips.dart';
import 'package:platzi_trips_app/place/ui/screens/search_trips.dart';
import 'package:platzi_trips_app/user/ui/screens/profile_trips.dart';

class PlatziTripsCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.indigo),
              title: Text("")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.indigo),
              title: Text("")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.indigo),
              title: Text("")
            ),
          ]
        ),
        tabBuilder: (BuildContext context, int index) {
          var view;
          switch (index) {
            case 1:
              view = SearchTrips();
              break;
            case 2:
              view = ProfileTrips();
              break;
            default:
              view = HomeTrips();
          }

          return CupertinoTabView(
            builder: (BuildContext context) => view,
          );

        },
      ),
    );
  }

}