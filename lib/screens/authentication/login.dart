import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'registeration.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  bool hide = true;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:  Color(0xFFF6EEDD),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color:  Color(0xFFF6EEDD),
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              "Login",
              style: TextStyle(
                fontSize: 24, 
                fontWeight: FontWeight.bold),
            ),
           Text("Welcome Back"),
           SizedBox(height: 30),
            TextField(
              controller: email,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: password,
              obscureText: hide,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.visibility),
                  onPressed: () {
                    setState(() {
                      hide = !hide;
                    });
                  },
                ),
              ),
            ),
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text("Forgot Password?"),
                ),
              ),
            SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF0B4D2E),
                ),
                child: Text("Login"),
              ),
            ),
            SizedBox(height: 15),
              Text("OR"),
              SizedBox(height: 15),
              SizedBox(
                width: 400,
                height: 40,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black
                  ),
                  child: Text("Continue with Google"),
                ),
              ),
              TextButton(
                onPressed: () {
                  Get.to(() => RegisterationScreen());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have account?" ),
                    SizedBox(width: 5,),
                    Text("Register",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      
                    ),)
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}