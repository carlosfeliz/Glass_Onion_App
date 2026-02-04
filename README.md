# Glass Onion: Knives Out App

Bienvenido al repositorio de la aplicación móvil **Glass Onion: Knives Out**. Este proyecto es una aplicación desarrollada en Flutter que sirve como una experiencia inmersiva para los fanáticos de la película "Glass Onion: A Knives Out Mystery".

## 📋 Descripción del Proyecto

Esta aplicación ofrece a los usuarios una forma interactiva de explorar el mundo de la película, conocer a los personajes, revivir momentos clave y conectar con la experiencia personal del desarrollador. La aplicación destaca por su uso de elementos multimedia como música de fondo, videos integrados y animaciones.

## 🏗 Arquitectura del Proyecto

**Estado Actual: Arquitectura Basada en Pantallas (Screen-Based / View-Controller)**

Este proyecto **NO** implementa actualmente una "Clean Architecture" (Arquitectura Limpia) completa con separación estricta de capas (Data, Domain, Presentation).

En su lugar, utiliza una estructura más simple y directa, ideal para aplicaciones orientadas a la presentación de contenido o prototipos rápidos. La lógica de negocio y los datos están contenidos principalmente dentro de los widgets de las pantallas (`Sensible UI logic`).

### Estructura de Directorios (`lib/`)
*   **`main.dart`**: Punto de entrada de la aplicación. Configura el tema y lanza el `SplashScreen`.
*   **`screens/`**: Contiene todas las pantallas de la aplicación.
    *   `splash_screen.dart`: Pantalla de introducción.
    *   `home_screen.dart`: Menú principal con fondo animado y música.
    *   `characters_screen.dart`: Lista de personajes con descripciones detalladas en modales.
    *   `MomentDetailsScreen.dart`: (Contiene `MomentsScreen` y `MomentDetailsScreen`) Lista y detalles de momentos destacados con videos de YouTube.
    *   `about_screen.dart`: Información sobre la trama y el elenco de la película.
    *   `my_life_screen.dart`: Sección personal con reflexiones y video.
    *   `contact_screen.dart`: Portafolio y contacto del desarrollador.

## 🚀 Características Principales

1.  **Experiencia Inmersiva**:
    *   Música de fondo (`intro.mp3`) que se reproduce al iniciar.
    *   Pantalla de inicio con fondo animado que se desvanece suavemente.

2.  **Exploración de Personajes**:
    *   Lista visual de los personajes principales (Benoit Blanc, Miles Bron, etc.).
    *   Modales detallados con biografía e imágenes de alta calidad.

3.  **Momentos Clave**:
    *   Colección de escenas memorables de la película.
    *   Integración con YouTube para reproducir clips directamente en la app.

4.  **Información de la Película**:
    *   Sinopsis detallada, resumen de la trama y lista del elenco principal.

5.  **Sección Personal**:
    *   "En mi vida": Una reflexión sobre el impacto de la película.
    *   "Contacto": Tarjeta de presentación del desarrollador con enlaces funcionales a correo y teléfono.

## 🛠 Tecnologías y Paquetes Utilizados

*   **Flutter & Dart**: Framework principal.
*   **audioplayers**: Para la reproducción de música de fondo y efectos de sonido.
*   **youtube_player_flutter**: Para incrustar y reproducir videos de YouTube.
*   **url_launcher**: Para abrir aplicaciones externas (correo electrónico, teléfono).
*   **flutter_gif**: (Incluido en dependencias) Para manejo de GIFs animados.

## 🏁 Cómo Ejecutar el Proyecto

1.  **Requisitos Previos**: Asegúrate de tener Flutter instalado y configurado en tu entorno.
    ```bash
    flutter doctor
    ```

2.  **Clonar el Repositorio** (si aplica):
    ```bash
    git clone <url-del-repositorio>
    ```

3.  **Instalar Dependencias**:
    ```bash
    flutter pub get
    ```

4.  **Ejecutar la Aplicación**:
    ```bash
    flutter run
    ```

---
**Desarrollado por:**  Carlos Alberto Feliz Recio
