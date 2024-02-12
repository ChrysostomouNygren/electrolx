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

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // TODO import strings from separate variable.
            SelectableItem('Cotton Eco', 'Cupboard-dries cottons with maximum energy saving'),
            SelectableItem('Cottons', '100% cotton fabrics'),
            SelectableItem('Synthetics', 'For a mix of mostly synthetics fabrics, like polyester, or polyamide.'),
            SelectableItem('Mixed+', "Cotton, cotton.synthetic blends, and synthetics that don't need ironing."),
            SelectableItem('Delicates', 'Viscose, rayon, acrylic, and other blends.'),
            SelectableItem('Sports', 'Athletic clothes made of synthetics like polyester, elastane, or polyamide.'),
            SelectableItem('Bed linen XL', 'Up to 2 single and 1 double sets of bedding.'),
          ],
        ),
      ),

    );
  }
}
