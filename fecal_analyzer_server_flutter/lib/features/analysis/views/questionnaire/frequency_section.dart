import 'package:flutter/material.dart';
import '../../../../shared/widgets/questionnaire_section.dart';
import 'water_section.dart';

class FrequencySection extends StatefulWidget {
  const FrequencySection({super.key});

  @override
  State<FrequencySection> createState() => _FrequencySectionState();
}

class _FrequencySectionState extends State<FrequencySection> {
  String? selectedOption;

  final List<String> options = [
    'Varias veces al día',
    'Una vez al día',
    'Día por medio',
    'Menos de 3 veces por semana',
    'Más de 3 veces al día',
  ];

  @override
  Widget build(BuildContext context) {
    return QuestionnaireSection(
      title: 'Frecuencia',
      onNext: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const WaterSection(),
          ),
        );
      },
      onBack: () => Navigator.of(context).pop(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '¿Con qué frecuencia evacúas?',
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