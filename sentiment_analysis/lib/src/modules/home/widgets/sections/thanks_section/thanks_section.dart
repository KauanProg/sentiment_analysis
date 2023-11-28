import 'package:flutter/material.dart';
import 'package:sentiment_analysis/src/global/common/information_container.dart';

class ThanksSection extends StatelessWidget {
  const ThanksSection({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;

    return Row(
      children: [
        const Expanded(
          child: InformationContainer(
            title: 'Agradecimentos',
            description:
                'Em nome de todos aqueles cujas vidas foram tocadas e transformadas pelo trabalho excepcional do Mandacaru.dev, gostaríamos de expressar nossa profunda gratidão. O compromisso em lapidar talentos no sertão do Ceará e apresentar oportunidades de trabalho remoto no mercado financeiro nacional é uma contribuição inestimável para o desenvolvimento de uma comunidade mais resiliente e promissora.',
          ),
        ),
        Image.asset(
          'assets/images/collaborators.png',
          width: 505 / 1440 * width,
          height: 270 / 1080 * height,
        ),
      ],
    );
  }
}
