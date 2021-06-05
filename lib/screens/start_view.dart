import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:upgrap/screens/auth/login_form.dart';
import 'package:upgrap/screens/auth/register_select.dart';
import 'package:upgrap/screens/stated_register.dart';

class StartView extends StatelessWidget {

  final color = Color.fromRGBO(50, 186, 176, 1);
  final gray = Color.fromRGBO(91, 113, 111, 1);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Column(
          children: <Widget>[
              ClipRect(
                    child: Stack(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 150,
                        decoration: BoxDecoration(
                          color: color
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 50),
                              width: MediaQuery.of(context).size.width,
                              // padding: EdgeInsets.symmetric(horizontal: 80),
                              height: 200,
                              child: ClipOval(
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(color: color),
                                  padding: EdgeInsets.symmetric(horizontal: 80),
                                  child: Image.asset('assets/splash.png', width: 100, height: 100, ),
                                )
                                )
                              // decoration: BoxDecoration(
                              //   color: color,
                              //   shape: BoxShape.rectangle
                              // ),
                            ),
                        ],
                      )
                    ],
                ),
              ),
            SizedBox(height: 20.0,),
            Text('Regístrate o ingresa para \n comenzar', 
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'Montserrat', fontSize: 16.0, color: gray),),
            SizedBox(height: 20.0),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 52,
                  child: Container(
                  child: RawMaterialButton(
                    fillColor: color,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                    padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 14.0),
                    child: Text('Registro', style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'Montserrat', fontWeight: FontWeight.w500)),
                    onPressed: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => RegisterSelect())
                        );
                    }
                    )
              ),
                )
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 52,
                  child: Container(
                  child: RawMaterialButton(
                    fillColor: Color.fromRGBO(234, 255, 253, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: color)
                      ),
                    padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 14.0),
                    child: Text('Iniciar sesión', style: TextStyle(color: color, fontSize: 16, fontFamily: 'Montserrat', fontWeight: FontWeight.w500)),
                    onPressed: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => LoginForm())
                        );
                    }
                    )
              ),
                )
              ],
            ),
            SizedBox(height: 10.0,),
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
                MaterialPageRoute(builder: (context) => StartedRegister()));
              }, 
              child: Text('Continuar como invitado', style: TextStyle(fontSize: 16.0, color: color, fontFamily: 'Montserrat', fontWeight: FontWeight.w600),)
              )
          ],
        ),
      ),
    );
  }
}