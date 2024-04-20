import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zemnanit/presentation/screens/login_user.dart';
void main() {
  runApp(MaterialApp(
    // debugShowCheckedModeBanner: true,
    home: User(),
  ));
}

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  bool _obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1CFC3),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget> [ 
            Icon(Icons.cut, color: Colors.red, size: 35.0,),
            Text("Zemnanit Beauty Salon", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          // color: Color.fromARGB(255, 248, 217, 227),
          child: Column(children: <Widget> [
            SizedBox(height: 40.0,),
            Padding(
              padding: const EdgeInsets.fromLTRB(12.0,0,0,0),
              child: Row(
                children: [
                  Text("Full Name:", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(55.0 , 10.0, 55.0, 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              child: TextField( 
                decoration: InputDecoration(
                  labelText: "Enter your Full Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0), )
                ),
              ),
            ), SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.fromLTRB(12.0,0,0,0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Email:",textAlign: TextAlign.left, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(55.0 , 10.0, 55.0, 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              child: TextField( 
                decoration: InputDecoration(
                  labelText: "Enter your email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0), )
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.fromLTRB(12.0,0,0,0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Age:", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(55.0 , 10.0, 55.0, 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              child: TextField( 
                decoration: InputDecoration(
                  labelText: "Enter your age",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0), )
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.fromLTRB(12.0,0,0,0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Password:", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(55.0 , 10.0, 55.0, 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              child: TextField(
                obscureText: _obscurePassword,
                decoration: InputDecoration(
                  labelText: "  Enter your password",
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword ? Icons.visibility : Icons.visibility_off
                    ),
                    onPressed: (){
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  )
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.fromLTRB(12.0,0,0,0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Confirm Password:", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(55.0 , 10.0, 55.0, 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              child: TextField(
                obscureText: _obscurePassword,
                decoration: InputDecoration(
                  labelText: "  Enter your password",
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword ? Icons.visibility : Icons.visibility_off
                    ),
                    onPressed: (){
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  )
                ),
              ),
            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(200, 50), // Adjust the width and height values as needed
                        ),
                        child: Text(
                          "Create Account",
                          style: TextStyle(color:Color.fromARGB(255, 176, 55, 11),fontSize: 18.0),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ),
                          );
                        },
                      ),
            )
          ],),
        ),
      ),
    );
  }
}