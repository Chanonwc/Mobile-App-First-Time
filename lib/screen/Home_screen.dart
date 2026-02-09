import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constant/my_constant.dart';
import '../widget/Menu_profile.dart';
import 'profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    if (index == _selectedIndex) return;
    setState(() {
      _selectedIndex = index;
    });

    // ถ้ากดไอคอนโปรไฟล์ ให้ไปหน้า ProfileScreen
    if (index == 3) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const ProfileScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightBgColor,
      appBar: AppBar(
        centerTitle: true,
        actions: const [
          Icon(Icons.search, color: Color(0xFFB0B0B0), size: 24.0),
          SizedBox(width: 16),
          Icon(Icons.exit_to_app, color: Color(0xFFB0B0B0), size: 24.0),
          SizedBox(width: 16),
        ],
        title: Text('FC Barcelona', style: headerStyle),
        backgroundColor: LightBgColor,
        leading: const Icon(Icons.menu, color: Color(0xFFB0B0B0), size: 24.0),
      ),
      // ใช้ SingleChildScrollView เพื่อให้เลื่อนดูเมนูด้านล่างได้
      body: SingleChildScrollView(
        child: Column(
          children: [
            // const SizedBox(height: 20),
            // Text('Welcome to FC Barcelona', style: headerStyle),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Most Goal Scorers", style: headerStyle),
                const SizedBox(width: 16),
              ],
            ),
            // แก้ไข Row ให้เลื่อนได้ หรือใช้การจัดวางที่เหมาะสม
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  footballCard(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm5_R-6VvdFxeF0xG5b4acfaAgi32TXixCqw&s',
                    "F. Torres",
                    11,
                  ),
                  footballCard(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTY7YaEZ-mF2qX-8cvDSre6L1AsAS71EE5WTA&s',
                    "R. Lewandowski",
                    9,
                  ),
                  footballCard(
                    'https://platform.barcablaugranes.com/wp-content/uploads/sites/21/chorus/uploads/chorus_asset/file/25879052/2197230249.jpg?quality=90&strip=all&crop=0.0071002556092026%2C0%2C99.985799488782%2C100&w=2400',
                    "L. Yamale",
                    8,
                  ),

                  footballCard(
                    'https://platform.barcablaugranes.com/wp-content/uploads/sites/21/chorus/uploads/chorus_asset/file/25835207/2193579774.jpg?quality=90&strip=all&crop=0%2C0.018484288354898%2C100%2C99.96303142329&w=2400',
                    "Raphinha",
                    8,
                  ),

                  footballCard(
                    'https://ichef.bbci.co.uk/ace/standard/826/cpsprodpb/b61d/live/c2150440-c45b-11ef-a80e-9781d97af84e.jpg',
                    "D. Olmo",
                    6,
                  ),
                  footballCard(
                    "https://platform.barcablaugranes.com/wp-content/uploads/sites/21/2025/08/gettyimages-2229436918.jpg?quality=90&strip=all&crop=0%2C0.0060452182323729%2C100%2C99.987909563535&w=2400",
                    "F. Lopez",
                    4,
                  ),
                  footballCard(
                    "https://platform.barcablaugranes.com/wp-content/uploads/sites/21/2025/10/gettyimages-2237614794.jpg?quality=90&strip=all&crop=0.011676786548342%2C0%2C99.976646426903%2C100&w=2400",
                    'M. Rashford',
                    3,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 0),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Standings", style: headerStyle),
                const SizedBox(width: 16),
                standingRow(1, "FC Barcelona", 54),
                const Divider(
                  color: Colors.white12,
                  height: 1,
                  indent: 5,
                  endIndent: 15,
                ),
                standingRow(2, "Real Madrid", 51),
                const Divider(
                  color: Colors.white12,
                  height: 1,
                  indent: 5,
                  endIndent: 15,
                ),
                standingRow(3, "Atletico Madrid", 44),
                const Divider(
                  color: Colors.white12,
                  height: 1,
                  indent: 5,
                  endIndent: 15,
                ),
                standingRow(4, "Villarreal", 41),const Divider(
                  color: Colors.white12,
                  height: 1,
                  indent: 5,
                  endIndent: 15,
                ),
                 standingRow(5, "Espanyol", 34),const Divider(
                  color: Colors.white12,
                  height: 1,
                  indent: 5,
                  endIndent: 15,
                ),
              ],
            ),
            // ส่วนของเมนูที่เคยแยกไว้ นำมารวมที่นี่
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  Widget footballCard(String imageUrl, String name, int goalCount) {
    return Container(
      width: 160, // กำหนดความกว้างของการ์ด
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xFF0D2D44), // สีน้ำเงินเข้มแบบในรูป
        borderRadius: BorderRadius.circular(20), // ทำมุมโค้ง
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // ให้ตัวอักษรชิดซ้าย
        children: [
          // ส่วนรูปภาพ
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.network(
              imageUrl,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
              // กรณีรูปโหลดไม่ได้ ให้แสดงสีพื้นหลังรอ
              errorBuilder: (context, error, stackTrace) => Container(
                height: 100,
                color: Colors.grey,
                child: const Icon(Icons.sports_soccer, color: Colors.white),
              ),
            ),
          ),

          // ส่วนของชื่อและจำนวนประตู
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "$goalCount ประตู", // แสดงจำนวนประตู
                  style: const TextStyle(color: Colors.white70, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget standingRow(int rank, String teamName, int points) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      child: Row(
        children: [
          // ลำดับ (ใช้ SizedBox คุมความกว้างให้ตัวเลขตรงกัน)
          SizedBox(
            width: 30,
            child: Text(
              "$rank",
              style: TextStyle(
                color: rank == 1
                    ? Colors.amber
                    : Colors.white, // ที่ 1 ให้เป็นสีทอง
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),

          // ชื่อทีม (ใช้ Expanded เพื่อให้กินพื้นที่ที่เหลือ)
          Expanded(
            child: Text(
              teamName,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),

          // คะแนน
          Text(
            "$points pts",
            style: const TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNav() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(color: Colors.black26, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            backgroundColor: LightBgColor,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            selectedItemColor: LightBgColor2,
            elevation: 10,
            unselectedItemColor: Color(0xFFB0B0B0),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: "school",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "settings",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
