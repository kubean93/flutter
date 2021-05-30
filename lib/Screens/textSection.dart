import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String _title;
  final String _body;
  static const double _hPad = 15.0;

  TextSection(this._title, this._body);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Text(_title, style: Theme.of(context).textTheme.headline6),
          padding: const EdgeInsets.fromLTRB(_hPad, 32.0, _hPad, 4.0),
          // margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.yellowAccent,
          ),
          child: Text(_body, style: Theme.of(context).textTheme.bodyText2,),
          padding: const EdgeInsets.fromLTRB(_hPad, _hPad, _hPad, _hPad),
          // margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
        ),
      ],
    );
  }
}
