import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String subTitle;
  final bool button;

  Slide({required this.imageUrl, required this.title, required this.subTitle, required this.button});
}

final slideList = [
  Slide(
      title: 'Conecta con personas \n alrededor del mundo',
      subTitle: '',
      imageUrl: 'assets/images/pana.svg',
      button: false
  ),
  Slide(
      imageUrl: 'assets/images/slide-2.svg',
      title: '¡Intercambia lo que no \n utilizas por algo que si \n quieras utilizar!',
      subTitle: '',
      button: false
  ),
  Slide(
      imageUrl: 'assets/images/slide-3.svg',
      title: 'Upgrap es 100% gratuito no \n pagas ni compras nada, solo \n intercambias',
      subTitle: '¡Comienza a \n intercambiar!',
      button: true
      )
];