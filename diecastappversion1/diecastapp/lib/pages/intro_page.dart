import 'package:diecastapp/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ------------------------ logo ------------------------
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Image.asset(
                    'lib/images/LogoV1.jpg',
                    height: 240,
                  ),
                ),

                const SizedBox(height: 48), // For empty  space

                // ------------------------ title ------------------------

                const Text('DIGITAL CAR COLLECTION',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )),

                const SizedBox(height: 24), // Some more empty  space

                // ------------------------ SubTitle ------------------------
                const Text(
                  'Your NR.1 source to check if your favourite car exists in 1/64 scale!',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 48), // For empty  space

                // ------------------------ Start now button ------------------
                GestureDetector(
                  // Als GestureContainer gewrapt, um auf die Home Page zu weiterzuleiten beim Taklick
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[900],
                    ),
                    padding: const EdgeInsets.all(25),
                    child: const Center(
                      child: Text('Discover now',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
