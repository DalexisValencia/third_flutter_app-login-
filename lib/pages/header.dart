import 'package:flutter/material.dart';

class HeaderCustom extends StatelessWidget {
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;

  HeaderCustom({
    this.title,
    this.titleColor,
    this.subtitle,
    this.subtitleColor
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          Container(
            transform: Matrix4.translationValues(0, -25, 0),
            width: MediaQuery.of(context).size.width*0.60,
            child: FittedBox(
              fit: BoxFit.none,
              child:  Text(
                title,
                style: Theme.of(context).textTheme.display1.copyWith(
                  fontWeight:FontWeight.bold,
                  color: titleColor,
                  fontFamily: 'Litia',
                ),
              ),
            ),
          ),
          Container(
            transform: Matrix4.translationValues(0, -43, 0),
            width: MediaQuery.of(context).size.width*0.32,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child:Text(
                subtitle,
                style: Theme.of(context).textTheme.title.copyWith(
                  fontWeight:FontWeight.w300,
                  color: subtitleColor
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}