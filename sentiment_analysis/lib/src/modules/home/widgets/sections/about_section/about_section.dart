import 'package:flutter/material.dart';
import 'package:sentiment_analysis/src/global/common/information_container.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 72),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: InformationContainer(
              title: 'Sobre',
              description:
                  'Bem-vindo à nossa Plataforma de Análise de Sentimento! Nosso sistema foi desenvolvido para oferecer uma experiência intuitiva e eficiente na análise de sentimentos em textos. Combinando técnicas avançadas de processamento de linguagem natural e aprendizado de máquina, nossa plataforma é capaz de identificar e classificar sentimentos em mensagens de forma precisa e rápida.',
            ),
          ),
          Image.asset(
            'assets/images/masks.png',
            width: 432 / 1440 * width,
            height: 275 / 1080 * height,
          ),
        ],
      ),
    );
  }
}
