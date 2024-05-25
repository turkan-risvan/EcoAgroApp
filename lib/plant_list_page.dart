import 'package:flutter/material.dart';
import 'package:flutteriklimapp/soil_types.dart';


class PlantListPage extends StatelessWidget {
  final SoilType soilType;

  PlantListPage({required this.soilType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('${soilType.name} İçin Uygun Bitkiler'),
      ),
      body: ListView.builder(
        itemCount: soilType.plants.length,
        itemBuilder: (context, index) {
          final plant = soilType.plants[index];
          return ListTile(
            title: Text(plant.name),
            subtitle: Text(plant.careInstructions),
          );
        },
      ),
    );
  }
}
