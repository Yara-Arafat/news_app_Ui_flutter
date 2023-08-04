import 'package:flutter/material.dart';
import 'package:news_app/Screens/discover_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page', style: TextStyle(fontSize: 35 , fontWeight: FontWeight.normal),),
      ),
     
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DiscoverScreen()));
        },
        child: Icon(Icons.forward),
      ),
    );
  }
}
