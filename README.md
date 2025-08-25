# Accesible BLE App

Aplicación Flutter de ejemplo enfocada en **accesibilidad** (compatible con TalkBack en Android y VoiceOver en iOS).  
Incluye un **login sencillo** con credenciales hardcodeadas y persistencia local usando `shared_preferences`.  
Al iniciar sesión, el usuario es llevado a un **HomeScreen** que muestra un botón circular simulando una conexión Bluetooth, con animación visual y soporte de accesibilidad.

## Características

- **Login hardcodeado**:
  - Usuario: `demo`
  - Contraseña: `123456`
- **Persistencia de sesión** con `shared_preferences`.
- **Compatibilidad con lectores de pantalla** (TalkBack/VoiceOver).
- **Botón Bluetooth animado** (efecto de ondas pulsantes con `CustomPainter`).
- **Uso de GetX** para el manejo simple de estado y navegación.
- Diseño con `ThemeData` y colores personalizados.

## Estructura del proyecto

lib/
├── controllers/
│ └── auth_controller.dart # Lógica de autenticación y persistencia
├── screens/
│ ├── login_screen.dart # Pantalla de login
│ └── home_screen.dart # Pantalla principal con botón BLE
├── theme/
│ └── app_colors.dart # Paleta de colores de la app
├── widgets/
│ ├── ble_button.dart # Botón circular animado
│ └── signal_painter.dart # Efecto de ondas
└── main.dart # Punto de entrada de la aplicación

## Dependencias principales

- [flutter](https://flutter.dev/)
- [get](https://pub.dev/packages/get) – Manejo de estado y navegación
- [shared_preferences](https://pub.dev/packages/shared_preferences) – Almacenamiento local

## Instalación y uso

1. Clona este repositorio:
   ```bash
   git clone https://github.com/tu-usuario/accesible_ble.git
   cd accesible_ble
   ```
2. Instala dependencias:

   ```flutter pub get

   ```

3. Ejecuta en emulador o dispositivo físico:
   ```flutter run

   ```
