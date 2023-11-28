import 'package:flutter/material.dart';
import 'package:sentiment_analysis/src/global/themes/typography.dart';

import 'components/mycard.dart';

class StepsSection extends StatelessWidget {
  const StepsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 670,
      padding: const EdgeInsets.symmetric(horizontal: 72),
      child: Column(
        children: [
          Text('Etapas do Desafio', style: AppTypography.fontStyleEpilogue32()),
          const SizedBox(height: 56),
          const Row(
            children: [
              MyCard(
                title: 'Análise Exploratória de Dados',
                description: 'Explorar padrões e desafios nos dados, expondo insights cruciais para o classificador de sentimentos.',
              ),
              SizedBox(width: 32),
              MyCard(
                title: 'Tratamento dos Dados',
                description: 'Realizar pré-processamento, limpando texto, aplicando tokenização e removendo stop words para preparação eficaz.',
              ),
              SizedBox(width: 32),
              MyCard(
                title: 'Seleção, Treinamento e Otimização do Algoritmo',
                description: 'Explorar SVM, Naive Bayes ou redes neurais para escolher o mais adequado. Treinar e otimizar para alta performance.',
              ),
            ],
          ),
          const SizedBox(height: 56),
          const Row(
            children: [
              MyCard(
                title: 'Análise de Importância de Variáveis e Interpretabilidade',
                description: 'Identificar palavras-chave influentes e tornar o modelo mais interpretável para compreender decisões.',
              ),
              SizedBox(width: 32),
              MyCard(
                title: 'Validação dos Resultados e Performance do Algoritmo',
                description: 'Realizar validação robusta utilizando técnicas como validação cruzada, matriz de confusão e curvas de aprendizado.',
              ),
              SizedBox(width: 32),
              MyCard(
                title: 'Documentação no Repositório GitHub',
                description: 'Documentar cada passo, gráficos e resultados no GitHub para compreensão clara do desenvolvimento.',
              ),
            ],
          )
        ],
      ),
    );
  }
}