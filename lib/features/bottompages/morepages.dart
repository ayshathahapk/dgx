// import 'package:dgx/main.dart';
// import 'package:flutter/material.dart';
//
// class Morepages extends StatefulWidget {
//   const Morepages({super.key});
//
//   @override
//   State<Morepages> createState() => _MorepagesState();
// }
//
// class _MorepagesState extends State<Morepages> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//      height: height*0.02,
//      width: width,
//      child: ListView(
//        children: [
//        <Widget>[
//      ListTile(
//      leading: Icon(Icons.newspaper), // Icon for 'New'
//       title: Text('News'),
//       onTap: () {
//         Navigator.push(context, MaterialPageRoute(builder: (context) => News(),));
//       },
//     ),
//        ],
//      ),
//     );
//   }
// }
//
//
//
import 'package:dgx/features/bottompages/aboutus.dart';
import 'package:dgx/features/bottompages/bankdetails.dart';
import 'package:flutter/material.dart';
import 'package:dgx/main.dart'; // Ensure this file contains the `News` widget or adjust the import accordingly.

class Morepages extends StatefulWidget {
  const Morepages({super.key});

  @override
  State<Morepages> createState() => _MorepagesState();
}

class _MorepagesState extends State<Morepages> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.18,
      width: width,
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person_pin_outlined), // Icon for 'New'
            title: Text('About Us'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => About()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.home), // Icon for 'New'
            title: Text('Bank Details'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Bankdetails()),
              );
            },
          ),
        ],
      ),
    );
  }
}
