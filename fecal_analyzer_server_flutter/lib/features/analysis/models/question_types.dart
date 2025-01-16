enum QuestionType {
  photo,
  singleChoice,
  freeText,
}

class Question {
  final String title;
  final QuestionType type;
  final List<String>? options;

  const Question({
    required this.title,
    required this.type,
    this.options,
  });
}