import 'package:flutter/material.dart';
import 'package:upgrap/model/slide.dart';
import 'package:upgrap/widgets/dot_indicator.dart';
import 'package:upgrap/widgets/slide_item.dart';

class GettingStarted extends StatefulWidget {

  @override
  _GettingStartedState createState() => _GettingStartedState();
}

class _GettingStartedState extends State<GettingStarted> {

  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // _pageController.animateToPage(
    //   _currentPage, 
    //   duration: Duration(milliseconds: 300), 
    //   curve: Curves.easeIn
    //   );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _createPageView(),
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  for (var i = 0; i < slideList.length; i++)
                    if(_currentPage == i)
                      DotIndicator(true)
                    else 
                      DotIndicator(false)
                ]
                ),
            ),
            SizedBox(height: 30.0)
          ],
        )
      ],
    );
  }

  Widget _createPageView() {
    return PageView.builder(
      controller: _pageController,
      onPageChanged: (value) {
        _currentPage = value;
        setState(() {
          
        });
        print(value);
      },
      scrollDirection: Axis.horizontal,
      itemCount: slideList.length,
      itemBuilder: (BuildContext context, value) {
        return SlideItem(value);
      });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }
}