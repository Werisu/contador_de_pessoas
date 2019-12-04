// importação de todos widgets relacionados ao design
import 'package:flutter/material.dart';

//todo projeto começa pela função main
void main() {
  /**
   * Comando para rodar o app (necessita das labarys)
   */
  runApp(MaterialApp(
      title: "Contator de Pessoas", //título usado apenas internamente
      home: Stack(
        children: <Widget>[
          Image.asset(
            "imagens/img1.jpg",
            fit: BoxFit.cover,
            height: 1000.0
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Pessoas: 0",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      child: Text(
                        "+1",
                        style: TextStyle(fontSize: 40.0, color: Colors.white),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      child: Text(
                        "-1",
                        style: TextStyle(fontSize: 40.0, color: Colors.white),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              Text(
                "Pode Entrar!",
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 30.0),
              )
            ],
          )
        ],
      )));
}
