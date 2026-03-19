import 'package:flutter/material.dart';

class TelaDois extends StatelessWidget {
  const TelaDois({super.key});

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
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10),

            ClipOval(
              child: Image.asset(
                'imagens/papel.png',
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

            const SizedBox(height: 10),

            const Text(
              'Escolha do APP',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 40),

            ClipOval(
              child: Image.asset(
                'imagens/pedra.png',
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

            const SizedBox(height: 10),

            const Text(
              'Sua escolha',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 30),

            // RESULTADO
            ClipOval(
              child: Image.asset(
                'imagens/perder.png',
                width: 170,
                height: 170,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 170,
                    height: 170,
                    color: Colors.grey[300],
                    child: const Icon(Icons.broken_image, size: 70),
                  );
                },
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Voce Perdeu/venceu',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Jogar novamente",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
