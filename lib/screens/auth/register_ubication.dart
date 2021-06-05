import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:upgrap/screens/auth/register_success.dart';

class RegisterUbication extends StatefulWidget {
  // RegisterUbication({Key key}) : super(key: key);

  @override
  _RegisterUbicationState createState() => _RegisterUbicationState();
}

class _RegisterUbicationState extends State<RegisterUbication> {

  final color = Color.fromRGBO(50, 186, 176, 1);
  final gray = Color.fromRGBO(91, 113, 111, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0,),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
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
                Container(padding: EdgeInsets.only(left: 20), child: Text('Ubicación', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w500, fontSize: 16.0, color: gray))),
              ],
            ),
            SizedBox(height: 20.0,),
            Container(
              color: Color.fromRGBO(243, 243, 243, 1),
              child: Row(
                children: <Widget>[
                  RawMaterialButton(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    fillColor: color,
                    child: Row(children: <Widget>[
                      Image.asset('assets/images/Bitmap.png'),
                      SizedBox(width: 10),
                      Icon(Icons.keyboard_arrow_down)
                    ],),
                    onPressed: () {}
                    ),
                    RawMaterialButton(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text('Selecciona tu pais', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w400, fontSize: 18.0, color: gray)),
                      onPressed: () {}
                      )
                ],
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color.fromRGBO(243, 243, 243, 1),
                ),
                
                child: DropdownButton(
                  underline: Container(),
                  isExpanded: true,
                  icon: Icon(Icons.keyboard_arrow_down),
                  iconDisabledColor: color,
                  hint: Container(padding: EdgeInsets.symmetric(horizontal: 10.0),child: Text('Selecciona tu ciudad', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w400, fontSize: 18.0, color: gray))),
                  items: <String>['one', 'two', 'three'].map<DropdownMenuItem<String>>((e) {
                    return DropdownMenuItem<String>(value: e, child: Text(e),);
                  }).toList()
                  ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 50.0,
              child: RawMaterialButton(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                fillColor: color,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: Text('Continuar', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w500, fontSize: 16.0, color: Colors.white),),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterSuccess()));
                }
                ),
            ),
          ],
        ),
        ],
      ),
    );
  }
}