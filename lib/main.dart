

import 'dart:math';

import 'package:flutter/material.dart';


class JogoPPT extends StatefulWidget {
  @override
  _JogoPPT createState() => _JogoPPT();
}

class _JogoPPT extends State<JogoPPT> {

  String  _imgUserPrayer = "imagens/indefinido.png";
  String  _imgAppPrayer = "imagens/indefinido.png";
  int vitoria = 0;
  int derrota = 0;
  int empate = 0;

  
  void _selecionaPedra(){
    if(_selecionarApp() == 0){
      setState(() {
        _imgUserPrayer ="imagens/pedra.png";
        return vitoria++;   
    });

    }
    else if(_selecionarApp() ==1){
      setState(() {
        _imgUserPrayer ="imagens/pedra.png";
        return empate++;
      
    });
    }
    else if(_selecionarApp() ==2){
      setState(() {
        _imgUserPrayer ="imagens/pedra.png";
        return derrota++;
      
    });
    }
     

    
  }
  void _selecionaPapel(){
    if(_selecionarApp() == 0){
      setState(() {
        _imgUserPrayer ="imagens/papel.png";
        return derrota++;   
    });

    }
    else if(_selecionarApp() ==1){
      setState(() {
        _imgUserPrayer ="imagens/papel.png";
        return vitoria++;
      
    });
    }
    else if(_selecionarApp() ==2){
      setState(() {
        _imgUserPrayer ="imagens/papel.png";
        return empate++;
      
    });
    }

  }
  void _selecionaTesoura(){
    if(_selecionarApp() == 0){
      setState(() {
        _imgUserPrayer ="imagens/tesoura.png";
        return empate++;   
    });

    }
    else if(_selecionarApp() ==1){
      setState(() {
        _imgUserPrayer ="imagens/tesoura.png";
        return derrota++;
      
    });
    }
    else if(_selecionarApp() ==2){
      setState(() {
        _imgUserPrayer ="imagens/tesoura.png";
        return vitoria++;
      
    });
    }
    
    
  }

   int _selecionarApp(){

    var ale = new Random().nextInt(3);
    if(ale == 0){
         _imgAppPrayer = "imagens/tesoura.png";
         print("teste ${ale}");
         return 0;
    }
    else if(ale == 1){
         _imgAppPrayer = "imagens/pedra.png";
         return 1;
    }
    else if(ale == 2){
         _imgAppPrayer = "imagens/papel.png";
         return 2;
    }
     
    setState(() {
       if(ale == 0){
         _imgAppPrayer = "imagens/tesoura.png";
         return 0;
       }
       else if(ale == 1){
         _imgAppPrayer = "imagens/pedra.png";
         return 1;
       }
       else if(ale == 2){
         _imgAppPrayer = "imagens/papel.png";
         return 2;
       }
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return 
      MaterialApp(
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
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               
                Image.asset(
                  _imgUserPrayer,
                  height: 120,
                ),
                Text(
                  "VS"
                ),
                Image.asset(
                  _imgAppPrayer,
                  height: 120,
                ),
             ]
          ),
          Padding(
            
            padding: const EdgeInsets.all(8.0),
            
            child: Text(
                  
                    "Placar"
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          "Você"
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Text(
                            
                            "${vitoria}",
                            style: TextStyle(fontSize: 16),
                        ),
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Text(
                           "${empate}",
                            style: TextStyle(fontSize: 16),
                        ),
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Text(
                            "${derrota}",
                            style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    
                  ],
                ),
             ]
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Opção:"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [

                GestureDetector(
                  onTap: () => _selecionaPedra(),
                  child: Image.asset(
                  'imagens/pedra.png',
                  height: 120,
                ),

                ),
                
                GestureDetector(
                  onTap: () => _selecionaPapel(),
                  child: Image.asset(
                  'imagens/papel.png',
                  height: 120,
                ),

                ),
                
                GestureDetector(
                  onTap: () => _selecionaTesoura(),
                  child: Image.asset(
                  'imagens/tesoura.png',
                  height: 120,
                ),

                ),
             ]
          ),
          
      ],
      ),
    ),
  );

  }
}

void main() {
  runApp(JogoPPT());
}