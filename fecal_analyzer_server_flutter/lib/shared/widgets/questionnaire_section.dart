import 'package:flutter/material.dart';

class QuestionnaireSection extends StatelessWidget {
  final String title;
  final Widget child;
  final VoidCallback onNext;
  final VoidCallback onBack;
  final bool isLastSection;

  const QuestionnaireSection({
    super.key,
    required this.title,
    required this.child,
    required this.onNext,
    required this.onBack,
    this.isLastSection = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: BackButton(onPressed: onBack),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(child: child),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: onNext,
                child: Text(isLastSection ? 'Enviar cuestionario' : 'Siguiente'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}