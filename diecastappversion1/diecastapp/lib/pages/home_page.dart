import 'package:flutter/material.dart';
import 'package:diecastapp/components/bottom_nav_bar.dart';


class HomePage extends StatefulWidget {
  const HomePage ({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300], // ONLY FOR TESTING
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}