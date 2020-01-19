import 'package:flutter/material.dart';

class AlcoolGasolina extends StatefulWidget {
  @override
  _AlcoolGasolinaState createState() => _AlcoolGasolinaState();
}

class _AlcoolGasolinaState extends State<AlcoolGasolina> {

  var _textEditingControllerAlcool = TextEditingController();
  var _textEditingControllerGasolina = TextEditingController();
  String _mensagemUsuario = "";

  void _calcularVantagem(){
    double _valorAlcool = double.tryParse(_textEditingControllerAlcool.text);
    double _valorGasolina = double.tryParse(_textEditingControllerGasolina.text);

    if(_valorAlcool == null){
      _mensagemUsuario = "Valor do álcool inválido";
      return;
    }
    if(_valorGasolina == null){
      _mensagemUsuario = "Valor da gasolina inválido";
      return;
    }

    if(_valorAlcool > (_valorGasolina *0.7))
      _mensagemUsuario = "Abasteça com gasolina";
    else
      _mensagemUsuario = "Abasteça com álcool";

    _limparCampos();

    setState(() {});

  }

  void _limparCampos(){
    _textEditingControllerGasolina.text = "";
    _textEditingControllerAlcool.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou Gasolina"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset("images/logo.png"),
                Text("Saiba qual a melhor opção para abastecimento do seu carro",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 10),
                  child: TextField(
                    controller: _textEditingControllerAlcool,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Preço Álcool, ex: 1.59",
                    ),
                    style: TextStyle(
                        fontSize: 22
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: TextField(
                    controller: _textEditingControllerGasolina,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Preço Gasolina, ex: 3.15",
                    ),
                    style: TextStyle(
                        fontSize: 22
                    ),
                  ),
                ),
                RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  padding: EdgeInsets.all((15)),
                  onPressed: () => _calcularVantagem(),
                  child: Text("Calcular",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20
                    ),),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(_mensagemUsuario,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                    ),),
                )
              ],
            ),
        )
      ),
    );
  }
}
