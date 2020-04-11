import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      title: "Contador de Gatos",
      home: Home() ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _cat = 0;
  String _infoText = "Quantos Gatos";

  void _changeCat(int delta){
    setState(() {
      _cat +=delta;

      if(_cat < 0 ){
        _infoText = "Você não gosta de gatos";
      }
      else if (_cat >=0 && _cat <4){
        _infoText= "Você gosta de gatos";
      }
      else{
        _infoText= "A louca dos gatos";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/cat.jpg",
          fit: BoxFit.fill,
          height: 1000,
        ),
        Column(
          //coluna
          mainAxisAlignment:
          MainAxisAlignment.center, //alinhar coluna, vertical
          children: <Widget>[
            //childre: quantos filhos quiser
            Text(
              "Gatos: $_cat",
              style: TextStyle(color: Colors.greenAccent, fontSize: 25.0, fontWeight: FontWeight.bold),

            ),
            Row(
              mainAxisAlignment:
              MainAxisAlignment.center, //alinhar linha horizontal
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0), //parametro
                  child: FlatButton(
                    //child: um filho só
                    child: Text(
                      "+1",
                      style:
                      TextStyle(fontSize: 40.0, color: Colors.deepPurple),
                    ),
                    onPressed: () {
                      _changeCat(1);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text(
                      "-1",
                      style:
                      TextStyle(fontSize: 40.0, color: Colors.deepPurple),
                    ),
                    onPressed: () {
                      _changeCat(-1);
                    },
                  ),
                ),
              ],
            ),
            Text(
              _infoText,
              style: TextStyle(
                  color: Colors.greenAccent,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0),
            )
          ],
        )
      ],
    );
  }
}












