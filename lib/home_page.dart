import 'package:flutter/material.dart';
import 'package:flutteriklimapp/card_widget.dart';
import 'package:flutteriklimapp/climate_issues_page.dart';
import 'package:flutteriklimapp/drawer.dart';
import 'package:flutteriklimapp/farmer_support_page.dart';
import 'package:flutteriklimapp/plant_advice_page.dart';
import 'package:flutteriklimapp/soil_selection_page.dart';
import 'package:flutteriklimapp/theme/app_color.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static List<Widget> _pages = <Widget>[
    ClimateIssuesPage(),
    PlantAdvicePage(),
    FarmerSupportPage(),
    SoilSelectionPage(),  
  ];

void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
     backgroundColor: Color.fromARGB(255, 9, 54, 9),
        title: Center(child: Text('EcoAgro       ',style: TextStyle(color: Colors.white,fontSize: 25),)),
       
      ),
      body: Column(
        children: [
          Center(child: Image.asset("assets/yesildunya.jpg")),
          SizedBox(height: 30,),
          Center(child: Text("  Sustainability and environment", style: TextStyle(color: Colors.white,fontSize: 20),)),
          Padding(
            padding: const EdgeInsets.all(16.0),
            
          
            child: Center(child: Text("Problem Our project aims to develop an early warning system in the form of a mobile application and website to protect farmers and crops against unpredictable flood disasters caused by extreme weather conditions related to global warming in the Middle East and Turkey. This system will provide timely alerts and help mitigate the impact of floods on agriculture. 🌱💧", style: TextStyle(color: Colors.white),)),
          ),
           Expanded(
            flex: 3,
            child: buildCardPano(),
          ),
         
        ],
      ),
      drawer: CompDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 182, 235, 183),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud),
            backgroundColor:Color.fromARGB(255, 195, 239, 196) ,
            
            label:'EcoAgro',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_florist),
            label: 'Resources',
             backgroundColor: Color.fromARGB(255, 9, 54, 9),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.support),
            label: 'Verimlilik',
             backgroundColor: Color.fromARGB(255, 9, 54, 9),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.landscape),
            label: 'Toprak Yöntim', // Yeni sekme
             backgroundColor: Color.fromARGB(255, 9, 54, 9),

          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}


Padding buildCardPano() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return buildImageCard(index);
      },
    ),
  );
}

 buildImageCard(int index) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 250,
    
      
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage("assets/iklim1.jpeg")
        //   // image: AssetImage(index == 0
        //   //         ? 'assets/image1.jpg' // İlk resmin dosya yolu
        //   //         : 'assets/image2.jpg' // İkinci resmin dosya yolu
        //   //     ),
        //   fit: BoxFit.cover,
         ),
      ),
    ),
  );
}
  