import 'package:flutter/material.dart';
import '../../../../shared/widgets/questionnaire_section.dart';
import '../success_page.dart';

class FreeTextSection extends StatefulWidget {
  const FreeTextSection({super.key});

  @override
  State<FreeTextSection> createState() => _FreeTextSectionState();
}

class _FreeTextSectionState extends State<FreeTextSection> {
  final _medicationsController = TextEditingController();
  final _dietController = TextEditingController();
  final _allergiesController = TextEditingController();
  final _weightController = TextEditingController();
  final _symptomsController = TextEditingController();

  @override
  void dispose() {
    _medicationsController.dispose();
    _dietController.dispose();
    _allergiesController.dispose();
    _weightController.dispose();
    _symptomsController.dispose();
    super.dispose();
  }

  Widget _buildTextField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        maxLines: null,
        decoration: InputDecoration(
          labelText: label,
          alignLabelWithHint: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return QuestionnaireSection(
      title: 'Información Adicional',
      isLastSection: true,
      onNext: () {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const SuccessPage(),
          ),
          (route) => false,
        );
      },
      onBack: () => Navigator.of(context).pop(),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTextField('Medicamentos actuales', _medicationsController),
            _buildTextField('Cambios recientes en la dieta', _dietController),
            _buildTextField('Alergias/intolerancias alimentarias', _allergiesController),
            _buildTextField('Cambios recientes de peso', _weightController),
            _buildTextField('Síntomas digestivos actuales\n(hinchazón, dolor, etc.)', _symptomsController),
          ],
        ),
      ),
    );
  }
}