import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/analysis_model.dart';

final analysisViewModelProvider = StateNotifierProvider<AnalysisViewModel, AsyncValue<List<AnalysisModel>>>((ref) {
  return AnalysisViewModel();
});

class AnalysisViewModel extends StateNotifier<AsyncValue<List<AnalysisModel>>> {
  AnalysisViewModel() : super(const AsyncValue.loading());

  Future<void> uploadImage(String imagePath) async {
    try {
      state = const AsyncValue.loading();
      // Aquí implementaremos la lógica de carga de imágenes
      
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> submitAnalysis(Map<String, dynamic> answers) async {
    try {
      state = const AsyncValue.loading();
      // Aquí implementaremos la lógica del formulario
      
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}