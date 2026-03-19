import 'package:flutter/material.dart';
import 'telaDois.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tela1(),
    );
  }
}

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pedra, Papel, Tesoura',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Column(
            children: [
              const SizedBox(height: 60),

              Center(
                child: ClipOval(
                  child: Image.asset(
                    'imagens/padrao.png',
                    width: 140,
                    height: 140,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        width: 140,
                        height: 140,
                        color: Colors.grey,
                        child: const Icon(Icons.broken_image, color: Colors.white, size: 50),
                      );
                    },
                  ),
                ),
              ),

              const SizedBox(height: 10),

              const Center(
                child: Text(
                  'Escolha do APP',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),

          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Sua Escolha',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const TelaDois()),
                          );
                        },
                        child: ClipOval(
                          child: Image.asset(
                            'imagens/pedra.png',
                            width: 90,
                            height: 90,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                width: 90,
                                height: 90,
                                color: Colors.grey[400],
                                child: const Icon(Icons.broken_image),
                              );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(width: 25),

                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const TelaDois()),
                          );
                        },
                        child: ClipOval(
                          child: Image.asset(
                            'imagens/papel.png',
                            width: 90,
                            height: 90,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                width: 90,
                                height: 90,
                                color: Colors.grey[400],
                                child: const Icon(Icons.broken_image),
                              );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(width: 25),

                      // Tesoura
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const TelaDois()),
                          );
                        },
                        child: ClipOval(
                          child: Image.asset(
                            'imagens/tesoura.png',
                            width: 90,
                            height: 90,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                width: 90,
                                height: 90,
                                color: Colors.grey[400],
                                child: const Icon(Icons.broken_image),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
