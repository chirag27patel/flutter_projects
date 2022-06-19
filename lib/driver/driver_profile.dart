import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sejaltravels_2022/components/custom_components.dart';
import 'package:sejaltravels_2022/const/const.dart';
import 'package:sejaltravels_2022/driver/driver_car_document_list.dart';

class DriverProfile extends StatefulWidget {
  const DriverProfile({Key? key}) : super(key: key);



  @override
  State<DriverProfile> createState() => _DriverProfileState();
}

class _DriverProfileState extends State<DriverProfile> with SingleTickerProviderStateMixin{
  String imageUrl =
      "https://scontent.fstv3-1.fna.fbcdn.net/v/t1.6435-9/131121279_3627834227255377_3270597907143300078_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=174925&_nc_ohc=QLQSjH0TrPcAX9F78Bl&_nc_ht=scontent.fstv3-1.fna&oh=00_AT-m_A0Q2feFnmYBvitmLrMEn7itGa8A_ZGgO-PfoOuG4g&oe=62D1BC2A";

   late Animation _animation;
   late AnimationController _animationController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2000),
    );

    _animation = CurvedAnimation(parent: _animationController, curve: Curves.elasticOut);
    _animationController.forward();

    _animation.addListener(() {
      setState((){});

    });
  }




  @override
  void dispose() {
    _animationController.dispose(); // you need this
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: LableColor,
      ),
      body: Container(
        margin: EdgeInsets.all(_animation.value*16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: NetworkImage(imageUrl))),
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  DriverHomeLabels(
                    driverHomelabel: "Owner Name",
                    driverHomeLabelDetails: "Chirag Patel",
                    iconData: Icons.person,
                  ),
                  DriverHomeLabels(
                    driverHomelabel: "Driver Name",
                    driverHomeLabelDetails: "Chandresh Saddiwala",
                    iconData: FontAwesomeIcons.users,
                  ),
                ]),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              child: Column(
                children: [
                  Column(
                    children: [
                      DriverHomeLabels2(
                        driverHomelabel: "Car Number",
                        driverHomeLabelDetails: "GJ-05-GF-8884",
                        iconData: FontAwesomeIcons.moneyCheck,
                      ),
                      DriverHomeLabels2(
                        driverHomelabel: "Car Type",
                        driverHomeLabelDetails: "Innova Crysta",
                        iconData: FontAwesomeIcons.car,
                      ),
                      DriverHomeLabels2(
                        driverHomelabel: "Duty Type",
                        driverHomeLabelDetails: "Monthly",
                        iconData: FontAwesomeIcons.bookOpen,
                      ),
                      DriverHomeLabels2(
                        driverHomelabel: "Department",
                        driverHomeLabelDetails: "C.S",
                        iconData: FontAwesomeIcons.buildingUser,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10,left: 10,top: 20),
              child: Material(
                borderRadius: BorderRadius.circular(5.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: LableColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Edit Details".toUpperCase(),
                          style: TextStyle(
                              fontSize: 14,
                              color: LableColor,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: 20,
                        ),
                        Icon(
                          FontAwesomeIcons.pen,
                          color: LableColor,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Material(
                color: LableColor,
                borderRadius: BorderRadius.circular(5.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DriverCarDocumentList()));
                  },
                  child: Container(
                    height: 45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Upload Documents".toUpperCase(),
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: 20,
                        ),
                        Icon(
                          FontAwesomeIcons.fileCircleCheck,
                          color: Colors.white,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
