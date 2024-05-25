import 'package:flutter/material.dart';
import 'package:flutteriklimapp/plant_list_page.dart';
import 'package:flutteriklimapp/soil_types.dart';


class SoilSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('Toprak Türü Seçimi'),
      ),
      body: ListView.builder(
        itemCount: soilTypes.length,
        itemBuilder: (context, index) {
          final soilType = soilTypes[index];
          return ListTile(
            title: Text(soilType.name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PlantListPage(soilType: soilType),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
