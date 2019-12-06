// importação de todos widgets relacionados ao design
import 'package:flutter/material.dart';

//todo projeto começa pela função main
void main() {
  /**
   * Comando para rodar o app (necessita das labarys)
   */
  runApp(MaterialApp(
      title: "Contator de Pessoas", //título usado apenas internamente
      home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _pessoas = 0;
  String _infoText = "Pode Entrar!";

  void _mudaPessoas(int delta){
    setState(() {
      _pessoas += delta;

      if(_pessoas < 0){
        _infoText = "Mundo invertido?";
      }else if(_pessoas <10){
        _infoText = "Pode Entrar!";
      }else{
        _infoText = "Lotado!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
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
              "Pessoas: $_pessoas",
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
                    onPressed: () {
                      debugPrint("+1");
                      if(_pessoas < 10){
                        _mudaPessoas(1);
                      }else{
                        print("lotado!");
                      }
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text(
                      "-1",
                      style: TextStyle(fontSize: 40.0, color: Colors.white),
                    ),
                    onPressed: () {
                      debugPrint("-1");
                      _mudaPessoas(-1);
                    },
                  ),
                ),
              ],
            ),
            Text(
              _infoText,
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0),
            ),
          ],
        )
      ],
    );
  }
}

