import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: SizedBox(
        width: screenSize.width * 0.96,
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: const Color(0xffFFFCF4),
          child: Stack(
            children: [
              ClipPath(
                clipper: TopClipper(),
                child: Container(
                  height: 40,
                  width: screenSize.width * 0.9,
                  decoration: BoxDecoration(
                    color: const Color(0xff8F542E),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 45, right: 20, left: 20, bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'O QUE COMEÇAR A ESTUDAR PARA SER UM BARISTA?',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.content(
                          color: Color(0xff8F542E),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              // Align(
              //   alignment: Alignment.bottomRight,
              //   child: Padding(
              //     padding:
              //         const EdgeInsets.only(top: 90.0, bottom: 8, right: 8),
              //     child: IconButton(
              //         onPressed: () {},
              //         icon: const Icon(
              //           Icons.arrow_forward,
              //           color: Color(0xff8F542E),
              //           size: 36,
              //         )),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class TopClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height * 0.2);
    path.quadraticBezierTo(size.width * 0.05, size.height * 0.8,
        size.width * 0.2, size.height * 0.5);
    path.lineTo(size.width * 0.2, size.height * 0.5);
    path.quadraticBezierTo(
        size.width * 0.4, size.height * 0.0, size.width * 0.75, size.height);
    path.quadraticBezierTo(size.width * 0.95, size.height, size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
