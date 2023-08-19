import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thebaristascookbook/src/features/login/view/login_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: screenSize.height * 0.7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Bem vindo ao\nThe Barista\'s Cookbook',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.cormorantGaramond(
                    fontSize: 28,
                    color: const Color(0xff8F542E),
                  )),
              Image.asset('assets/images/getting-coffee-amico.png',
                  width: screenSize.width * 0.8),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Container(
                  width: screenSize.width * 0.7,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Cadastrar',
                        style: GoogleFonts.cormorantGaramond(fontSize: 24)),
                    style: const ButtonStyle(
                      elevation: MaterialStatePropertyAll<double>(5),
                      backgroundColor: MaterialStatePropertyAll<Color>(
                        Color(0xff8F542E),
                      ),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      )),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Container(
                width: screenSize.width * 0.7,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Text('Entrar',
                      style: GoogleFonts.cormorantGaramond(
                          fontSize: 24, color: Color(0xff8F542E))),
                  style: const ButtonStyle(
                    elevation: MaterialStatePropertyAll<double>(5),
                    backgroundColor: MaterialStatePropertyAll<Color>(
                      const Color(0xffFFFCF4),
                    ),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
