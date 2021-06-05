import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:upgrap/screens/auth/register_success.dart';

class LoginForm extends StatefulWidget {
  // LoginForm({Key key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  final color = Color.fromRGBO(50, 186, 176, 1);
  final gray = Color.fromRGBO(91, 113, 111, 1);
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: ListView(
              children: <Widget>[
                SizedBox(height: 60),
                SvgPicture.asset('assets/images/logo_b.svg', height: 100, width: 100, color: color,),
                SizedBox(height: 20),
                Text('Estamos felices de verte \n otra vez', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0, color: color)),
                SizedBox(height: 20.0),
              _emailInput(),
              SizedBox(height: 20.0),
              _passwordInput(),
              SizedBox(height: 20.0),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 80.0),
                    child: SizedBox(
                      width: 200,
                      height: 50.0,
                      child: RawMaterialButton(
                        // padding: EdgeInsets.symmetric(horizontal: 30.0),
                        fillColor: color,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        child: Text('Iniciar sesión', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w500, fontSize: 16.0, color: Colors.white),),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterSuccess()));
                        }
                        ),
                    ),
                  ),
              ],
              ),
          )
        ],
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

}