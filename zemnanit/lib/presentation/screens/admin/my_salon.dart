// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:zemnanit/presentation/screens/admin/add_salon.dart';
import 'package:zemnanit/presentation/screens/admin/login_admin.dart';
import 'package:zemnanit/presentation/screens/admin/manage_user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MySalon(),
      routes: {
        '/login': (context) => LoginAdmin(),
        '/addSalon': (context) => AddSalon(),
        '/manageUser': (context) => Users(),
        '/manageSalon': (context) => MySalon(),
      },
    );
  }
}

class MySalon extends StatefulWidget {
  const MySalon({super.key});

  @override
  State<MySalon> createState() => _MySalonState();
}

class _MySalonState extends State<MySalon> {
  int _selectedIndex = 0;

  List<IconData> _icons = [
    Icons.add_outlined,
    Icons.spa_outlined,
    Icons.event_outlined,
    Icons.logout_outlined,
  ];

  List<IconData> _selectedIcons = [
    Icons.add,
    Icons.spa,
    Icons.event,
    Icons.logout,
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/addSalon');
        break;
      case 1:
        Navigator.pushNamed(context, '/manageSalon');
        break;
      case 2:
        Navigator.pushNamed(context, '/manageUser');
        break;
      case 3:
        Navigator.pushNamed(context, '/login');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        shadowColor: Colors.grey,
        elevation: 2.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.cut, color: Colors.red[400]),
            SizedBox(width: 8.0),
            Text(
              'Zemnanit Beauty Salons',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
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
                        height: 100,
                        width: 100,
                        child:
                            Image.asset('assets/hair2.jpg', fit: BoxFit.cover),
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
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              _selectedIndex == 0 ? _selectedIcons[0] : _icons[0],
              color: Colors.black,
            ),
            label: 'Add Salon',
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 1 ? _selectedIcons[1] : _icons[1]),
            label: 'Manage Salons',
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 2 ? _selectedIcons[2] : _icons[2]),
            label: 'Manage Users',
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 3 ? _selectedIcons[3] : _icons[3]),
            label: 'Log Out',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black, // Color for unselected icons
        onTap: _onItemTapped,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }
}
