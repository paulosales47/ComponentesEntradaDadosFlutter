import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {

  bool _receberNotificacoes = false;
  bool _receberSMS = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada Switch"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
/*            Switch(
              value: _escolhaUsuario,
              onChanged: (bool valor){
                setState(() {
                  _escolhaUsuario = valor;
                });
              },
            ),
            Text("Receber notificações")*/
          SwitchListTile(
              title: Text("Receber notificações"),
              subtitle: Text("Apenas 1 vez a cada 6 horas"),
              activeColor: Colors.yellow,
              value: _receberNotificacoes,
              onChanged: (bool valor){
                setState(() {
                  _receberNotificacoes = valor;
                });
              }),
            SwitchListTile(
                title: Text("Receber SMS"),
                subtitle: Text("Uma vez por dia"),
                activeColor: Colors.red,
                value: _receberSMS,
                onChanged: (bool valor){
                  setState(() {
                    _receberSMS = valor;
                  });
                }),
            RaisedButton(
              onPressed: (){
                _showDialog("Valores", "Receber notificações: $_receberNotificacoes \nReceber SMS: $_receberSMS");
              },
              color: Colors.lightGreen,
              textColor: Colors.white,
              child: Text(
                  "Salvar",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
              ),
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
