import 'package:flutter/material.dart';
import 'package:flutter_stromleser/pages/consumption_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
          child: Column(
            children: [
              // Custom app bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Back button
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                  // Logo image
                  Image.asset(
                    'assets/logo_stromleser.webp',
                    fit: BoxFit.contain,
                    height: 40,
                  ),
                  // Menu button
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                  ),
                ],
              ),

              // Main content
              const Expanded(
                child: ConsumptionPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
