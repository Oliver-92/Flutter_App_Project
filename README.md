## 📁 Estructura del Proyecto

```plaintext
FECAL_ANALYZER_PROJECT
 ├──.github
 ├──fecal_analyzer_server_client
 ├──fecal_analyzer_server_flutter
 │   ├──.dart_tool
 │   ├──.idea
 │   ├──android
 │   ├──build
 │   ├──ios
 │   ├──lib/
 │   │   ├── core/
 │   │   │   ├── constants/         # Constantes globales de la aplicación
 │   │   │   ├── services/          # Servicios (futura integración con Serverpod)
 │   │   │   └── utils/            # Utilidades y helpers
 │   │   ├── features/
 │   │   │   └── analysis/
 │   │   │       ├── models/
 │   │   │       │   └── analysis_model.dart
 │   │   │       │   └── question_types.dart  # Definición de tipos de preguntas
 │   │   │       ├── viewmodels/
 │   │   │       │   └── analysis_viewmodel.dart  # Lógica de negocio
 │   │   │       └── views/
 │   │   │           ├── welcome_page.dart    # Página inicial
 │   │   │           ├── success_page.dart    # Página de éxito
 │   │   │           └── questionnaire/       # Secciones del cuestionario
 │   │   │               ├── photo_section.dart
 │   │   │               ├── frequency_section.dart
 │   │   │               ├── water_section.dart
 │   │   │               ├── stress_section.dart
 │   │   │               ├── sleep_section.dart
 │   │   │               ├── antibiotics_section.dart
 │   │   │               └── free_text_section.dart
 │   │   ├── shared/
 │   │   │   ├── widgets/
 │   │   │   │   └── questionnaire_section.dart  # Widget base para secciones
 │   │   │   └── theme/
 │   │   │       └── app_theme.dart  # Configuración del tema
 │   │   └── main.dart              # Punto de entrada de la aplicación
 │   ├──linux
 │   ├──macos
 │   ├──test
 │   ├──web
 │   ├──windows
 │   ├──.flutter_plugins
 │   ├──.flutter_plugins_dependecies
 │   ├──.gitignore
 │   ├──.metadata
 │   ├──analysis_options.yaml
 │   ├──fecal_analyzer_server_flutter.iml
 │   ├──pubspec.yaml
 │   └──README.md
 ├──fecal_analyzer_server_server            # Imágenes y recursos
 └──README.md
```