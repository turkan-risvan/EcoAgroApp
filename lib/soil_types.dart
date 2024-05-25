class SoilType {
  final String name;
  final List<Plant> plants;

  SoilType({required this.name, required this.plants});
}

class Plant {
  final String name;
  final String careInstructions;

  Plant({required this.name, required this.careInstructions});
}

final List<SoilType> soilTypes = [
  SoilType(
    name: 'Killi Toprak',
    plants: [
      Plant(
        name: 'Domates',
        careInstructions: 'Düzenli sulayın ve gübreleyin.',
      ),
      Plant(
        name: 'Biber',
        careInstructions: 'Haftada bir sulayın ve azotlu gübre kullanın.',
      ),
    ],
  ),
  SoilType(
    name: 'Kumlu Toprak',
    plants: [
      Plant(
        name: 'Havuç',
        careInstructions: 'Toprağı nemli tutun ve organik gübre kullanın.',
      ),
      Plant(
        name: 'Kavun',
        careInstructions: 'Günlük sulayın ve potasyumlu gübre kullanın.',
      ),
    ],
  ),
  // Diğer toprak türleri ve bitkiler
];
