import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterSuccess extends StatelessWidget {
  // const RegisterSuccess({Key key}) : super(key: key);

  final color = Color.fromRGBO(50, 186, 176, 1);
  final gray = Color.fromRGBO(91, 113, 111, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: <Widget>[
              SizedBox(height: 60),
              SvgPicture.asset('assets/images/logo_b.svg', height: 100, width: 100, color: color,),
              SizedBox(height: 20),
              Text('Te has registrado \n exitosamente', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0, color: color)),
              SizedBox(height: 20),
              SvgPicture.asset('assets/images/check.svg'),
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