import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Toycarsaddict.club',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.red[900],
        centerTitle: true,
        leading: Container( // LINKER BUTTON
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(10),
          ), // Um den Container kleiner zu machen
          alignment: Alignment.center, // Um das Icon in die Mitte zu setzen UND dass überhaupt height und width funktionieren
          child: SvgPicture.asset('assets/icons/Arrow - Left 2.svg',
          height: 20,
          width: 20,),
        ),
        actions: [
          Container( // RECHTER BUTTON
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(10),
          ), // Um den Container kleiner zu machen
          alignment: Alignment.center, // Um das Icon in die Mitte zu setzen UND dass überhaupt height und width funktionieren
          width: 37,
          child: SvgPicture.asset('assets/icons/dots.svg',
          height: 5,
          width: 5,),
        ),
        ],
      ),
    );
  }
}
