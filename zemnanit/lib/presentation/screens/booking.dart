import 'package:flutter/material.dart';
import 'appointments.dart';
import 'home.dart';
import 'home_bf_login.dart';
import 'salons.dart';
import 'login_user.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: zemnanitDrop()));
  // runApp(StatelessWidget1(title: "Scaffold Widget"));
}

class zemnanitDrop extends StatefulWidget {
  @override
  zemnanitt createState() => zemnanitt();
}

class zemnanitt extends State<zemnanitDrop> {
  String selectedValue = 'Shuruba';
  String selectedTime = '1PM';
  DateTime selectedDate = DateTime.now();
  TextEditingController fullName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController comment = TextEditingController();
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => Home(),
        '/salons': (context) => zemnanit(),
        '/appointments': (context) => MyAppointments(),
        '/logout': (context) => MyApp(),
      },
      home: Scaffold(
        backgroundColor: Color(0xFFF1CFC3),
        body: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 16, 30, 50),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: TextField(
                      onChanged: (text) {
                        String full_name = fullName.text;
                      },
                      decoration: InputDecoration(
                        labelText: 'Full Name',
                        hintText: 'Enter your full name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      controller: fullName,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: TextField(
                      onChanged: (text) {
                        // Handle text changes
                      },
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter your email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      controller: email,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Text(
                          'Choose a hair style: ',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      DropdownButton<String>(
                        value: selectedValue,
                        onChanged: (newValue) {
                          setState(() {
                            selectedValue = newValue!;
                          });
                        },
                        items: <DropdownMenuItem<String>>[
                          DropdownMenuItem<String>(
                            value: 'Shuruba',
                            child: Text('Shuruba'),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Kutirtir',
                            child: Text('Kutirtir'),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Publis',
                            child: Text('Publis'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Text(
                          'Select Time: ',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: DropdownButton<String>(
                          value: selectedTime,
                          onChanged: (newValue) {
                            setState(() {
                              selectedTime = newValue!;
                            });
                          },
                          items: <DropdownMenuItem<String>>[
                            DropdownMenuItem<String>(
                              value: '1PM',
                              child: Text('1PM'),
                            ),
                            DropdownMenuItem<String>(
                              value: '2PM',
                              child: Text('2PM'),
                            ),
                            DropdownMenuItem<String>(
                              value: '3PM',
                              child: Text('3PM'),
                            ),
                            DropdownMenuItem<String>(
                              value: '4PM',
                              child: Text('4PM'),
                            ),
                            DropdownMenuItem<String>(
                              value: '5PM',
                              child: Text('5PM'),
                            ),
                            DropdownMenuItem<String>(
                              value: '6PM',
                              child: Text('6PM'),
                            ),
                            DropdownMenuItem<String>(
                              value: '7PM',
                              child: Text('7PM'),
                            ),
                            DropdownMenuItem<String>(
                              value: '9PM',
                              child: Text('9PM'),
                            ),
                            DropdownMenuItem<String>(
                              value: '10PM',
                              child: Text('10PM'),
                            ),
                            DropdownMenuItem<String>(
                              value: '11PM',
                              child: Text('11PM'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Text(
                          'Select a date:',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: ElevatedButton(
                          onPressed: () async {
                            try {
                              final DateTime? picked = await showDatePicker(
                                context: context,
                                initialDate: selectedDate,
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2100),
                              );
                              if (picked != null && picked != selectedDate) {
                                setState(() {
                                  selectedDate = picked;
                                });
                              }
                            } catch (e) {
                              print('error selecting date: $e');
                            }
                          },
                          child: Text(
                            '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Row(
                          children: [
                            Text('Any Personal Request: '),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: TextField(
                          onChanged: (text) {
                            // Handle text changes
                          },
                          decoration: InputDecoration(
                            labelText: 'Comment',
                            hintText:
                                'Provide any specific instruction or additional comment',
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 28, horizontal: 12),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0)),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          controller: comment,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle button press
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                MyAppointments(), // Navigate to the second page
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(
                            255, 176, 55, 11), // Background color
                        textStyle: TextStyle(color: Colors.white), // Text color
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10), // Border radius
                        ),
                      ),
                      child: Text(
                        'Book',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ),
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.cut,
                  
                  color: Colors.red,
                ),
                Text(
                  'Zemnanit Beauty Salons',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                
              ],
            )),
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
