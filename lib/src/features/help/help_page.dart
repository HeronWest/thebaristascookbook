import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xffFFFCF4),
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xff8F542E),
              size: 36,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      backgroundColor: const Color(0xffFFFCF4),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Dúvidas\nfrequentes',
                textAlign: TextAlign.center,
                style: GoogleFonts.cormorantGaramond(
                    color: const Color(0xff8F542E), fontSize: 48),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25.0),
                child: SizedBox(
                  width: screenSize.width * 0.7,
                  height: screenSize.height * 0.4,
                  child: Card(
                    elevation: 0,
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      side: BorderSide(
                        color: Color(0xff8F542E),
                        width: 1,
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: AutoSizeText(
                            '''Querido Usuário,\nTenho ciência que erros e poblemas podem acontecer a qualquer momento. Qualquer dúvida ou problema entre em contato no seguinte email:\n\nheronbarista@gmail.com\n\nAgradecido!''',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.cormorantGaramond(
                                color: const Color(0xff8F542E)),
                            minFontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
