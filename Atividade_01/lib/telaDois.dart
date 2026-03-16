import 'package:flutter/material.dart';

class TelaDois extends StatelessWidget {
  const TelaDois({super.key});

  Widget imagemCircular(String imagem) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey, width: 2),
      ),
      child: ClipOval(
        child: Image.asset(
          imagem,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pedra, Papel, Tesoura'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          const Text(
            'Escolha do APP',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),

          imagemCircular('assets/imagens/papel.png'),

          const SizedBox(height: 40),

          const Text(
            'Sua Escolha',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),

          imagemCircular('assets/imagens/pedra.png'),

          const SizedBox(height: 30),

          Image.asset(
            'assets/imagens/perder.png',
            width: 170,
          ),

          const SizedBox(height: 10),

          const Text(
            'Você Perdeu',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            ),

            onPressed: () {
              Navigator.pop(context);
            },

            child: const Text(
              "Jogar novamente",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),

        ],
      ),
    );
  }
}