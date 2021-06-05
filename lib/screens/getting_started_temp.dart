import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:upgrap/constants/utils.dart';
// import 'package:upgrap/model/slide.dart';

class GettingStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: Text('Conecta con personas \n alrededor del mundo',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20,)
            )
            ),
            Container(
              width: 200,
                height: 200,
                child: SvgPicture.asset(
                  'assets/images/pana.svg',
                  width: 200,
                  height: 200,
                )
            )
          ],
        ),
      )
    );
  }
}