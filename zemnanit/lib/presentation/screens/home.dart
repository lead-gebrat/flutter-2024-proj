// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'appointments.dart';
import 'booking.dart';
import 'salons.dart';
import 'home_bf_login.dart';
// import 'package:flutter/widgets.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _Home(),
      routes: {
        '/home': (context) => Home(),
        '/salons': (context) => zemnanit(),
        '/appointments': (context) => MyAppointments(),
        '/logout': (context) => MyApp(),
      },
    );
  }
}
class _Home extends StatefulWidget {
  const _Home({super.key});

  @override
  State<_Home> createState() => _HomeState();
}

class _HomeState extends State<_Home> {
  int _selectedIndex = 0;

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
    
    return MaterialApp(
      
    home: Scaffold(
      backgroundColor: Color(0xFFF1CFC3),
      
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget> [ 
            Icon(Icons.cut,color: Colors.red, size: 35.0,),
            Text("Zemnanit Beauty Salon", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            
          ],
        ),
      ),
      body: Container(
        // color: Color.fromARGB(255, 255, 205, 223),
        child: Column(
          children: [
            Stack(
              children: [
                Image(image: AssetImage("assets/zemnanit.jpg"),
                ),
                Positioned(
                  top: 170,
                  left: 80,
                  child: RichText(
                    text: TextSpan(
                    text: "Welcome to ", 
                    style: TextStyle(
                      color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: "Zemnanit",
                        style: TextStyle( color: Colors.pink, fontSize: 36, fontWeight: FontWeight.bold)
                      )
                    ]
                  )
                  )),
                Positioned(
                  top: 220,
                  left: 140,
                  child: Text("Beauty Salons!",style: TextStyle( fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),),
                ),
              ],
            ), SizedBox(height: 60.0,),
            Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Color.fromARGB(255, 249, 245, 245),
              ),
              child: TextButton.icon(
                onPressed: ()=>{
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => zemnanit(), // Navigate to the second page
                    ),
                  )
                }, 
              label: Text("Get Started", style: TextStyle(fontSize: 25 , color: Colors.purple, fontWeight: FontWeight.bold),),
              icon: Icon(Icons.play_arrow, size: 30,),
              ),
            )
          ],
        ),
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
    )
    );
  }
}