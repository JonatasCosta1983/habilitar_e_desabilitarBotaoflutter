import 'package:flutter/material.dart';
import 'package:flutterapp/Demo2.dart';
//import 'package:flutterapp/Demo3.dart';



class DemoButton extends StatefulWidget {
  @override
  _DemoButtonState createState() => _DemoButtonState();
}

class _DemoButtonState extends State<DemoButton> {
   bool _isButtonDisabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Habilita & Desabilita Botão'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
           RaisedButton(
              child:
                Text(_isButtonDisabled ? 'Habilitar Botão 2' : 'Botão 2 Habilitado'),
                color: Colors.black,
                textColor: Colors.white,
                onPressed: _alternaButton
            ),
             Expanded(
              child: Center(
                child: RaisedButton(
                  color: Colors.blue,
                  child: Text('Botão 2'),
                  onPressed: _isButtonDisabled ? null : () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Demo2()));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
   _alternaButton() {
      setState(() => _isButtonDisabled = !_isButtonDisabled);
      setState(() {
      // Navigator.push(context, MaterialPageRoute(builder: (context) => Demo3()));  
      // Caso queira habilitar uma funcionalidade ao botão 1
      });
   }
  }
