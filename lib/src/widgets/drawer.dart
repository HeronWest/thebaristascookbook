import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thebaristascookbook/src/features/login/view/login_page.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Drawer(
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings_outlined,
                ),
                alignment: Alignment.centerRight,
                iconSize: 48,
                color: const Color(0xff291505).withOpacity(0.9),
              ),
            ],
          ),
          Icon(
            Icons.account_circle,
            size: 130,
            color: const Color(0xff291505).withOpacity(0.9),
            weight: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              'Heron Antunes Guerrieri Westendoff de Oliveira',
              textAlign: TextAlign.center,
              style: GoogleFonts.content(
                  color: const Color(0xff8F542E), fontSize: 18, height: 1.25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
            child: Column(
              children: [
                Divider(
                  color: const Color(0xff291505).withOpacity(0.9),
                  thickness: 1.25,
                ),
                InkWell(
                  onTap: () {},
                  child: SizedBox(
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.coffee,
                            color: const Color(0xff291505).withOpacity(0.9),
                            size: 36,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              'Minhas receitas',
                              style: GoogleFonts.content(
                                  color: const Color(0xff8F542E),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: const Color(0xff291505).withOpacity(0.9),
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: const Color(0xff291505).withOpacity(0.9),
                  thickness: 1.25,
                ),
                InkWell(
                  onTap: () {},
                  child: SizedBox(
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.history,
                            color: const Color(0xff291505).withOpacity(0.9),
                            size: 36,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              'Histórico',
                              style: GoogleFonts.content(
                                  color: const Color(0xff8F542E),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: const Color(0xff291505).withOpacity(0.9),
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: const Color(0xff291505).withOpacity(0.9),
                  thickness: 1.25,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: ((context) => const LoginPage())),
                        (route) => false);
                  },
                  child: SizedBox(
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.exit_to_app,
                            color: const Color(0xff291505).withOpacity(0.9),
                            size: 36,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              'Sair',
                              style: GoogleFonts.content(
                                  color: const Color(0xff8F542E),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: screenSize.height * 0.15),
                  child: SizedBox(
                    width: screenSize.width * 0.5,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                            Color(0xff8F542E),
                          ),
                          shape:
                              MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Contato',
                          style: GoogleFonts.cormorantGaramond(
                              fontSize: 24, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: SizedBox(
                    width: screenSize.width * 0.5,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                            Color(0xff8F542E),
                          ),
                          shape:
                              MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Instagram',
                          style: GoogleFonts.cormorantGaramond(
                              fontSize: 24, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
