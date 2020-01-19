import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  @override
  _EntradaSliderState createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {
  double _valorSlider = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada Slider"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 48),
            ),
            Slider(
                value: _valorSlider,
                min: 0,
                max: 10,
                label: _valorSlider.toString(),
                divisions: 10,
                activeColor: Colors.red,
                inactiveColor: Colors.blue,
                onChanged: (double valor){
                  setState(() {
                    _valorSlider = valor;
                  });
                }),
            RaisedButton(
              onPressed: (){
                _showDialog("Valor selecionado", _valorSlider.toString());
              },
              color: Colors.blue,
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
