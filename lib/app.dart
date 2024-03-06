import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metro_dwell/assessments/assessment.dart';
import 'package:metro_dwell/assets/asset.dart';
import 'package:metro_dwell/dashboard/dashboardPage.dart';

const Color darkBlue = Color.fromARGB(255, 1, 124, 255);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const BottomNavigationBarExample(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
        cardTheme: CardTheme(
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: darkBlue,
              width: 0.2,
            ),
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        useMaterial3: true,
      ),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    DashboardPage(),
    Asset(),
    Assessment()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const NavBar(
      //   imagePath: 'https://shorturl.at/jrFG6',
      // ),
      appBar: AppBar(
        title: const Center(
            child: Text(
          'METRO DWELL',
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: darkBlue,
        toolbarHeight: 50,
        // leading: Builder(
        //   builder: (BuildContext context) {
        //     return IconButton(
        //       icon: const Icon(Icons.menu),
        //       onPressed: () {
        //         Scaffold.of(context).openDrawer();
        //       },
        //       tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        //     );
        //   },
        // ),
        // actions: <Widget>[
        //   IconButton(
        //     icon: const Icon(Icons.add_alert),
        //     tooltip: 'Show Snackbar',
        //     onPressed: () {
        //       ScaffoldMessenger.of(context)
        //           .showSnackBar(const SnackBar(content: Text('notification')));
        //     },
        //   ),
        // ],
        // backgroundColor: const Color.fromARGB(179, 31, 78, 231),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(179, 123, 117, 117),
          boxShadow: [
            BoxShadow(
              color: Colors.black87,
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Divider(
              color: Colors.white,
              height: 0.5,
            ),
            BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              selectedItemColor: Colors.black87,
              unselectedItemColor: Colors.black87,
              elevation: 8.0,
              landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.black87,
                  ),
                  label: 'Home',
                  activeIcon: Icon(
                    Icons.home_filled,
                    color: darkBlue,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.store_outlined,
                    color: Colors.black87,
                  ),
                  label: 'Assets',
                  activeIcon: Icon(
                    Icons.store_rounded,
                    color: darkBlue,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.assignment_outlined,
                    color: Colors.black87,
                  ),
                  label: "Assessments",
                  activeIcon: Icon(
                    Icons.assignment,
                    color: darkBlue,
                  ),
                ),
              ],
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              showUnselectedLabels: true,
            ),
          ],
        ),
      ),
    );
  }
}
