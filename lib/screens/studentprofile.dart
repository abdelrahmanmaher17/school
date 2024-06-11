
import 'package:flutter/material.dart';


class Studentprofile extends StatelessWidget {
  const Studentprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      child: Image.asset("assets/images/students.png" ,),
                      radius: 50,
                      //backgroundImage: ,// Replace with actual image URL
                    ),
                    SizedBox(height: 8),
                    Text(
                      'student name',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text('student ID'),
                    SizedBox(height: 8),
                    OutlinedButton(
                      onPressed: () {
                        // Add edit profile action
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.edit, size: 16),
                          SizedBox(width: 4),
                          Text('Edit Profile'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  StatisticItem(label: 'Favorite', value: '2+'),
                  StatisticItem(label: 'Course', value: '10+'),
                  StatisticItem(label: 'Read', value: '20+'),
                  StatisticItem(
                    label: 'Best Student Month',
                    value: '',
                    icon: Icons.emoji_events,
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Bio Notes',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'notes',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Favorite Courses',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    RecommendedCard(
                      title: 'math',
                      imagename: "assets/images/phisics.png",
                      
                    ),
                    RecommendedCard(
                      title: 'physics',
                      imagename: "assets/images/math.png",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ], // Set to profile tab
        selectedItemColor: Colors.blue,
      ),
    );
  }
}

class StatisticItem extends StatelessWidget {
  final String label;
  final String value;
  final IconData? icon;

  StatisticItem({required this.label, required this.value, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icon != null
            ? Icon(icon, size: 24)
            : Text(
                value,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
        SizedBox(height: 4),
        Text(label),
      ],
    );
  }
}

class RecommendedCard extends StatelessWidget {
  final String title;
  final String imagename;

  RecommendedCard({required this.title, required this.imagename});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        child: Column(
          children: [
            Container(
              child: 
              Image.asset(imagename , fit: BoxFit.cover,)),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
