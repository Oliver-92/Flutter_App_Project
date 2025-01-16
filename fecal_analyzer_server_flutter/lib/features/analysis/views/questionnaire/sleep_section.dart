import 'package:flutter/material.dart';
import '../../../../shared/widgets/questionnaire_section.dart';
import 'antibiotics_section.dart';

class SleepSection extends StatefulWidget {
  const SleepSection({super.key});

  @override
  State<SleepSection> createState() => _SleepSectionState();
}

class _SleepSectionState extends State<SleepSection> {
  String? selectedOption;

  final List<Map<String, String>> options = [
    {'option': 'Excelente (7-9 horas)', 'icon': '😊'},
    {'option': 'Buena (6-7 horas)', 'icon': '🙂'},
    {'option': 'Regular (5-6 horas)', 'icon': '😐'},
    {'option': 'Mala (menos de 5 horas)', 'icon': '😟'},
    {'option': 'Irregular', 'icon': '🤔'},
  ];

  @override
  Widget build(BuildContext context) {
    return QuestionnaireSection(
      title: 'Calidad del Sueño',
      onNext: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const AntibioticsSection(),
          ),
        );
      },
      onBack: () => Navigator.of(context).pop(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Calidad del sueño:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 24),
          ...options.map((option) => Container(
                margin: const EdgeInsets.symmetric(vertical: 4),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(
                      color: selectedOption == option['option']
                          ? Theme.of(context).colorScheme.primary
                          : Colors.grey.shade300,
                    ),
                  ),
                  leading: Text(
                    option['icon']!,
                    style: const TextStyle(fontSize: 24),
                  ),
                  title: Text(option['option']!),
                  onTap: () {
                    setState(() {
                      selectedOption = option['option'];
                    });
                  },
                  selected: selectedOption == option['option'],
                  selectedTileColor: Theme.of(context).colorScheme.primary.withAlpha(25),
                ),
              )),
        ],
      ),
    );
  }
}