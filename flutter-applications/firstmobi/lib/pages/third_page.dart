import 'package:flutter/material.dart';
import '../widgets/price_widget.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
      ),
      body: Center(
        child: PriceWidget(), 
      ),
    );
  }
}
