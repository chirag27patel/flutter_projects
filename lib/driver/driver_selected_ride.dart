import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DriverSelectedRide extends StatefulWidget {
  const DriverSelectedRide({Key? key}) : super(key: key);

  @override
  State<DriverSelectedRide> createState() => _DriverSelectedRideState();
}

class _DriverSelectedRideState extends State<DriverSelectedRide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(FontAwesomeIcons.solidUser,size: 35,color: Color(0xff383838),),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Customer Name" , style: TextStyle(fontSize: 14,),),
                      Text("Chirag Patel" , style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                    ],
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
