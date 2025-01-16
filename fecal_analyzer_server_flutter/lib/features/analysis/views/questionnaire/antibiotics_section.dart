import 'package:flutter/material.dart';
import '../../../../shared/widgets/questionnaire_section.dart';
import 'free_text_section.dart';

class AntibioticsSection extends StatefulWidget {
  const AntibioticsSection({super.key});

  @override
  State<AntibioticsSection> createState() => _AntibioticsSectionState();
}

class _AntibioticsSectionState extends State<AntibioticsSection> {
  String? selectedOption;

  final List<String> options = [
    'Sí, actualmente tomando',
    'Sí, en el último mes',
    'Sí, en los últimos 3 meses',
    'No',
    'No estoy seguro/a',
  ];

  @override
  Widget build(BuildContext context) {
    return QuestionnaireSection(
      title: 'Uso de Antibióticos',
      onNext: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const FreeTextSection(),
          ),
        );
      },
      onBack: () => Navigator.of(context).pop(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Uso reciente de antibióticos:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 24),
          ...options.map((option) => RadioListTile(
                value: option,
                groupValue: selectedOption,
                title: Text(option),
                onChanged: (value) {
                  setState(() {
                    selectedOption = value as String;
                  });
                },
              )),
        ],
      ),
    );
  }
}