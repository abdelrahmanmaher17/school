import 'package:flutter/material.dart';


class Studentwelcom extends StatelessWidget {
  const Studentwelcom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [ InkWell(
          onTap: (){
            Navigator.of(context).pushNamed( "studentprofile");
          },
          child: Container(
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey[200],),
            child: Icon(Icons.person , size: 40,)),
        ),],
        title: Text('Learning App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Hi, Student',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 214, 205, 224),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Text(
                    'Start learning.',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Search here...',
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Categories',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CategoryCard(icon: Icons.table_chart, label: 'Results', nextscreen: "studentresults",),
                CategoryCard(icon: Icons.calculate, label: 'schedule', nextscreen: "studentschedule",),
                CategoryCardqr(icon: Icons.qr_code, label: 'Qr attendance'),
                
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 40), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.play_circle_fill, size: 40), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person, size: 40), label: ''),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.blue,
      ),
    );
  }
}
class CategoryCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String nextscreen;

  CategoryCard({required this.icon, required this.label, required this.nextscreen});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed("$nextscreen");
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 30,
              child: Icon(icon, size: 30),
            ),
            SizedBox(height: 8),
            Text(label),
          ],
        ),
      ),
    );
  }
} 

class CategoryCardqr extends StatelessWidget {
  final IconData icon;
  final String label;


  CategoryCardqr({required this.icon, required this.label,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showDialog(
            context: context,
              builder: (context) {
                return  Center(
                  child: AlertDialog(
                  title: Text("Your QR Code",
                  style: TextStyle(fontSize: 30),),
                  content: Image.asset("assets/images/qrcode.png"),
                  actions: [
                    TextButton(
                      onPressed: () {
                      Navigator.of(context).pop();
                    },
                      child: Text("ok")),
                  ],
                  ),
                  );
              });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 30,
              child: Icon(icon, size: 30),
            ),
            SizedBox(height: 8),
            Text(label),
          ],
        ),
      ),
    );
  }
}

class RecommendedCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  RecommendedCard({required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 150,
        child: Column(
          children: <Widget>[
            Image.network(imageUrl, fit: BoxFit.cover),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}



