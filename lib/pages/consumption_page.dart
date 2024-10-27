import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ConsumptionPage extends StatefulWidget {
  const ConsumptionPage({super.key});

  @override
  ConsumptionPageState createState() => ConsumptionPageState();
}

class ConsumptionPageState extends State<ConsumptionPage> {
  bool _isAnimationActive = false;

  void _toggleAnimation() {
    setState(() {
      _isAnimationActive = !_isAnimationActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MoeCellNico",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "Meter Number",
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 30),
              _isAnimationActive
                  ? Lottie.asset(
                      'assets/electricity_on.json',
                      width: 150,
                      height: 150,
                      fit: BoxFit.fill,
                    )
                  : const SizedBox(
                      width: 150,
                      height: 150,
                    ),
            ],
          ),
          const SizedBox(height: 10),
          Image.asset(
            'assets/equipment.jpg',
            fit: BoxFit.contain,
            height: 200,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 60.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "4hr 30min",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Usage Time",
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "2000 kwh",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Total Delivered",
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "700 kwh",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Total Consumed",
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: _toggleAnimation,
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  _isAnimationActive ? Colors.green : Colors.grey[500],
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            ),
            child: Image.asset(
              'assets/power_button.png',
              width: 30,
              height: 30,
            ),
          ),
        ],
      ),
    );
  }
}
