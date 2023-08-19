import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:thebaristascookbook/src/features/welcome/welcome_page.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({super.key});

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.pushReplacement(
        context, FadeRouteTransition(page: const WelcomePage()));
  }

  // Widget _buildFullscreenImage() {
  //   return Image.asset(
  //     'assets/fullscreen.jpg',
  //     fit: BoxFit.cover,
  //     height: double.infinity,
  //     width: double.infinity,
  //     alignment: Alignment.center,
  //   );
  // }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    final bodyStyle = GoogleFonts.content(color: Colors.black, fontSize: 18);

    final pageDecoration = PageDecoration(
      titleTextStyle: GoogleFonts.cormorantGaramond(
        fontSize: 28,
        color: const Color(0xff8F542E),
        fontWeight: FontWeight.bold,
      ),
      bodyTextStyle: GoogleFonts.content(fontSize: 18, height: 1.5),
      bodyPadding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: const Color(0xffFFFCF4),
      imagePadding: const EdgeInsets.only(top: 200),
      bodyAlignment: Alignment.center,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: const Color(0xffFFFCF4),
      autoScrollDuration: 10000,
      infiniteAutoScroll: true,
      pages: [
        PageViewModel(
          title: "Seja bem vindo Coffee Lover!",
          bodyWidget: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text:
                    'Explore a jornada irresistível de aromas e sabores em nosso aplicativo de cafés, criado especialmente para',
                style: bodyStyle,
                children: const <TextSpan>[
                  TextSpan(
                      text: ' você.',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ]),
          ),
          image: Center(child: _buildImage('images/coffee-up-cuate.png')),
          decoration: pageDecoration.copyWith(
            contentMargin: const EdgeInsets.symmetric(horizontal: 16),
          ),
        ),
        PageViewModel(
          title: "Compartilhe suas experiências",
          bodyWidget: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(style: bodyStyle, children: const <TextSpan>[
              TextSpan(
                text: 'Descubra novas ',
              ),
              TextSpan(
                  text: 'xícaras, ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xff8F542E))),
              TextSpan(text: 'compartilhe paixões e aproveite cada '),
              TextSpan(
                  text: 'gole ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xff8F542E))),
              TextSpan(text: 'nessa emocionante aventura cafeinada!')
            ]),
          ),
          image:
              Center(child: _buildImage('images/drinking-coffee-rafiki.png')),
          decoration: pageDecoration.copyWith(
            contentMargin: const EdgeInsets.symmetric(horizontal: 16),
          ),
        ),
        PageViewModel(
          title: "Não esqueça de anotar!",
          bodyWidget: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text:
                  'Registre suas tentativas e receitas no aplicativo para criar um diário pessoal das suas experiências com café.\n\nCada xícara é uma jornada única, e suas anotações tornarão cada gole ainda mais memorável.',
              style: bodyStyle,
            ),
          ),
          image: Center(child: _buildImage('images/cookbook-bro.png')),
          decoration: pageDecoration.copyWith(
            contentMargin: const EdgeInsets.symmetric(horizontal: 16),
          ),
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      showNextButton: true,
      showDoneButton: true,

      skip: Text('Pular',
          style: GoogleFonts.content(
              color: const Color(0xff8F542E), fontWeight: FontWeight.bold)),
      done: Text('Feito',
          style: GoogleFonts.content(
              color: const Color(0xff8F542E), fontWeight: FontWeight.bold)),
      next: const Icon(Icons.arrow_forward, color: Color(0xff8F542E)),
      //rtl: true, // Display as right-to-left
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        activeColor: Color(0xff8F542E),
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}

class FadeRouteTransition<T> extends PageRouteBuilder<T> {
  final Widget page;

  FadeRouteTransition({required this.page})
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var tween = Tween(begin: 0.0, end: 1.0);
              var opacityAnimation = animation.drive(tween);

              return FadeTransition(opacity: opacityAnimation, child: child);
            },
            transitionDuration: const Duration(milliseconds: 1000));
}
