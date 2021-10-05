import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PageUI {
  String _title;
  String _subtitle;
  String _description;
  String _date;
  String _sourceCode;
  Icon _icon;
  Widget _page;

  PageUI(this._title, this._subtitle, this._date, this._description,this._icon,this._page,this._sourceCode);

  Widget get page => _page;

  Icon get icon => _icon;

  String get subtitle => _subtitle;

  String get title => _title;

  String get description => _description;

  String get date => _date;

  String get sourceCode => _sourceCode;
}
