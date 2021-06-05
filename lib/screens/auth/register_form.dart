import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:upgrap/screens/auth/register_ubication.dart';

class RegisterForm extends StatefulWidget {
  // RegisterForm({Key key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {

  final color = Color.fromRGBO(50, 186, 176, 1);
  final gray = Color.fromRGBO(91, 113, 111, 1);

  String _name = '';
  String _email = '';
  String _password = '';
  String _repass = '';
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0,),
      body: ListView(
        children: <Widget>[
          Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(padding: EdgeInsets.only(left: 20), child: Text('Registro', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w700, fontSize: 24.0, color: color))),
              ],
            ),
            Row(
              children: <Widget>[
                Container(padding: EdgeInsets.only(left: 20), child: Text('Crea tu cuenta', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w500, fontSize: 16.0, color: gray))),
              ],
            ),
            
             SizedBox(height: 20.0),
            _nameInput(),
            SizedBox(height: 20.0),
            _emailInput(),
            SizedBox(height: 20.0),
            _passwordInput(),
            SizedBox(height: 20.0),
            _passwordReInput(),
            SizedBox(height: 20.0,),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              height: 50.0,
              child: RawMaterialButton(
                fillColor: color,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: Text('Registrarme', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w500, fontSize: 16.0, color: Colors.white),),
                onPressed: () {}
                ),
            ),
            SizedBox(height: 20,),
            Text('¿Tienes una cuenta?', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w400, fontSize: 16.0, color: gray)),
            RawMaterialButton(
              onPressed: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => RegisterUbication())
                );
              }, 
              child: Text('Inicia sesion aquí', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w600, fontSize: 16.0, color: color))
              )
          ],
        ),
        ],
      ),
    );
  }

  Widget _nameInput() {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: color)
        ),
            border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          labelText: 'Nombre',
          labelStyle: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w500, fontSize: 16.0, color: color),
          // suffixIcon: Icon(Icons.accessibility),
      ),
      onChanged: (valor) {
          setState(() {
            _name = valor;
          });
      },
    ),
        );
  }

    Widget _emailInput() {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: color)
        ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Color.fromRGBO(50, 186, 176, 1))
          ),
          labelText: 'Email',
          labelStyle: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w500, fontSize: 16.0, color: color),
          // suffixIcon: Icon(Icons.accessibility),
      ),
      onChanged: (valor) {
          setState(() {
            _email = valor;
          });
      },
    ),
        );
  }

      Widget _passwordInput() {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: color)
        ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Color.fromRGBO(50, 186, 176, 1))
          ),
          labelText: 'Contraseña',
          labelStyle: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w500, fontSize: 16.0, color: color),
          suffixIcon: Icon(Icons.visibility_off_outlined, color: color,),
      ),
      onChanged: (valor) {
          setState(() {
            _password = valor;
          });
      },
    ),
        );
  }

    Widget _passwordReInput() {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: color)
        ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Color.fromRGBO(50, 186, 176, 1))
          ),
          labelText: 'Confirmar Contraseña',
          labelStyle: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w500, fontSize: 16.0, color: color),
          suffixIcon: Icon(Icons.visibility_off_outlined, color: color,),
      ),
      onChanged: (valor) {
          setState(() {
            _password = valor;
          });
      },
    ),
        );
  }

}