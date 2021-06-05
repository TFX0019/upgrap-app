import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:upgrap/model/slide.dart';
import 'package:upgrap/screens/start_view.dart';

class SlideItem extends StatelessWidget {
  // const SlideItem({Key key}) : super(key: key);
  final int index;
  final Color color = Color.fromRGBO(50, 186, 176, 1);
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(slideList[index].title, 
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'Montserrat', color: color, fontSize: 20.0, fontWeight: FontWeight.w400)),
              SizedBox(height: 20.0),
              Container(
                child: slideList[index].subTitle != '' ? 
                  Text(slideList[index].subTitle, 
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'Montserrat', color: color, fontSize: 20.0, fontWeight: FontWeight.w400))
                 : Container()
              ),
              SizedBox(height: 30.0,),
              SvgPicture.asset(slideList[index].imageUrl, width: 200,),
              SizedBox(height: 30.0),
              Container(
                child: slideList[index].button == true ?
                RawMaterialButton(
                  fillColor: color,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                  padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 14.0),
                  child: Text('Lets trade!', style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'Montserrat', fontWeight: FontWeight.w600)),
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => StartView())
                      );
                  }
                  ) : Container()
              )
            ],
        ),
    );
  }
}