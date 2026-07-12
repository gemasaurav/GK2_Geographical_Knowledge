import 'package:flutter/material.dart';

void main() => runApp(GK2App());

class GK2App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, scaffoldBackgroundColor: Color(0xFF000814)),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background: Static representation of the Rotating Globe
          Center(child: Icon(Icons.public, size: 300, color: Colors.blue.withOpacity(0.2))),
          
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('(GK)\u00B2', style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold, color: Colors.cyanAccent, letterSpacing: 5)),
                Text('GEOGRAPHICAL KNOWLEDGE', style: TextStyle(fontSize: 16, letterSpacing: 2, color: Colors.white70)),
                SizedBox(height: 100),
                
                // Hologram Plane Button
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => IndiaDetailScreen())),
                  child: Column(
                    children: [
                      Icon(Icons.airplanemode_active, size: 80, color: Colors.cyanAccent),
                      SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.cyanAccent),
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [BoxShadow(color: Colors.cyanAccent.withOpacity(0.3), blurRadius: 15)],
                        ),
                        child: Text("ENTER EXPLORER", style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class IndiaDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Incredible India"), backgroundColor: Colors.transparent),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Text("National Animal: Tiger", style: TextStyle(fontSize: 20)),
            Text("National Bird: Peacock", style: TextStyle(fontSize: 20)),
            Divider(color: Colors.cyanAccent),
            Text("Famous For:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Text("India is known for its diverse culture, the Himalayan ranges, and being the world's largest democracy."),
            // Add more list items for Districts and Provinces here
          ],
        ),
      ),
    );
  }
}
