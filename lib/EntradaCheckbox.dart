import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  @override
  _EntradaCheckboxState createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {

  bool _comidaBrasileira = false;
  bool _comidaMexicana = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada checkbox"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
/*            Checkbox(
              value: _campoSelecionado,
              onChanged: (bool valor){
                   setState(() {
                     _campoSelecionado = valor;
                   });
              },
            ),*/
            CheckboxListTile(
                title: Text("Comida brasileira"),
                subtitle: Text("A melhor comida do mundo"),
                activeColor: Colors.red,
                secondary: Icon(Icons.add_box),
                value: _comidaBrasileira,
                onChanged: (bool valor) => {
                  setState((){
                    _comidaBrasileira = valor;
                  })
                }),
            CheckboxListTile(
                title: Text("Comida mexicana"),
                subtitle: Text("A melhor comida do mundo"),
                activeColor: Colors.yellow,
                secondary: Icon(Icons.add_box),
                value: _comidaMexicana,
                onChanged: (bool valor) => {
                  setState((){
                    _comidaMexicana = valor;
                  })
                }),
            RaisedButton(
              child: Text(
                  "Salvar",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: (){
                _showDialog(
                  "Valores",
                  "Comida brasileira: $_comidaBrasileira \nComida mexicana: $_comidaMexicana"
                );
              },
            )
          ],
        ),
      ),
    );
  }

  void _showDialog(String title, String content) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text(title),
          content: new Text(content),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
