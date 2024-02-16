import 'package:electrolux/components/SelectableItem.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool enable = true;
  
  List listItems = [
    ['Cotton Eco', 'Cupboard-dries cottons with maximum energy saving', 'Cotton.png'],
    ['Cottons', '100% cotton fabrics', 'Cotton.png'],
    ['Synthetics', 'For a mix of mostly synthetics fabrics, like polyester, or polyamide.', 'Synthetics.png'],
    ['Delicates', 'Viscose, rayon, acrylic, and other blends.', 'Delicates.png'],
    ['Sports', 'Athletic clothes made of synthetics like polyester, elastane, or polyamide.', 'Sports.png'],
    ['Bed linen XL', 'Up to 2 single and 1 double sets of bedding.', 'Linen.png']
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(itemCount: listItems.length, itemBuilder: (BuildContext context, int index){
          return SelectableItem(listItems[index][0], listItems[index][1], listItems[index][2], index, enable);
        })
      ),

    );
  }
}
