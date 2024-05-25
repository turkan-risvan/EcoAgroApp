import 'package:flutter/material.dart';
import 'package:flutteriklimapp/bilgilendirme.dart';
import 'package:flutteriklimapp/farmer_support_page.dart';
import 'package:flutteriklimapp/home_page.dart';

import 'package:flutteriklimapp/kaynaklar.dart';
import 'package:flutteriklimapp/plant_advice_page.dart';
import 'package:flutteriklimapp/soil_selection_page.dart';


class CompDrawer extends StatefulWidget {
  const CompDrawer({super.key, required});

  @override
  State<CompDrawer> createState() => _ComtDrawerState();
}

class _ComtDrawerState extends State<CompDrawer> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Anasayfa',
      style: optionStyle,
    ),
    Text(
      'Su Verimliliği',
      style: optionStyle,
    ),
    Text(
      'Toprak ve İklim',
      style: optionStyle,
    ),
    Text(
      'Bilgilendirme',
      style: optionStyle,
    ),
    
    Text(
      'Hakkımızda',
      style: optionStyle,
    ),
    Text(
      'Çıkış',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        // Add a ListView to the ComtDrawer. This ensures the user can scroll
        // through the options in the ComtDrawer if there isn't enough vertical
        // space to fit everything.

        child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 198, 244, 205),
          ),
          child: Column(
            children: [
              // Icon(
              //   Icons.child_care,
              //   size: 30,
              // ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color.fromARGB(255, 0, 233, 62),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text('Profile'),
                ],
              ),
            ],
          ),
        ),
       ListTile(
          leading: const Icon(Icons.bookmark),
          title: const Text('Home'),
          selected: _selectedIndex == 0,
          onTap: () {
            // Update the state of the app
            _onItemTapped(3);
            // Then close the ComtDrawer
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>HomePage() , // Yönlendirilecek sayfa
              ),
            );
          },
        ),
       
       ListTile(
          leading: const Icon(Icons.bookmark),
          title: const Text('Resources'),
          selected: _selectedIndex == 1,
          onTap: () {
            // Update the state of the app
            _onItemTapped(3);
            // Then close the ComtDrawer
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MenuScreen(), // Yönlendirilecek sayfa
              ),
            );
          },
        ),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FarmerSupportPage(),
            ),
          ),
          child: ListTile(
            leading: const Icon(Icons.bookmark),
            title: const Text('Information'),
            selected: _selectedIndex == 2,
            onTap: () {
              // Update the state of the app
              _onItemTapped(2);
              // Then close the ComtDrawer
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BilgilendirmePage(), // Yönlendirilecek sayfa
                ),
              );
            },
          ),
        ),
        ListTile(
          leading: const Icon(Icons.bookmark),
          title: const Text('About'),
          selected: _selectedIndex == 3,
          onTap: () {
            // Update the state of the app
            _onItemTapped(3);
            // Then close the ComtDrawer
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PlantAdvicePage(), // Yönlendirilecek sayfa
              ),
            );
          },
        ),
      
      
        ListTile(
          leading: const Icon(Icons.bookmark),
          title: const Text('Exit '),
          selected: _selectedIndex == 6,
          onTap: () {
            // Update the state of the app
            _onItemTapped(6);
            // Then close the ComtDrawer
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(), // Yönlendirilecek sayfa
              ),
            );
          },
        ),
       
      ],
    ));
  }
}
