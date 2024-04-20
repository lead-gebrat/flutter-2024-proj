
import 'package:flutter/material.dart';
import 'appointments.dart';
import 'booking.dart';
import 'home.dart';
import 'home_bf_login.dart';

void main() {
  runApp(zemnanit());
  // runApp(StatelessWidget1(title: "Scaffold Widget"));
}
class zemnanit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _zemnanit(),
      routes: {
        '/home': (context) => Home(),
        '/salons': (context) => zemnanit(),
        '/appointments': (context) => MyAppointments(),
        '/logout': (context) => MyApp(),
      },
    );
  }
}
class _zemnanit extends StatefulWidget {
  @override
  __zemnanit createState() => __zemnanit();
}
class __zemnanit extends State<_zemnanit> {
int _selectedIndex = 1;

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
      routes: {
        '/home': (context) => Home(),
        '/salons': (context) => zemnanit(),
        '/appointments': (context) => zemnanitDrop(),
        '/logout': (context) => MyApp(),
      },
      home: Scaffold(
      backgroundColor: Color(0xFFF1CFC3),
      body: SingleChildScrollView(
        child:Container(
          
          child: Center(
          
            child: Column(
              children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(50,40,50,20),
                child: TextField(
                
                    onChanged: (text) {
                      // Handle text changes
                    },
                    decoration: InputDecoration(
                      labelText: 'Search for a salon',
                      hintText: 'Zemnanit beauty Salon',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0)
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      
                    ),
                    controller: TextEditingController(),
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5,50,5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("View all"),
                    Icon( 
                      Icons.arrow_right
                    )
                  ],
                ),
              ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/img1.jpg', width: 100, height: 100,),
                            Text('Zoma Beauty Salon'),
                            Row(
                              children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.red,
                                size: 20,
                              ),
                              Text("4 kilo, Addis Ababa"),
                              
                            ],      
                        ),
                        Builder(
                          builder: (context) {
                            return ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => zemnanitDrop(), // Navigate to the second page
                                              ),
                                            );
                                           
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color.fromARGB(255, 176, 55, 11), // Background color
                                             textStyle: TextStyle(
                                              color: Colors.white
                                             ),// Text color
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10), // Border radius
                                            ),
                                          ),
                                          child: Text('Book Here',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),),
                                        );
                          }
                        ),
                            
                            
                        ],),
                      ),
                      ),
                    Card(
                       color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Image.asset('assets/img1.jpg', width: 100, height: 100,),
                            Text('Zoma Beauty Salon'),
                            Row(
                              children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.red,
                                size: 20,
                              ),
                              Text("4 kilo, Addis Ababa"),
                              
                            ],      
                        ),
                        Builder(
                          builder: (context) {
                            return ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => zemnanitDrop(), // Navigate to the second page
                                              ),
                                            );
                                           
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color.fromARGB(255, 176, 55, 11), // Background color
                                             textStyle: TextStyle(
                                              color: Colors.white
                                             ),// Text color
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10), // Border radius
                                            ),
                                          ),
                                          child: Text('Book Here',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),),
                                        );
                          }
                        ),
                            
                        ],),
                      ),
                                  ),
                  ],
                ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Image.asset('assets/img1.jpg', width: 100, height: 100,),
                            Text('Zoma Beauty Salon'),
                            Row(
                              children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.red,
                                size: 20,
                              ),
                              Text("4 kilo, Addis Ababa"),
                              
                            ],      
                        ),
                        Builder(
                          builder: (context) {
                            return ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => zemnanitDrop(), // Navigate to the second page
                                              ),
                                            );
                                           
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color.fromARGB(255, 176, 55, 11), // Background color
                                             textStyle: TextStyle(
                                              color: Colors.white
                                             ),// Text color
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10), // Border radius
                                            ),
                                          ),
                                          child: Text('Book Here',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),),
                                        );
                          }
                        ),
                            
                            
                        ],),
                      ),
                      ),
                    Card(
                       color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Image.asset('assets/img1.jpg', width: 100, height: 100,),
                            Text('Zoma Beauty Salon'),
                            Row(
                              children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.red,
                                size: 20,
                              ),
                              Text("4 kilo, Addis Ababa"),
                              
                            ],      
                        ),
                        Builder(
                          builder: (context) {
                            return ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => zemnanitDrop(), // Navigate to the second page
                                              ),
                                            );
                                           
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color.fromARGB(255, 176, 55, 11), // Background color
                                             textStyle: TextStyle(
                                              color: Colors.white
                                             ),// Text color
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10), // Border radius
                                            ),
                                          ),
                                          child: Text('Book Here',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),),
                                        );
                          }
                        ),
                            
                        ],),
                      ),
                                  ),
                  ],
                ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Image.asset('assets/img1.jpg', width: 100, height: 100,),
                            Text('Zoma Beauty Salon'),
                            Row(
                              children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.red,
                                size: 20,
                              ),
                              Text("4 kilo, Addis Ababa"),
                              
                            ],      
                        ),
                        Builder(
                          builder: (context) {
                            return ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => zemnanitDrop(), // Navigate to the second page
                                              ),
                                            );
                                           
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color.fromARGB(255, 176, 55, 11), // Background color
                                             textStyle: TextStyle(
                                              color: Colors.white
                                             ),// Text color
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10), // Border radius
                                            ),
                                          ),
                                          child: Text('Book Here',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),),
                                        );
                          }
                        ),
                            
                            
                        ],),
                      ),
                      ),
                    Card(
                       color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Image.asset('assets/img1.jpg', width: 100, height: 100,),
                            Text('Zoma Beauty Salon'),
                            Row(
                              children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.red,
                                size: 20,
                              ),
                              Text("4 kilo, Addis Ababa"),
                              
                            ],      
                        ),
                        Builder(
                          builder: (context) {
                            return ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => zemnanitDrop(), // Navigate to the second page
                                              ),
                                            );
                                           
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color.fromARGB(255, 176, 55, 11), // Background color
                                             textStyle: TextStyle(
                                              color: Colors.white
                                             ),// Text color
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10), // Border radius
                                            ),
                                          ),
                                          child: Text('Book Here',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),),
                                        );
                          }
                        ),
                            
                        ],),
                      ),
                                  ),
                  ],
                ),
              ] 
                          )
                      ),
          ]
            )   
            ),
      ),),
      
                
               
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
      ),
    );
  }
  
  }
  

