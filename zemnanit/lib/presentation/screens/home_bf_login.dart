import 'package:flutter/material.dart';
import 'package:zemnanit/presentation/screens/create_user.dart';
import 'package:zemnanit/presentation/screens/login_user.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: {
        
        '/login': (context) => Login(),
        '/createAccount': (context) => User(),
      
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  // Define lists of outlined and filled icons
  List<IconData> _icons = [
    Icons.home_outlined,
    Icons.spa_outlined,
 
  ];

  List<IconData> _selectedIcons = [
    Icons.home,
    Icons.spa,
   
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigating to the corresponding screen based on the selected index
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/login');
        break;
      case 1:
        Navigator.pushNamed(context, '/createAccount');
        break;

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                onPressed: ()=>{}, 
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
            label: 'Login',
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 1 ? _selectedIcons[1] : _icons[1]),
            label: 'Create Account',
          ),
         
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red[400],
        unselectedItemColor: Colors.black, // Color for unselected icons
        onTap: _onItemTapped,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }
}
