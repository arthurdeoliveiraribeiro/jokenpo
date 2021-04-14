import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.orange),
    home: Scaffold(
      appBar: AppBar(
        title: Text("App - Pedra Papel Tesoura"),      
      ),
      body: Column(
        children: [
          Text("Minha Imagem:"),
          Row(
             children: [
                Image.asset(
                  'imagens/indefinido.png',
                  height: 120,
                ),
                Text(
                  "VS"
                ),
                Image.asset(
                  'imagens/indefinido.png',
                  height: 120,
                ),
             ]
          ),
          Text(
                  "Placar"
          ),
          Row(
             children: [
                Column(
                  children: [
                    Text(
                        "Você"
                    ),
                    Container(
                      child: Text(
                          "4"
                      ),
                    ),
                    
                  ],
                ),
                Column(
                  children: [
                    Text(
                        "Empate"
                    ),
                    Container(
                      child: Text(
                          "2"
                      ),
                    ),
                    
                  ],
                ),
                Column(
                  children: [
                    Text(
                        "Máquina"
                    ),
                    Container(
                      child: Text(
                          "0"
                      ),
                    ),
                    
                  ],
                ),
             ]
          ),
          Text("Opção:"),
          Row(
             children: [
                Image.asset(
                  'imagens/indefinido.png',
                  height: 120,
                ),
                Image.asset(
                  'imagens/indefinido.png',
                  height: 120,
                ),
                
                Image.asset(
                  'imagens/indefinido.png',
                  height: 120,
                ),
             ]
          ),
          
      ],
      ),
    ),
  ));
}