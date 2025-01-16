class AnalysisModel {
  final String id;
  final String imageUrl;
  final DateTime date;
  final String? result;
  final Map<String, dynamic>? answers;

  AnalysisModel({
    required this.id,
    required this.imageUrl,
    required this.date,
    this.result,
    this.answers,
  });

  factory AnalysisModel.fromJson(Map<String, dynamic> json) {
    return AnalysisModel(
      id: json['id'] as String,
      imageUrl: json['imageUrl'] as String,
      date: DateTime.parse(json['date'] as String),
      result: json['result'] as String?,
      answers: json['answers'] as Map<String, dynamic>?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'imageUrl': imageUrl,
      'date': date.toIso8601String(),
      'result': result,
      'answers': answers,
    };
  }
}