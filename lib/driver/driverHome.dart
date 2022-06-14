import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sejaltravels_2022/const/const.dart';
import 'package:sejaltravels_2022/driver/driver_diesel_data.dart';
import 'package:sejaltravels_2022/driver/driver_logbook.dart';


class DriverHome extends StatefulWidget {
  const DriverHome({Key? key}) : super(key: key);

  @override
  _DriverHomeState createState() => _DriverHomeState();
}

class _DriverHomeState extends State<DriverHome> {
  int _selectedIndex = 0;
  double fontsize = 14.0;


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<BottomNavigationBarItem> BottomNavigationItem = [
    const BottomNavigationBarItem(

      icon: Icon(
        Icons.home,

        color: unselectedIconColor,
      ),
      activeIcon: Icon(
        Icons.home,
        color: Colors.white,
      ),
      label: 'Home',

    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.history,
        color: unselectedIconColor,

      ),
      activeIcon: Icon(
        Icons.history,
        color: Colors.white,
      ),
      label: 'History',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.book,
        color: unselectedIconColor,

      ),
      activeIcon: Icon(
        Icons.book,
        color: Colors.white,
      ),
      label: 'Logbook',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.local_gas_station,
        color: unselectedIconColor,

      ),
      activeIcon: Icon(
        Icons.local_gas_station,
        color: Colors.white,
      ),
      label: 'Diesel',
    ),
  ];

  static const List<Widget> _pages = [
    DriverDiesel(),
    DriverTrips(),
    DriverLogbook(),
    DriverDiesel(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      bottomNavigationBar: BottomNavigationBar(
        items: BottomNavigationItem,
        backgroundColor: LableColor,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        selectedItemColor: Colors.white,
        unselectedItemColor:unselectedIconColor,
        currentIndex: _selectedIndex,
        iconSize: 26,
        showUnselectedLabels: true,
        selectedFontSize: fontsize,
        unselectedFontSize: fontsize,
        selectedLabelStyle: const TextStyle(color: Colors.indigoAccent,fontSize: 18),


      ),
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: LableColor,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
    );
  }
}

class DriverTrips extends StatelessWidget {
  const DriverTrips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        padding: const EdgeInsets.all(8.0),
        itemBuilder: (index, context) {
          return DriverHomeList(
            carType: "Swift",
            destination: "Mumbai Airport",
            rate: "14 rs",
            tripType: "One way",
          );
        });
  }
}



//list design
class DriverHomeList extends StatelessWidget {
  String carType = "";
  String destination = "";

  String rate = "";
  String tripType = "";

  DriverHomeList(
      {required this.carType,
      required this.destination,
      required this.rate,
      required this.tripType});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        // border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Car And Price Widget
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(FontAwesomeIcons.car,
                      size: 35, color: unselectedIconColor),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      carType,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: unselectedIconColor),
                    ),
                  ),
                  Column(
                    children: const [
                       Text(
                        "Final cost",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 8.0),
                        child: Text(
                          "5000",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: unselectedIconColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 0.5,
            width: double.infinity,
            color: Colors.grey,
            margin: const EdgeInsets.only(bottom: 10),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                const Icon(FontAwesomeIcons.locationDot,
                    size: 18, color: unselectedIconColor),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      destination,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: unselectedIconColor),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "12:30 PM",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: DottedLine(
                  dashLength: 10,
                  dashGapLength: 3,
                  lineThickness: 2,
                  direction: Axis.vertical,
                  dashColor: Colors.grey,
                  dashGapColor: Colors.white,
                  lineLength: 50,
                ),
              ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 25, top: 10, left: 10, right: 10),
            child: Row(
              children: [
                Icon(FontAwesomeIcons.locationDot,
                    size: 18, color: unselectedIconColor),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      destination,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: unselectedIconColor),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "12:30 PM",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
