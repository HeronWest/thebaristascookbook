import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:thebaristascookbook/src/features/help/help_page.dart';
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
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'The Barista\'s Cookbook',
                textAlign: TextAlign.center,
                style: GoogleFonts.cormorantGaramond(
                    color: Color(0xff8F542E), fontSize: 48),
              ),
              const UserField(),
              const PasswordField(),
              SizedBox(
                height: 60,
                width: screenSize.width * 0.7,
                child: const LoginButton(),
              )
            ]),
      ),
    );
  }
}
