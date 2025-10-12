import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, String>> userDetails = [
    {'name': 'John Doe', 'image': 'assets/images/john_doe.png'},
    {'name': 'Jane Smith', 'image': 'assets/images/john_doe.png'},
    {'name': 'Michael Johnson', 'image': 'assets/images/john_doe.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: ListView.builder(
            itemCount: userDetails.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: SizedBox(
                    width: 50,
                    height: 50,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(userDetails[index]['image']!))),
                title: Text(userDetails[index]['name']!),
              );
            }),
      ),
    );
  }
}
