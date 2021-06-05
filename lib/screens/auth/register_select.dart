import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:upgrap/screens/auth/register_form.dart';

class RegisterSelect extends StatelessWidget {
  // const RegisterSelect({Key key}) : super(key: key);
  final color = Color.fromRGBO(50, 186, 176, 1);
  final gray = Color.fromRGBO(91, 113, 111, 1);
  final textStyle = TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w500, fontSize: 16.0, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 140.0,),
                SvgPicture.asset('assets/images/logo_short.svg', width: 150,)
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 30.0),
                  child: Text('Registro', 
                  style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w600, fontSize: 24.0, color: color),)
                  ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 30.0),
                  child: Text('Elige como quieres registrarte',
                  style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w500, fontSize: 16.0, color: gray))
                  ),
              ],
            ),
            // Text('Elige como quieres registrarte'),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                child: RawMaterialButton(
                  fillColor: color,
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                  shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.email_outlined, color: Colors.white,),
                      SizedBox(width: 20,),
                      Text('Registro con email', style: textStyle,)
                    ],
                  ),
                  onPressed: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => RegisterForm())
                        );
                  },
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                child: RawMaterialButton(
                  fillColor: color,
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                  shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.phone_outlined, color: Colors.white,),
                      SizedBox(width: 20,),
                      Text('Registro con celular', style: textStyle,)
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  SizedBox(
                  width: 52,
                  height: 52,
                  child: Container(
                  child: RawMaterialButton(

                    splashColor: Colors.transparent,
                    child: SvgPicture.asset('assets/images/facebook.svg'),
                    onPressed: () {},
                    )
              ),
                ),
                  Text('O', style: TextStyle(fontFamily: 'Montserrat')),
                  SizedBox(
                  width: 52,
                  height: 52,
                  child: Container(
                  child: RawMaterialButton(
                    child: SvgPicture.asset('assets/images/google.svg'),
                    onPressed: () {},
                    )
              ),
                ),

              ],
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => RegisterForm()));
              }, 
              child: Text('Continuar como invitado', style: TextStyle(fontSize: 16.0, color: color, fontFamily: 'Montserrat', fontWeight: FontWeight.w600),)
              )
          ],
        ),
      ),
    );
  }
}