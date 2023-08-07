import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Icon(
            Icons.menu,
            color: Colors.grey,
            size: 36,
          ),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Icon(
              Icons.person,
              color: Colors.grey,
              size: 36,
            ),
          )
        ],
      ),
    );
  }
}