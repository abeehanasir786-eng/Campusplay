import 'package:flutter/material.dart';
import 'login.dart';
import 'package:get/get.dart';


class ChooseRoleScreen extends StatelessWidget {
  const ChooseRoleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xFFF6EEDD),
        child: Padding(
          padding: EdgeInsets.all(20),
            child: Column(
             children: [
              Text(
                "Welcome to Campusplay",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
               ),
              Text("Choose Your Role"),
              SizedBox(height: 30),
              roleCard(context, "Student", "Explore & Participate", Icons.school),
              SizedBox(height: 15),
              roleCard(context, "Coach", "Train & Mentor", Icons.sports),
              SizedBox(height: 15),
              roleCard(context, "Admin", "Manage & Organize", Icons.admin_panel_settings),
            ],
          ),
        ),
      ),
    );
  }
}
  Widget roleCard(
    BuildContext context, 
    String role, 
    String description, 
    IconData icon) {
    return GestureDetector(
      onTap: () {
        Get.to(() => LoginScreen(), arguments: role);
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Icon(icon, size: 40, color: Color(0xFF0B4D2E)),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  role,
                  style: TextStyle(
                    fontSize: 20, 
                    fontWeight: FontWeight.bold),
                ),
                Text(description),
              ],
            ),
          ],
        ),
      ),
    );
  }
