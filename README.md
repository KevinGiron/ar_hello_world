Despliegue de un objeto AR básico ("Hello World" en RA)
Tema

Introducción a Realidad Aumentada: Renderizado de objetos 3D

Descripción

Esta aplicación en Flutter demuestra la integración básica de Realidad Aumentada. Al ejecutar la app en un dispositivo físico, se abre la cámara, se detecta un plano o se usa un anclaje, y se renderiza un objeto 3D (cubo, esfera o logo de Flutter) en el mundo real.

El objetivo principal de este proyecto es validar que el entorno de desarrollo está correctamente configurado para trabajar con RA y demostrar un flujo básico de interacción con objetos 3D.

Librerías recomendadas

ar_flutter_plugin
 — Compatible con Android y iOS, recomendado para proyectos multiplataforma.

arkit_plugin
 — Solo para iOS, útil si se desea explotar funcionalidades específicas de ARKit.

Funcionalidades

Solicita permisos de cámara al iniciar.

Muestra la vista de la cámara en tiempo real.

Renderiza un objeto 3D en la escena:

Nivel Básico: Objeto aparece en una coordenada fija.

Nivel Recomendado: Objeto aparece al tocar la pantalla sobre una superficie detectada (hit test).

Código organizado: la vista de RA se encuentra en un widget separado, no en main.dart.

Requisitos

Dispositivo físico compatible con ARCore (Android) o ARKit (iOS).

Flutter actualizado a la versión estable más reciente.

Configuración de permisos en AndroidManifest.xml (Android) y Info.plist (iOS).

Instalación y Ejecución

Clonar el repositorio:

git clone <URL_DEL_REPOSITORIO>
cd <NOMBRE_DEL_PROYECTO>


Instalar dependencias:

flutter pub get


Ejecutar la app en un dispositivo físico:

flutter run


Conceder permisos de cámara cuando se soliciten.

Observar el objeto 3D renderizado en la escena.