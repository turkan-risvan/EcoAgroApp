import 'package:flutter/material.dart';
import 'package:flutteriklimapp/farmer_support_page.dart';
import 'package:flutteriklimapp/home_page.dart';





class CompNavBar extends StatefulWidget {
  const CompNavBar({super.key});

  @override
  State<CompNavBar> createState() => CompNavBarState();
}

class CompNavBarState extends State<CompNavBar> {
  @override

   int selectedScreen=0;
    void ChangeScreen(int   index){
      setState((){
        selectedScreen =  index;
        showScreen(selectedScreen); 
        });
    }
  Widget? showScreen(int selectedScreen)
  {
    if(selectedScreen==0)
        return HomePage();
    else if(selectedScreen==1)
          return FarmerSupportPage();
    else if(selectedScreen==2)
      return HomePage();
    else if(selectedScreen==3)
      return HomePage();
       else if(selectedScreen==4)
      return HomePage();
  }

  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: Colors.green,
      selectedIndex: selectedScreen,
      onDestinationSelected: ChangeScreen,
      destinations: const <Widget>[
        NavigationDestination(
          label: 'Home',
          icon: Icon(Icons.home_outlined),
        ),
        NavigationDestination(
          label: 'Search',
          icon: Icon(Icons.search),
        ),
        NavigationDestination(
          label: 'Notificaitons',
          icon: Icon(Icons.notifications_sharp),
        ),
        NavigationDestination(
          label: 'Messages',
          icon: Icon(Icons.message),
        ),
          NavigationDestination(
          label: 'Adverts',
          icon: Icon(Icons.add),
        ),
      ],
      //indicatorColor: Colors.grey,
    );
  }
}