import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:thebaristascookbook/src/features/help/help_page.dart';
import 'package:thebaristascookbook/src/features/login/view/components/google_button.dart';
import 'package:thebaristascookbook/src/features/login/view/components/login_button.dart';
import 'package:thebaristascookbook/src/features/login/view/components/password_field.dart';
import 'package:thebaristascookbook/src/features/login/view/components/user_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xff8F542E), size: 36),
      ),
      backgroundColor: const Color(0xffFFFCF4),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        elevation: 0,
        onPressed: () {},
        child: IconButton(
          padding: const EdgeInsets.only(bottom: 10, right: 10),
          icon: Icon(
            MdiIcons.helpCircleOutline,
            color: const Color(0xff8F542E),
            size: 48,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HelpPage()),
            );
          },
        ),
      ),
      body: Center(
        child: SizedBox(
          width: screenSize.width * 0.7,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Login',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.cormorantGaramond(
                        color: const Color(0xff8F542E), fontSize: 48),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                const UserField(),
                Padding(padding: EdgeInsets.only(top: 10)),
                const PasswordField(),
                Padding(padding: EdgeInsets.only(top: 30)),
                SizedBox(
                  height: 60,
                  width: screenSize.width * 0.7,
                  child: const LoginButton(),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Esqueceu a senha?',
                      style: GoogleFonts.content(
                          color: const Color(0xff8F542E),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )),
                Padding(padding: EdgeInsets.only(bottom: 40)),
                SizedBox(
                    height: 60,
                    width: screenSize.width * 0.7,
                    child: LoginGoogleButton())
              ]),
        ),
      ),
    );
  }
}
