import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numerus/numerus.dart';

class PrepareSteps extends StatefulWidget {
  const PrepareSteps({super.key});

  @override
  State<PrepareSteps> createState() => _PrepareStepsState();
}

class _PrepareStepsState extends State<PrepareSteps> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stepper(
        currentStep: _index,
        controlsBuilder: (context, controller) => Row(children: []),
        physics: NeverScrollableScrollPhysics(),
        onStepTapped: (int index) {
          setState(() {
            _index = index;
          });
        },
        steps: [
          Step(
            title: Text(
              'Passo 1',
              style: GoogleFonts.content(fontSize: 18),
            ),
            content: Text(
              'Quebre a barra de chocolate e a derreta em banho maria.',
              style: GoogleFonts.content(fontSize: 16),
            ),
          ),
          Step(
            title: const Text('Passo 2'),
            content: const Text('Adicione o café'),
          ),
          Step(
            title: const Text('Passo 3'),
            content: const Text('Adicione o leite'),
          ),
          Step(
            title: const Text('Passo 4'),
            content: const Text('Adicione o açúcar'),
          ),
          Step(
            title: const Text('Passo 5'),
            content: const Text('Misture tudo'),
          ),
          Step(
            title: const Text('Passo 6'),
            content: const Text('Sirva'),
          )
        ],
        stepIconBuilder: (stepIndex, stepState) {
          int n = stepIndex + 1;
          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(360),
              color: const Color(0xff8F542E),
            ),
            child: Text(
              '${n.toRomanNumeralString()}',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
            ),
          );
        },
      ),
    );
  }
}
