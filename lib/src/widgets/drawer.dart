import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
                icon: Icon(
                  Icons.settings_outlined,
                ),
                alignment: Alignment.centerRight,
                iconSize: 48,
                color: Color(0xff291505).withOpacity(0.9),
              ),
            ],
          ),
          Icon(
            Icons.account_circle,
            size: 130,
            color: Color(0xff291505).withOpacity(0.9),
            weight: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              'Heron Antunes Guerrieri Westendoff de Oliveira',
              textAlign: TextAlign.center,
              style: GoogleFonts.content(
                  color: Color(0xff8F542E), fontSize: 18, height: 1.25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
            child: Column(
              children: [
                Divider(
                  color: Color(0xff291505).withOpacity(0.9),
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
                            color: Color(0xff291505).withOpacity(0.9),
                            size: 36,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              'Minhas receitas',
                              style: GoogleFonts.content(
                                  color: Color(0xff8F542E),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xff291505).withOpacity(0.9),
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Color(0xff291505).withOpacity(0.9),
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
                            color: Color(0xff291505).withOpacity(0.9),
                            size: 36,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              'Histórico',
                              style: GoogleFonts.content(
                                  color: Color(0xff8F542E),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xff291505).withOpacity(0.9),
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Color(0xff291505).withOpacity(0.9),
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
                            Icons.exit_to_app,
                            color: Color(0xff291505).withOpacity(0.9),
                            size: 36,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              'Sair',
                              style: GoogleFonts.content(
                                  color: Color(0xff8F542E),
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
                          'GitHub',
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
                          'Linkedin',
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
