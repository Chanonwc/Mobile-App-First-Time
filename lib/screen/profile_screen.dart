import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constant/my_constant.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 3;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightBgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(height: 20),
            Stack(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    'https://external-preview.redd.it/lamine-yamal-will-sign-new-deal-at-barcelona-tomorrow-v0-QG07yuFJoyzR4DJxBXiEpWogc1eVj6GIaEqRuwPxKu4.jpg?width=1080&crop=smart&auto=webp&s=f5d55baf1e927587fd152c26ffed77a0f553da21',
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: LightBgColor2,
                    child: Icon(Icons.edit, size: 13, color: primaryColor),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text('Lamine Yamal', style: headerStyle),

            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: LightBgColor2),

              onPressed: () {},
              child: Text("Lamine.yamal@email.com", style: bodyStyle),
            ),

            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
              child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: LightBgColor2,
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.edit, color: primaryColor),
                    Text("Edit Profile", style: bodyStyle),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios, color: primaryColor),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
              child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: LightBgColor2,
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.lock_outline, color: primaryColor),
                    Text("Add Pin", style: bodyStyle),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios, color: primaryColor),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
              child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: LightBgColor2,
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.settings, color: primaryColor),
                    Text("Settings", style: bodyStyle),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios, color: primaryColor),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
              child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: LightBgColor2,
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.person_add, color: primaryColor),
                    Text("invite friends", style: bodyStyle),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios, color: primaryColor),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
              child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: LightBgColor2,
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.logout, color: Color.fromARGB(255, 255, 255, 0)),
                    Text(
                      "Logout",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 0),
                        fontFamily: GoogleFonts.oswald().fontFamily,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: LightBgColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: LightBgColor2,
        elevation: 10,
        unselectedItemColor: Color(0xFFB0B0B0),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: "school"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "settings",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
        ],
      ),
    );
  }
}
