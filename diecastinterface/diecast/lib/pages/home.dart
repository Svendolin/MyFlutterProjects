import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar(),
        backgroundColor: Colors.red[900],
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            // Anpassen
          },
          child: Container(
            // LINKER BUTTON
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10),
            ), // Um den Container kleiner zu machen
            alignment: Alignment
                .center, // Um das Icon in die Mitte zu setzen UND dass überhaupt height und width funktionieren
            child: SvgPicture.asset(
              'assets/icons/Arrow - Left 2.svg',
              height: 20,
              width: 20,
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              // Anpassen
            },
            child: Container(
              // RECHTER BUTTON
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xffF7F8F8),
                borderRadius: BorderRadius.circular(10),
              ), // Um den Container kleiner zu machen
              alignment: Alignment
                  .center, // Um das Icon in die Mitte zu setzen UND dass überhaupt height und width funktionieren
              width: 37,
              child: SvgPicture.asset(
                'assets/icons/dots.svg',
                height: 5,
                width: 5,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Texte linksbündig
        children: [
          _searchField(),
          const SizedBox(height: 40,), // Sorgt für einen Abstand zwischen dem SearchField und dem Text in vertikaler Column Distamnz
          const Column( // Column Widget, damit die Texte untereinander angeordnet werden
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Popular Car Brands',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Container _searchField() {
    return Container(
          margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color(0xff1D1617).withOpacity(0.11),
                spreadRadius: 0.0,
                blurRadius: 40,
              ),
            ],
          ),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.all(15),
              hintText: 'Search for a modelcar',
              hintStyle: const TextStyle(
                color: Color(0xffDDDADA),
                fontSize: 14,
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset(
                  'assets/icons/Search.svg',
                ),
              ),
              suffixIcon: SizedBox( // Will, dass ich SizedBox verwende statt Container(), damit ich die Breite und Höhe angeben kann
                width: 100, // Durch die Breitenangabe wird überhaupt der hintText angezeigt
                child: IntrinsicHeight(
                  child: Row(
                    // Das Row Widget ist wichtig, damit die Icons nebeneinander angeordnet werden, horizontal in einer Reihe
                    mainAxisAlignment: MainAxisAlignment
                        .end, // Sorgt dafür, dass die Icons rechts sind (am Ende angeordnet)
                    children: [
                      const VerticalDivider(
                        // Sorgt für einen vertikalen Abstand zwischen den Icons
                        color: Colors.black,
                        indent: 10, // Abstand oben
                        endIndent: 10, // Abstand unten
                        thickness: 0.1,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: SvgPicture.asset(
                          'assets/icons/Filter.svg',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none),
            ),
          ),
        );
  }

  Text appBar() {
    return const Text(
      'Toycarsaddict.club',
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
