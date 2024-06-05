import 'package:dgx/features/bottompages/news.dart';
import 'package:dgx/features/bottompages/morepages.dart';
import 'package:dgx/features/bottompages/ratealert.dart';
import 'package:dgx/features/bottompages/spot.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  List pages = [
  Spot(),
  RateAlert(),
    News(),
  ];
  int currentIndex = 0;

  void _onNavigationBarTap(int index) {
    if (index == 3) {
      showModalBottomSheet(
        context: context,
        builder: (context) {
          return Morepages();
        },
      );
    } else {
      setState(() {
        currentIndex = index;
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: pages[currentIndex], // Display the current page based on the index
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.width * 0.25, // Correct height calculation
        decoration: BoxDecoration(
          // color: Colors.lightGreen[100],
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(MediaQuery.of(context).size.width * 0.12),
            topLeft: Radius.circular(MediaQuery.of(context).size.width * 0.12),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              offset: Offset.zero,
              spreadRadius: 2,
              blurRadius: 4,
            ),
          ],
        ),
        child: SalomonBottomBar(
          currentIndex: currentIndex,
            onTap: _onNavigationBarTap,
          items: [
            /// Spot Rate
            SalomonBottomBarItem(
              icon:Icon(Icons.bar_chart_outlined, size: 17, color: Color(0xFFBFA13A)),
              // icon: SvgPicture.asset("assets/images/home.svg"),
              // icon: SvgPicture.asset("assets/images/barcharticon.jpg"),
              title: Text(
                "Spot Rate",
                style: GoogleFonts.poppins(
                  color:Color(0xFFBFA13A),
                  fontWeight: FontWeight.w600,
                  fontSize: MediaQuery.of(context).size.width * 0.03,
                ),
              ),
              selectedColor: Colors.yellowAccent,
            ),

            /// Rate Alert
            SalomonBottomBarItem(
              icon:Icon(Icons.notifications_on, size: 17, color:Color(0xFFBFA13A)),
              // icon: SvgPicture.asset("assets/images/cart.svg"),
              title: Text(
                "Rate Alert",
                style: GoogleFonts.poppins(
                  color:Color(0xFFBFA13A),
                  fontWeight: FontWeight.w600,
                  fontSize: MediaQuery.of(context).size.width * 0.03,
                ),
              ),
              selectedColor: Colors.yellowAccent,
            ),

            /// News
            SalomonBottomBarItem(
              icon:Icon(Icons.newspaper, size: 17, color:Color(0xFFBFA13A)),

              // icon: SvgPicture.asset("assets/images/notification.svg"),
              title: Text(
                "News",
                style: GoogleFonts.poppins(
                  color: Color(0xFFBFA13A),
                  fontWeight: FontWeight.w600,
                  fontSize: MediaQuery.of(context).size.width * 0.03,
                ),
              ),
              selectedColor: Colors.yellowAccent,
            ),

            /// More
            SalomonBottomBarItem(
              icon:Icon(Icons.more, size: 17, color:Color(0xFFBFA13A)),
              // icon: SvgPicture.asset("assets/images/profile.svg"),
              title: Text(
                "More",
                style: GoogleFonts.poppins(
                  color:Color(0xFFBFA13A),
                  fontWeight: FontWeight.w600,
                  fontSize: MediaQuery.of(context).size.width * 0.03,
                ),
              ),
              selectedColor: Colors.yellowAccent,
            ),
          ],
        ),
      ),
    );
  }
}

