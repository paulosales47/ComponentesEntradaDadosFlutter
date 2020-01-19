import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

  var _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Informe um valor: ",
              ),
              maxLength: 5,
              maxLengthEnforced: false,
              style: TextStyle(
                fontSize: 25,
                color: Colors.indigo
              ),
              obscureText: false,
/*              onChanged: (String texto){
                setState(() {
                  _valorInformado = texto;
                });
              },*/
              onSubmitted: (String texto){

              },
              controller: _textEditingController,
            ),
            RaisedButton(
              child: Text("Salvar"),
              color: Colors.green,
              onPressed: (){
                setState(() {});
              },
            ),
            Text(_textEditingController.text),
          ],
        ),
      )
    );
  }
}

