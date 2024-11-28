import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hola Mundo',
      home: RecipeBook(),
    );
  }
}

class RecipeBook extends StatelessWidget {
  const RecipeBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF07265C),
        title: const Text(
          'Libro de Recetas',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: const Color(0xFFDCF8FB), // Fondo azul claro del Scaffold
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: const Color(0xFFDCF8FB), // Asegura que el fondo sea azul
              child: Center(
                child: Card(
                  elevation: 4, // Sombra opcional
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min, // Ajusta el tamaño del contenido
                      children: <Widget>[
                        // Imagen con bordes redondeados
                        SizedBox(
                          height: 125,
                          width: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/image.png', // Ruta de la imagen
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16), // Espaciado entre imagen y texto
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              'Esto es un texto',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8), // Espaciado vertical
                            const Text('El otro texto'),
                            const SizedBox(height: 8),
                            Container(
                              height: 2,
                              width: 75,
                              color: Colors.orange, // Línea decorativa
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
