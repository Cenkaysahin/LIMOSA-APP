import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:appjam/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroductionScreen(
      globalBackgroundColor: const Color(0xffF7F6BB),
      dotsDecorator: const DotsDecorator(activeColor: Color(0xff114232)),
      pages: [
        PageViewModel(
          title: "Bütçe senden planlama bizden!",
          body:
              "Bütçene göre şehrinde dolu dolu bir gün geçirmek ister misin? O zaman yana kaydır.",
          image: const Center(
            child: Text("💵", style: TextStyle(fontSize: 100.0)),
          ),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(color: Colors.orange),
            bodyTextStyle:
                TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
          ),
        ),
        PageViewModel(
          title: "Nasıl gideceğini düşünme, biz biliyoruz!",
          body:
              "Gezgin kuş Limosa, gideceğin yere bütçene en uygun ulaşım seçeneğini sunacak.",
          image: const Center(
            child: Text("🚉 ", style: TextStyle(fontSize: 100.0)),
          ),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(color: Colors.orange),
            bodyTextStyle:
                TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
          ),
        ),
        PageViewModel(
          title: "Şehrin keşfedilmeyi bekliyor!",
          body:
              "Limosa ile çeşit çeşit etkinliklerle şehrinin yerel serüvenlerine kanat ver.",
          image: const Center(
            child: Text("🎉", style: TextStyle(fontSize: 100.0)),
          ),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(color: Colors.orange),
            bodyTextStyle:
                TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
          ),
        ),
        PageViewModel(
          titleWidget: DefaultTextStyle(
            style: const TextStyle(
                fontSize: 30.0,
                color: Colors.orange
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText('Çok gezen değil'),
                WavyAnimatedText('Çok Limosalayan bilir!'),
              ],
              isRepeatingAnimation: true,
            ),
          ),
          image: Image.asset('images/infoimg.png'),
          body: '',
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(color: Colors.orange, fontSize: 30),
          ),
        ),
      ],
      showNextButton: false,
      done: const Text(
        "Bitti",
        style: TextStyle(color: Color(0xff114232)),
      ),
      onDone: () {
        // On button pressed
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
            (route) => false);
      },
    ));
  }
}
