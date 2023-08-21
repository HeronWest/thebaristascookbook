import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thebaristascookbook/src/widgets/field.dart';

import 'components/register_button.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: screenSize.width * 0.7,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Cadastro',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.cormorantGaramond(
                          color: const Color(0xff8F542E), fontSize: 48),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  FieldWidget(
                      width: screenSize.width * 0.7,
                      hintText: "Apelido",
                      prefixIcon: Icons.person),
                  const Padding(padding: EdgeInsets.only(top: 5)),
                  FieldWidget(
                      width: screenSize.width * 0.7,
                      hintText: "E-mail",
                      prefixIcon: Icons.alternate_email),
                  const Padding(padding: EdgeInsets.only(top: 5)),
                  FieldWidget(
                      width: screenSize.width * 0.7,
                      hintText: "Senha",
                      prefixIcon: Icons.key,
                      obscureText: true),
                  const Padding(padding: EdgeInsets.only(top: 5)),
                  FieldWidget(
                    width: screenSize.width * 0.7,
                    hintText: "Confirmar Senha",
                    prefixIcon: Icons.key,
                    obscureText: true,
                  ),
                  const Padding(padding: EdgeInsets.only(top: 5)),
                  FieldWidget(
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        TelefoneInputFormatter()
                      ],
                      keyboardType: TextInputType.number,
                      width: screenSize.width * 0.7,
                      hintText: "Telefone",
                      prefixIcon: Icons.phone),
                  const Padding(padding: EdgeInsets.only(top: 30)),
                  SizedBox(
                    height: 60,
                    width: screenSize.width * 0.7,
                    child: const RegisterButton(),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
