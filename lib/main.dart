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
          Padding(
            padding: const EdgeInsets.only(top: 10,bottom: 20),
            child: Text(
              "Disputa:",
              style: TextStyle(fontSize: 26),
            ),
          ),
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
                          "4",
                          style: TextStyle(fontSize: 16),
                      ),
                    ),
                    
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          "Empate",
                          
                      ),
                    ),
                    Container(
                      child: Text(
                          "2",
                          style: TextStyle(fontSize: 16),
                      ),
                    ),
                    
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          "Máquina"
                      ),
                    ),
                    Container(
                      child: Text(
                          "0",
                          style: TextStyle(fontSize: 16),
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