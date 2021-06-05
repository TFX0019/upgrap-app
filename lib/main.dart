import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:upgrap/screens/getting_started.dart';
import 'package:upgrap/screens/start_view.dart';
// import 'screens/getting_started_temp.dart';

void main() {
  runApp(const Started());
}

class Started extends StatelessWidget {
  const Started({Key? key}) : super(key: key);

  static const String _title = 'Started';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Montserrat', primarySwatch: Colors.amber),
      title: _title,
      home: Scaffold(
        body: GettingStarted(),
      )
    );
  }
}

class MyStatelessWidget extends StatelessWidget {

  final color = Color.fromRGBO(50, 186, 176, 1);
  final gray = Color.fromRGBO(91, 113, 111, 1);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return Stack(
          children: <Widget>[
            PageView(
            scrollDirection: Axis.horizontal,
            controller: controller,
            children: <Widget>[
              _onePage(),
              _secondaryPage(),
              _threePage(context)
              ],
            ),
            _dotsContainer()
          ]
    );
  }

  Widget _onePage() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Conecta con personas \n alrededor del mundo', 
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'Montserrat', color: color, fontSize: 20.0, fontWeight: FontWeight.w400),),
              SizedBox(height: 30.0,),
              SvgPicture.asset('assets/images/pana.svg')
            ],
        ),
    );
  }

    Widget _secondaryPage() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('¡Intercambia lo que no \n utilizas por algo que si \n quieras utilizar!', 
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'Montserrat', color: color, fontSize: 20.0, fontWeight: FontWeight.w400),),
              SizedBox(height: 30.0,),
              SvgPicture.asset('assets/images/pana.svg')
            ],
        ),
    );
  }

    Widget _threePage(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Upgrap es 100% gratuito no \n pagas ni compras nada, solo \n intercambias', 
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'Montserrat', color: color, fontSize: 20.0, fontWeight: FontWeight.w400),),
              SizedBox(height: 20.0,),
              Text('¡Comienza a \n intercambiar!', 
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'Montserrat', color: color, fontSize: 20.0, fontWeight: FontWeight.w400),),
              SizedBox(height: 30.0,),
              SvgPicture.asset('assets/images/pana.svg', width: 250, height: 150.0,),
              SizedBox(height: 20.0,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: color
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => StartView()));
                }, 
                child: Text('Lets trade!', style: TextStyle(color: Colors.white),)
              )
            ],
        ),
    );
  }

  Widget _dotsContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    width: 13.0,
                    height: 13.0,
                    // color: color,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13.0),
                      color: color
                    ),
                  ),
                  Container(
                   margin: EdgeInsets.only(left: 10.0),
                    width: 13.0,
                    height: 13.0,
                    // color: color,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13.0),
                      color: gray
                    ),
                  ),
                  Container(
                   margin: EdgeInsets.only(left: 10.0),
                    width: 13.0,
                    height: 13.0,
                    // color: color,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13.0),
                      color: gray
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 40.0,)
      ],
    );
  }

}