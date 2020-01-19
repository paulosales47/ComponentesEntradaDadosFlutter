import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {
  @override
  _EntradaRadioButtonState createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {

  String _escolhaUsuario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada RadioButton"),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
/*            Text("Masculino"),
            Radio(
              value: "M",
              groupValue: _escolhaUsuario,
              onChanged: (String valor){
                  setState(() {
                    _escolhaUsuario = valor;
                  });
              },
            ),

            Text("Feminino"),
            Radio(
              value: "F",
              groupValue: _escolhaUsuario,
              onChanged: (String valor){
                setState(() {
                  _escolhaUsuario = valor;
                });
              },
            ),*/
            RadioListTile(
                title: Text("Masculino"),
                value: "M",
                groupValue: _escolhaUsuario,
                onChanged: (String valor) {
                  setState(() {
                    _escolhaUsuario = valor;
                  });
                }),
            RadioListTile(
                title: Text("Feminino"),
                value: "F",
                groupValue: _escolhaUsuario,
                onChanged: (String valor) {
                  setState(() {
                    _escolhaUsuario = valor;
                  });
                }),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text(
                "Salvar",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),),
              onPressed: (){
                _showDialog("Valores", "Opção selecionada: $_escolhaUsuario");
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
