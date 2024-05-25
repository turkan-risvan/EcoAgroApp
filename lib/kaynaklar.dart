import 'package:flutter/material.dart';
import 'package:flutteriklimapp/home_page.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
           iconTheme: IconThemeData(color: Colors.white),
     backgroundColor: Colors.green,
        title: const Text('Resources',style: TextStyle(color: Colors.white,fontSize: 25),),
      ),
      body: ListView(
        children: [
      
         const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor:  Color.fromARGB(255, 198, 244, 205),
                  child: Text(
                    'TR',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 8),
                 Text(
                        'Energy Resources',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white
                        ),
                      ),   ],
            ),
          ),
          const Divider(),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
                 InkWell(
                  
                  onTap: () {
                   Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => SuPage()),
            );
                  },
                  child: buildMenuCard('Water',Image(image: AssetImage("assets/su.jpg"),))),
              buildMenuCard(  'Sun',Image(image: AssetImage("assets/gunes.jpg"),)),
              buildMenuCard( 'Barrages',Image(image: AssetImage("assets/baraj.jpg"),)),
              buildMenuCard('Wind',Image(image: AssetImage("assets/ruzgar.jpg"),)),
               buildMenuCard( 'geothermal',Image(image: AssetImage("assets/jeotermal.jpg"),)),
            
            
            ],
          ),
        ],
      ),
    );
  }

  Widget buildMenuCard(  String title, Image image) {
    return GestureDetector(
      
      child: Card(
      color: Color.fromARGB(255, 198, 244, 205),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
           
            children: [
             
              Text(
                title,
                style:const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.green
                ),
              ),
              image
            ],
          ),
        ),
      ),
    );
  }
}
 
 class SuPage extends StatelessWidget {
  const SuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 198, 244, 205),
      body: Column(
        children: [
          Center(child: Image.asset("assets/su.jpg")),
          SizedBox(height: 30,),
          Center(child: Text("Sustainable Use and Management of Water", style: TextStyle(color: const Color.fromARGB(255, 13, 87, 15),fontSize: 20),)),
          Padding(
            padding: const EdgeInsets.all(16.0),
            
          
            child: Center(child: Text("The pressures and gains facing water necessitate radical changes in our understanding of water management and water use. This ability emerges in a transparent manner that is Participatory, Transparent, Ecosystem-sensitive, Open to Nature-based solutions, Social procedure and Dynamic planning, with a colorful water management. Water demand needs to implement an understanding of using the available water in the most efficient way before improving the notification of new sources to meet the increasing demand. Purification and online reuse of this equipment, especially in industrial use, will also be a very important step for sustainable water use.", style: TextStyle(color: Colors.black),)),
          ),
           
         
        ],
      ),
    );
  }
}