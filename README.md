## 📁 Estructura del Proyecto

```plaintext
FECAL_ANALYZER_PROJECT
 ├──.github                        # Configuraciones y workflows de GitHub
 ├──docs                          # Documentación y archivos para GitHub Pages
 ├──fecal_analyzer_server_client   # Cliente generado por Serverpod para comunicación con el servidor
 ├──fecal_analyzer_server_flutter  # Aplicación principal Flutter
 │   ├──.dart_tool                    # Cache y herramientas de Dart (generado automáticamente)
 │   ├──.idea                         # Configuración del IDE IntelliJ/Android Studio
 │   ├──android                       # Configuración específica para Android
 │   ├──build                        # Directorio de compilación (generado)
 │   ├──ios                          # Configuración específica para iOS
 │   ├──lib/                          # Código fuente de la aplicación Flutter
 │   │   ├── core/                         # Núcleo de la aplicación
 │   │   │   ├── constants/         # Constantes globales de la aplicación
 │   │   │   ├── services/          # Servicios (futura integración con Serverpod)
 │   │   │   └── utils/            # Utilidades y helpers
 │   │   ├── features/                # Funcionalidades específicas de la aplicación
 │   │   │   └── analysis/                     # Módulo principal de análisis
 │   │   │       ├── models/                   # Modelos de datos que representan la estructura de los análisis
 │   │   │       │   └── analysis_model.dart   # Modelo principal para el análisis
 │   │   │       │   └── question_types.dart   # Enumeraciones y tipos de preguntas
 │   │   │       ├── viewmodels//              # Lógica de negocio (MVVM)
 │   │   │       │   └── analysis_viewmodel.dart # ViewModel principal - Lógica de negocio
 │   │   │       └── views/                   # Interfaces de usuario
 │   │   │           ├── welcome_page.dart    # Página inicial
 │   │   │           ├── success_page.dart    # Pantalla de finalización
 │   │   │           └── questionnaire/       # Secciones del cuestionario
 │   │   │               ├── photo_section.dart          # Captura de imagen
 │   │   │               ├── frequency_section.dart      # Frecuencia de deposiciones
 │   │   │               ├── water_section.dart          # Consumo de agua
 │   │   │               ├── stress_section.dart         # Nivel de estrés
 │   │   │               ├── sleep_section.dart          # Calidad del sueño
 │   │   │               ├── antibiotics_section.dart    # Uso de antibióticos
 │   │   │               └── free_text_section.dart      # Comentarios adicionales
 │   │   ├── shared/                  # Componentes compartidos entre diferentes funcionalidades
 │   │   │   ├── widgets/                      # Widgets reutilizables
 │   │   │   │   └── questionnaire_section.dart # Widget base para secciones del cuestionario
 │   │   │   └── theme/                        # Configuración de estilos
 │   │   │       └── app_theme.dart           # Tema global de la aplicación
 │   │   └── main.dart              # Punto de entrada de la aplicación
 │   ├──linux                        # Configuración específica para Linux
 │   ├──macos                        # Configuración específica para macOS
 │   ├──test
 │   ├──web                          # Configuración específica para Web
 │   ├──windows                      # Configuración específica para Windows
 │   ├──.flutter_plugins             # Registro de plugins (generado)
 │   ├──.flutter_plugins_dependecies # Dependencias de plugins (generado)
 │   ├──.gitignore                   # Archivos ignorados por git
 │   ├──.metadata                    # Metadata del proyecto Flutter
 │   ├──analysis_options.yaml        # Configuración del analizador de Dart
 │   ├──fecal_analyzer_server_flutter.iml
 │   ├──pubspec.yaml                 # Dependencias y configuración del proyecto
 │   └──README.md                    # Documentación específica de la app Flutter
 ├──fecal_analyzer_server_server   # Servidor Serverpod (pendiente de implementación)
 └──README.md                      # Documentación principal del proyecto
```