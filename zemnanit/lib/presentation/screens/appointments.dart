// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// import 'Landing_page.dart';
import 'home.dart';
import 'home_bf_login.dart';
import 'salons.dart';

void main() {
  runApp(MaterialApp(home: MyAppointments()));
}
class MyAppointments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _MyAppointments(),
      routes: {
        '/home': (context) => Home(),
        '/salons': (context) => zemnanit(),
        '/appointments': (context) => MyAppointments(),
        '/logout': (context) => MyApp(),
      },
    );
  }
}
class _MyAppointments extends StatefulWidget {
  @override
  __MyAppointments createState() => __MyAppointments();
}
class __MyAppointments extends State<_MyAppointments> {
  // const _MyAppointments({super.key});
int _selectedIndex = 2;

  // Define lists of outlined and filled icons
  List<IconData> _icons = [
    Icons.home_outlined,
    Icons.spa_outlined,
    Icons.event_outlined,
    Icons.logout_outlined,
  ];

  List<IconData> _selectedIcons = [
    Icons.home,
    Icons.spa,
    Icons.event,
    Icons.logout,
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigating to the corresponding screen based on the selected index
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/home');
        break;
      case 1:
        Navigator.pushNamed(context, '/salons');
        break;
      case 2:
        Navigator.pushNamed(context, '/appointments');
        break;
      case 3:
        Navigator.pushNamed(context, '/logout');
        break;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            Icon(
            Icons.cut,
            color: Colors.red,
          ),
          
          Text('Zemnanit Beauty Salons',
          style: TextStyle(fontWeight: FontWeight.bold),),
          
          
          ],)
        ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 0 ? _selectedIcons[0] : _icons[0]),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 1 ? _selectedIcons[1] : _icons[1]),
            label: 'Salons',
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 2 ? _selectedIcons[2] : _icons[2]),
            label: 'Appointments',
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 3 ? _selectedIcons[3] : _icons[3]),
            label: 'Log Out',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red[400],
        unselectedItemColor: Colors.black, // Color for unselected icons
        onTap: _onItemTapped,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            children: [
              Text(
                'My Appointments',
                style: TextStyle(
                    color: Colors.red[400],
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                      padding: EdgeInsets.all(20),
                      color: Colors.deepOrange[100],
                      child: Row(children: [
                        Container(
                          height: 140,
                          width: 100,
                          child: Image.asset('assets/hair1.jpg',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mamunesh Hair Salon',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(Icons.location_on, color: Colors.red[400]),
                                Text('Summit, woji',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    )),
                              ],
                            ),
                            Text("    8:00-9:00 PM"),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Edit',
                                        style: TextStyle(
                                          color: Colors.red[400],
                                        ))),
                                //
                                SizedBox(
                                  width: 10.0,
                                ),
                                //
                                ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Delete',
                                        style: TextStyle(
                                          color: Colors.red[400],
                                        ))),
                              ],
                            )
                          ],
                        )
                      ])),
                ),
              )
            ],
          ),
        ),
      ),
      
    );
  }
}
