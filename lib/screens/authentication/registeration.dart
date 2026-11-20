import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login.dart';

class RegisterationScreen extends StatefulWidget {
  const RegisterationScreen({super.key});

  @override
  State<RegisterationScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterationScreen> {
  bool hide = true;

  @override
  Widget build(BuildContext context) {
    String role = Get.arguments ?? 'Student';
    

    return Scaffold(
        body: Container(
         width: double.infinity,
         height: double.infinity,
         color:  Color(0xFFF6EEDD),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text("Register Here",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),),
              Text("Welcome back"),
              SizedBox(height: 30,),
              TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Full Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                      )
                    )
                  ),
              SizedBox(height: 15),
              TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                        )
                      )
                    ),
              SizedBox(height: 15),
              TextField(
                
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
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
              SizedBox(height: 25),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => LoginScreen());
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF0B4D2E),
                      padding: EdgeInsets.symmetric(vertical: 15)),
                  child: Text('Register',
                      style: TextStyle(
                        color: Colors.white, 
                        fontSize: 18)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}