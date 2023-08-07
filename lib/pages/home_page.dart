import 'package:donut_flutter_app/tabs/burget_tab.dart';
import 'package:donut_flutter_app/tabs/donut_tab.dart';
import 'package:flutter/material.dart';

import '../tabs/pancake_tab.dart';
import '../tabs/pizza_tab.dart';
import '../tabs/smoothie_tab.dart';
import '../utils/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
  List<Widget> myTabs = const [
    // donut tab
     MyTab(
      iconPath: 'lib/icons/donut.png',
    ),
    // burger tab
      MyTab(
      iconPath: 'lib/icons/burger.png',
    ),
    // smoothie tab
      MyTab(
      iconPath: 'lib/icons/smoothie.png',
    ),
    // pancake tab
     MyTab(
      iconPath: 'lib/icons/pancakes.png',
    ),
    // pizza tab
     MyTab(
      iconPath: 'lib/icons/pizza.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 36,
              ),
              onPressed: () {
                // open drawer
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                  size: 36,
                ),
                onPressed: () {
                  //  account button tapped
                },
              ),
            )
          ],
        ),
        body: Column(
          children: [
            // I want to Eat,
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
                child: Row(
                  children: const [
                    Text(
                      "I want to ",
                      style: TextStyle(fontSize: 24),
                    ),
                    Text(
                      "EAT",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
            
            SizedBox(height: 24,),
            
            //  tab Bar
            TabBar(tabs: myTabs),
            
            
            // tab Bar view
            Expanded(
              child:TabBarView(
                children: [
              
              // Donut Page
              DonutTab(),
              // Burger Page
              BurgerTab(),
              // Smoothie Page
              SmoothieTab(),
              // Pancake Page
              PancakeTab(),
              // pizza Page
              PizzaTab(),
            ],),)
          ],
        ),
      ),
    );
  }
}
