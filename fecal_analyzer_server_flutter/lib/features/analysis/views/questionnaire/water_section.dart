import 'package:flutter/material.dart';
import '../../../../shared/widgets/questionnaire_section.dart';
import 'stress_section.dart';

class WaterSection extends StatefulWidget {
  const WaterSection({super.key});

  @override
  State<WaterSection> createState() => _WaterSectionState();
}

class _WaterSectionState extends State<WaterSection> {
  String? selectedOption;

  final List<String> options = [
    'Menos de 2 vasos',
    '2-4 vasos',
    '4-6 vasos',
    '6-8 vasos',
    'Más de 8 vasos',
  ];

  @override
  Widget build(BuildContext context) {
    return QuestionnaireSection(
      title: 'Consumo de Agua',
      onNext: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const StressSection(),
          ),
        );
      },
      onBack: () => Navigator.of(context).pop(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Consumo diario de agua:',
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