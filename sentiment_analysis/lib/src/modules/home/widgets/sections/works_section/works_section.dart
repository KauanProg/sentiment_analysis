import 'package:flutter/material.dart';
import 'package:sentiment_analysis/src/global/common/information_container.dart';

class WorksSection extends StatelessWidget {
  const WorksSection({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 72),
      child: Row(
        children: [
          Image.asset(
            'assets/images/emotions.png',
            width: 619 / 1440 * width,
            height: 185 / 1080 * height,
          ),
          const Expanded(
            child: InformationContainer(
              title: 'Como funciona?',
              description:
                  'Nosso modelo utiliza uma combinação de técnicas avançadas, incluindo pré-processamento de texto, vetorização e um algoritmo de classificação de sentimentos treinado. Cada etapa foi cuidadosamente desenvolvida para garantir precisão e eficiência na análise de sentimentos, tornando nosso sistema uma ferramenta confiável para suas necessidades de compreensão textual.',
            ),
          ),
        ],
      ),
    );
  }
}
