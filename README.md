## 📁 Estructura del Proyecto

```plaintext
FECAL_ANALYZER_PROJECT
 ├──.github                         # Configuraciones relacionadas con GitHub, como flujos de trabajo de GitHub Actions
 ├──docs                             # Carpeta para montar la web en GitHub Pages
 ├──fecal_analyzer_server_client      # Cliente (posiblemente front-end) de la aplicación
 ├──fecal_analyzer_server_flutter     # Proyecto Flutter que implementa la aplicación móvil/web
 │   ├──.dart_tool                   # Archivos generados por Dart para gestionar las dependencias y compilaciones
 │   ├──.idea                        # Configuración de IDE (en este caso, probablemente IntelliJ o Android Studio)
 │   ├──android                      # Archivos específicos de la plataforma Android para la app móvil
 │   ├──build                         # Archivos generados durante la compilación, se puede limpiar si es necesario
 │   ├──ios                           # Archivos específicos de la plataforma iOS para la app móvil
 │   ├──lib/                          # Código fuente de la aplicación Flutter
 │   │   ├── core/                    # Contiene componentes centrales de la aplicación
 │   │   │   ├── constants/           # Constantes globales de la aplicación (por ejemplo, valores predefinidos)
 │   │   │   ├── services/            # Servicios que manejarán tareas específicas, como la integración futura con Serverpod
 │   │   │   └── utils/               # Utilidades generales y helpers utilizados en diversas partes de la app
 │   │   ├── features/                # Funcionalidades específicas de la aplicación
 │   │   │   └── analysis/            # Funcionalidad relacionada con el análisis (quiz o test)
 │   │   │       ├── models/          # Modelos de datos que representan la estructura de los análisis
 │   │   │       │   └── analysis_model.dart  # Modelo de análisis, estructura de los datos recolectados
 │   │   │       │   └── question_types.dart  # Definición de los diferentes tipos de preguntas en el cuestionario
 │   │   │       ├── viewmodels/      # Lógica de negocio y controladores de las vistas
 │   │   │       │   └── analysis_viewmodel.dart  # Lógica de negocio para el análisis
 │   │   │       └── views/           # Vistas que se mostrarán al usuario
 │   │   │           ├── welcome_page.dart    # Página de bienvenida o introducción
 │   │   │           ├── success_page.dart    # Página de éxito que se muestra cuando se completa el cuestionario
 │   │   │           └── questionnaire/       # Secciones individuales del cuestionario
 │   │   │               ├── photo_section.dart  # Sección donde se solicitan fotos al usuario
 │   │   │               ├── frequency_section.dart  # Sección donde se pregunta sobre la frecuencia de ciertos comportamientos
 │   │   │               ├── water_section.dart  # Sección sobre la ingesta de agua
 │   │   │               ├── stress_section.dart  # Sección sobre niveles de estrés
 │   │   │               ├── sleep_section.dart  # Sección sobre patrones de sueño
 │   │   │               ├── antibiotics_section.dart  # Sección sobre uso de antibióticos
 │   │   │               └── free_text_section.dart  # Sección para respuestas libres del usuario
 │   │   ├── shared/                  # Componentes compartidos entre diferentes funcionalidades
 │   │   │   ├── widgets/             # Componentes reutilizables como widgets
 │   │   │   │   └── questionnaire_section.dart  # Widget base para cada sección del cuestionario
 │   │   │   └── theme/               # Archivos de configuración del tema visual de la app
 │   │   │       └── app_theme.dart   # Configuración del tema (colores, tipografía, etc.)
 │   │   └── main.dart                # Punto de entrada de la aplicación Flutter
 │   ├──linux                         # Archivos específicos para ejecutar la aplicación en Linux
 │   ├──macos                         # Archivos específicos para ejecutar la aplicación en macOS
 │   ├──test                           # Archivos de pruebas unitarias para la aplicación Flutter
 │   ├──web                            # Archivos relacionados con la versión web de la aplicación
 │   ├──windows                        # Archivos específicos para ejecutar la aplicación en Windows
 │   ├──.flutter_plugins              # Archivos generados por Flutter para gestionar los plugins
 │   ├──.flutter_plugins_dependecies  # Dependencias de plugins de Flutter
 │   ├──.gitignore                    # Configuración para excluir archivos innecesarios en Git
 │   ├──.metadata                     # Información sobre el proyecto Flutter
 │   ├──analysis_options.yaml         # Archivo de configuración para el análisis de código en Flutter
 │   ├──fecal_analyzer_server_flutter.iml  # Archivo de configuración de IntelliJ o Android Studio
 │   ├──pubspec.yaml                  # Archivo de configuración de dependencias y recursos de Flutter
 │   └──README.md                     # Documento con información sobre el proyecto
 ├──fecal_analyzer_server_server      # Recursos y archivos relacionados con el servidor (posiblemente imágenes, configuraciones del backend)
 └──README.md                         # Documento principal que describe el proyecto y cómo usarlo
```