import 'package:flutter/material.dart';
import '../../../../shared/widgets/questionnaire_section.dart';
import 'sleep_section.dart';

class StressSection extends StatefulWidget {
  const StressSection({super.key});

  @override
  State<StressSection> createState() => _StressSectionState();
}

class _StressSectionState extends State<StressSection> {
  String? selectedOption;

  final List<String> options = [
    'Bajo',
    'Moderado',
    'Alto',
    'Severo',
  ];

  // Mapeo de opciones a colores para visualización
  Color _getColorForStressLevel(String level) {
    switch (level) {
      case 'Bajo':
        return Colors.green;
      case 'Moderado':
        return Colors.yellow.shade700;
      case 'Alto':
        return Colors.orange;
      case 'Severo':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return QuestionnaireSection(
      title: 'Nivel de Estrés',
      onNext: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const SleepSection(),
          ),
        );
      },
      onBack: () => Navigator.of(context).pop(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Nivel de estrés actual:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 24),
          ...options.map((option) => Container(
                margin: const EdgeInsets.symmetric(vertical: 4),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(
                      color: selectedOption == option
                          ? Theme.of(context).colorScheme.primary
                          : Colors.grey.shade300,
                    ),
                  ),
                  leading: Icon(
                    Icons.circle,
                    color: _getColorForStressLevel(option),
                  ),
                  title: Text(option),
                  onTap: () {
                    setState(() {
                      selectedOption = option;
                    });
                  },
                  selected: selectedOption == option,
                  selectedTileColor: Theme.of(context).colorScheme.primary.withAlpha(25),
                ),
              )),
        ],
      ),
    );
  }
}