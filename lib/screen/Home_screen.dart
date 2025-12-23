import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, // Ensures the title is centered on all platforms
        actions: const [
          Icon(Icons.search, color: Colors.blue, size: 24.0),
          SizedBox(width: 16),
          Icon(Icons.exit_to_app, color: Colors.blue, size: 24.0),
          SizedBox(width: 16),
        ],
        title: const Center(child:Text("Demo Mobile App")),
        leading: const Icon(
          Icons.menu,
          color: Color.fromARGB(224, 0, 73, 141),
          size: 24.0,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Firstline",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 16),
            const Icon(
              Icons.settings,
              size: 36,
              color: Colors.blue,
            ),
            const SizedBox(height: 16),
            Center(
              child: Row(
                // This aligns your boxes horizontally
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.red,
                    child: const Center(child: Text("Hello")),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.blue,
                    child: const Center(child: Text("Hello")),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.green,
                    child: const Center(child: Text("Hello")),
                  ),
                ],
              ),
            ),
          

           const SizedBox(height: 16),
           const CircleAvatar(
              radius: 65,
              backgroundColor: Colors.red, // Acts as a border
              child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                  'https://external-preview.redd.it/lamine-yamal-will-sign-new-deal-at-barcelona-tomorrow-v0-QG07yuFJoyzR4DJxBXiEpWogc1eVj6GIaEqRuwPxKu4.jpg?width=1080&crop=smart&auto=webp&s=f5d55baf1e927587fd152c26ffed77a0f553da21',
                ),
            ),
           ),
            ],
        ),
      ),
    
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.green,
        items:const[ 
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: "school"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "settings"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
        ]),    
    );
  }
}