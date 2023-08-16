import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PortionWidget extends StatefulWidget {
  const PortionWidget({super.key});

  @override
  State<PortionWidget> createState() => _PortionWidgetState();
}

class _PortionWidgetState extends State<PortionWidget> {
  int i = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 35,
            height: 35,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xff8F542E).withOpacity(0.3),
            ),
            child: IconButton.filled(
              onPressed: () {
                setState(() {
                  i++;
                });
              },
              iconSize: 20,
              icon: const Icon(
                Icons.add,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              '$i porção',
              style: GoogleFonts.cormorantGaramond(fontSize: 22),
            ),
          ),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xff8F542E).withOpacity(0.3),
            ),
            child: IconButton.filled(
              onPressed: () {
                setState(() {
                  if (i > 1) {
                    i--;
                  }
                });
              },
              iconSize: 20,
              icon: const Icon(
                Icons.remove,
              ),
            ),
          )
        ],
      ),
    );
  }
}
