import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thebaristascookbook/src/features/recipe/view/components/sub-view/components/textfield.dart';

class TitleView extends StatelessWidget {
  const TitleView({super.key});

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuEntry> dropdownMenuEntries = [
      const DropdownMenuEntry(value: "Moka", label: "Moka"),
      const DropdownMenuEntry(value: "Espresso", label: "Espresso"),
    ];
    var screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Nome da receita:",
              style:
                  GoogleFonts.content(fontSize: 18, color: const Color(0xff8F542E)),
              textAlign: TextAlign.start,
            ),
            CustomedTextField(),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                "Descrição:",
                style:
                    GoogleFonts.content(fontSize: 18, color: const Color(0xff8F542E)),
                textAlign: TextAlign.start,
              ),
            ),
            CustomedTextField(
              maxLines: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                "Foto:",
                style:
                    GoogleFonts.content(fontSize: 18, color: const Color(0xff8F542E)),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              height: screenSize.width * 0.6,
              width: screenSize.width,
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff8F542E)),
                  borderRadius: BorderRadius.circular(15)),
              child: FractionallySizedBox(
                widthFactor: 0.5,
                heightFactor: 0.5,
                child: FittedBox(
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                "Método:",
                style:
                    GoogleFonts.content(fontSize: 18, color: const Color(0xff8F542E)),
                textAlign: TextAlign.start,
              ),
            ),
            DropdownMenu(
                width: screenSize.width - 20,
                dropdownMenuEntries: dropdownMenuEntries,
                inputDecorationTheme: InputDecorationTheme(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          const BorderSide(color: Color(0xff8F542E), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          const BorderSide(color: Color(0xff8F542E), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          const BorderSide(color: Color(0xff8F542E), width: 1),
                    ))),
          ],
        ),
      ),
    );
  }
}
