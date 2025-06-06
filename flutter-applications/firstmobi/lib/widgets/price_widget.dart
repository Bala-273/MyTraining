import 'package:flutter/material.dart';

class PriceWidget extends StatefulWidget {
  const PriceWidget({super.key});

  @override
  State<PriceWidget> createState() => _PriceWidgetState();
}

class _PriceWidgetState extends State<PriceWidget> {
  double price = 5000;

  void _increasePrice() {
    setState(() {
      price += 100;
    });
  }

  void _decreasePrice() {
    setState(() {
      price -= 100;
    });
  }

  void _multiplyPrice() {
    setState(() {
      price = (price * 1.2).roundToDouble();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              'Price: $price',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _increasePrice,
            child: Text('Increase by 100'),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: _decreasePrice,
            child: Text('Decrease by 100'),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: _multiplyPrice,
            child: Text('Multiply by 1.2'),
          ),
        ],
      ),
    );
  }
}
