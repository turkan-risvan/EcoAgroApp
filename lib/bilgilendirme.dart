import 'package:flutter/material.dart';

class BilgilendirmePage extends StatefulWidget {
  const BilgilendirmePage({super.key});

  @override
  _BilgilendirmePageState createState() => _BilgilendirmePageState();
}

class _BilgilendirmePageState extends State<BilgilendirmePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
           iconTheme: IconThemeData(color: Colors.white),
     backgroundColor: Colors.green,
        title: const Text('To inform',style: TextStyle(color: Colors.white,fontSize: 25),),
      ),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: 'Natural disasters'),
              Tab(text: 'Land Use'),
              Tab(text: 'Water use'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 16),
                      Card(
      color: Colors.green,
      elevation: 2,
      margin: const EdgeInsets.all(16),
      child: SizedBox(
        width: 320,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "Flood",
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
                      buildRandevuCard(
                        'Flood',
                         Image(image: AssetImage("assets/sel.jpg")),
                      ),
                         Card(
      color: Colors.green,
      elevation: 2,
      margin: const EdgeInsets.all(16),
      child: SizedBox(
        width: 320,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "Storm",
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
                      const SizedBox(height: 16),
                      buildRandevuCard(
                        'Storm',
                         Image(image: AssetImage("assets/kuraklık.jpg")),
                      ),
                         Card(
      color: Colors.green,
      elevation: 2,
      margin: const EdgeInsets.all(16),
      child: SizedBox(
        width: 320,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "Storm",
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
                      const SizedBox(height: 16),
                      buildRandevuCard(
                        'Storm',
                         Image(image: AssetImage("assets/fırtına.jpg")),
                      ),
                         Card(
      color: Colors.green,
      elevation: 2,
      margin: const EdgeInsets.all(16),
      child: SizedBox(
        width: 320,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "Fire",
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
                      const SizedBox(height: 16),
                      buildRandevuCard(
                        'Fire',
                         Image(image: AssetImage("assets/yangın.jpg")),
                      ),
                     
                    ],
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(height: 16),
                    buildRandevuCard(
                      'Deprem',
                     

                       Image(image: AssetImage("assets/sel.jpg"))
                    ),
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(height: 16),
                    buildRandevuCard(
                     "Sel",
                      Image.asset("assets/sel.jpg"),
                      
                    ),
                  ],
                ),
              ],
            ),
          ),
        
        ],
      ),
    );
  }

  Widget buildKart(String title) {
    return Card(
      color: Colors.green,
      elevation: 2,
      margin: const EdgeInsets.all(16),
      child: SizedBox(
        width: 320,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildRandevuCard(
    String date,
   
    Image image,
  ) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                 
              
                const SizedBox(width: 8),
            Container(
              width: 300,
              height: 250,
              child: image)
              ]),
            const SizedBox(height: 16),
           
            
          ],
        ),
      ),
    );
  }
}
