// import 'package:flutter/material.dart';
// import 'package:flutteriklimapp/card_widget.dart';
// import 'package:flutteriklimapp/drawer.dart';
// import 'package:flutteriklimapp/theme/app_color.dart';



// class PageHome extends StatelessWidget {
//   const PageHome({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final double navBarHeight = 80.0;
//     final double navBarWidth = MediaQuery.of(context).size.width * 0.8;

//     return Scaffold(
//      // floatingActionButton: _buildFloatAction(context),
//       //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//       ),
//       drawer: CompDrawer(),
//       backgroundColor: Colors.white,
//       bottomNavigationBar: buildBottomNavigationBar(navBarHeight, navBarWidth),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [

//           Text("Problem Our project aims to develop an early warning system in the form of a mobile application and website to protect farmers and crops against unpredictable flood disasters caused by extreme weather conditions related to global warming in the Middle East and Turkey. This system will provide timely alerts and help mitigate the impact of floods on agriculture. 🌱💧"),
//           Expanded(
//             flex: 2,
//             child: GestureDetector(
//               onTap: () => Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => PageHome(),
//                 ),
//               ),
//               child: buildHeaderItems(
//                 context,
//                 ConstantsAdress.avatarImage2,
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 2,
//             child: buildCardPano(),
//           ),
//           buildTitleDepartmants(context),
      
//         ],
//       ),
//     );
//   }

//   Widget _buildFloatAction(BuildContext context){

//     return 
//     //Consumer<CreatePetViewModel>(
//       //builder: (context, viewModel, child) => 
//       FloatingActionButton(
//       child: Icon(Icons.add),
//       onPressed: () {
      
//       },
//     );
//   }

//   Padding buildCardItem(BuildContext context, List<CustomCard> customCards) {
     
//       List<Widget> allCards = [
//         CustomCard(
//           title: "Sahiplen",
//           subtitle: "",
//           backgroundColor: ConstantsColor.bodyColor,
//           icon: '👩‍💻',
//           onPressed: () {
           
//           },
//         ),
//         CustomCard(
//           icon: "👨‍🎨",
//           title: 'Kayıp',
//           subtitle: '45 creatives',
//           backgroundColor: ConstantsColor.orangeColor,
//           onPressed: () {
           
//           },
//         ),

//         CustomCard(
//           icon: "🙅‍♂️",
//           title: 'Bağış & Shop',
//           subtitle: '24 chec',
//           backgroundColor: ConstantsColor.pinkColor,
//           onPressed: () {
           
//           },
//         ),
//         CustomCard(
//           icon: "🙅‍♂️",
//           title: 'Eğitim Videoları',
//           subtitle: '20 big rains',
//           backgroundColor: ConstantsColor.lightPurpleColor,
//           onPressed: () {
            
//           },
//         ),
//     ];

//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 20),
//       child: GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           crossAxisSpacing: 16.0,
//           mainAxisSpacing: 16.0,
//         ),
//         itemCount: allCards.length,
//         itemBuilder: (BuildContext context, int index) {
//           return Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: allCards[index],
//           );
//         },
//       ),
//     );
//   }

//   Padding buildTitleDepartmants(BuildContext context) {
//     return Padding(
//         padding: const EdgeInsets.only(left: 20, top: 20),
//         child: Text(
//           'Departmants',
//      style: TextStyle(color: Colors.black),
//         ));
//   }

//   // Expanded buildSearchBarItem() {
//   //   return Expanded(
//   //       flex: 1,
//   //       child: Padding(
//   //         padding: const EdgeInsets.all(6.0),
//   //         child: TextField(
//   //           decoration: InputDecoration(
//   //             hintText: "What are you looking for?",
//   //             hintStyle: GoogleFonts.outfit(textStyle: textTheme.bodyMedium),
//   //             prefixIcon: Icon(Icons.search),
//   //             border: OutlineInputBorder(
//   //               borderRadius: BorderRadius.circular(30.0),
//   //               borderSide: BorderSide.none,
//   //             ),
//   //             fillColor: ConstantsColor.lightGreyColor,
//   //             filled: true,
//   //           ),
//   //         ),
//   //       ));
//   // }

//   Padding buildHeaderItems(BuildContext context, String avatarImage) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               FittedBox(
//                 child: Text(
//                   'Todayfd',
//                 style: TextStyle(color: Colors.black),
//                 ),
//               ),
//               FittedBox(
//                 child: Text(
//                   'Good Morning,Hannah',
//                  style: TextStyle(color: Colors.black),
//               ),
//               ),
//             ],
//           ),
//           CircleAvatar(
//             radius: 30,
//             backgroundImage: NetworkImage(avatarImage),
//           ),
//         ],
//       ),
//     );
//   }
// }

// Padding buildBottomNavigationBar(double navBarHeight, double navBarWidth) {
//   return Padding(
//     padding: const EdgeInsets.all(3.0),
//     child: SizedBox(
//       height: navBarHeight,
//       width: navBarWidth,
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(30),
//         child: BottomNavigationBar(
            
//               items: const [
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.home),
//                   label: 'Ana Sayfa',
//                   backgroundColor: Colors.black,
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.calendar_today),
//                   label: 'Randevularım',
//                   backgroundColor: Colors.black,
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.request_page),
//                   label: 'Randevu Taleplerim',
//                   backgroundColor: Colors.black,
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.menu),
//                   label: 'Menü',
//                   backgroundColor: Colors.black,
//                 ),
//               ],
//               backgroundColor: Colors.blue,
//               selectedItemColor: Colors.white,
//               unselectedItemColor: Colors.grey,
//             ),
//       ),
//     ),
//   );
// }

// Padding buildCardPano() {
//   return Padding(
//     padding: EdgeInsets.symmetric(horizontal: 20),
//     child: ListView.builder(
//       scrollDirection: Axis.horizontal,
//       itemCount: 2,
//       itemBuilder: (BuildContext context, int index) {
//         return buildImageCard(index);
//       },
//     ),
//   );
// }


// Card buildImageCard(int index) {
//   return Card(
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(10),
//     ),
//     child: Container(
//       width: 250,
//       height: 100,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         // image: DecorationImage(
//         //   // image: AssetImage(index == 0
//         //   //         ? 'assets/image1.jpg' // İlk resmin dosya yolu
//         //   //         : 'assets/image2.jpg' // İkinci resmin dosya yolu
//         //   //     ),
//         //   fit: BoxFit.cover,
//         // ),
//       ),
//     ),
//   );
// }

