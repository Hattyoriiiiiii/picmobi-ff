import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _address1 = '';
  String get address1 => _address1;
  set address1(String _value) {
    _address1 = _value;
  }

  String _address2 = '';
  String get address2 => _address2;
  set address2(String _value) {
    _address2 = _value;
  }

  String _address3 = '';
  String get address3 => _address3;
  set address3(String _value) {
    _address3 = _value;
  }

  double _buycount = 0.0;
  double get buycount => _buycount;
  set buycount(double _value) {
    _buycount = _value;
  }

  String _buyname = '';
  String get buyname => _buyname;
  set buyname(String _value) {
    _buyname = _value;
  }

  String _buyplace = '';
  String get buyplace => _buyplace;
  set buyplace(String _value) {
    _buyplace = _value;
  }

  String _buypicture = '';
  String get buypicture => _buypicture;
  set buypicture(String _value) {
    _buypicture = _value;
  }

  String _namestate = '';
  String get namestate => _namestate;
  set namestate(String _value) {
    _namestate = _value;
  }

  double _pricestate = 0.0;
  double get pricestate => _pricestate;
  set pricestate(double _value) {
    _pricestate = _value;
  }

  double _amountstate = 0.0;
  double get amountstate => _amountstate;
  set amountstate(double _value) {
    _amountstate = _value;
  }

  String _shopnamestate = '';
  String get shopnamestate => _shopnamestate;
  set shopnamestate(String _value) {
    _shopnamestate = _value;
  }

  String _camerastate = '';
  String get camerastate => _camerastate;
  set camerastate(String _value) {
    _camerastate = _value;
  }

  DateTime? _createdatstate;
  DateTime? get createdatstate => _createdatstate;
  set createdatstate(DateTime? _value) {
    _createdatstate = _value;
  }

  DocumentReference? _craetedbystate;
  DocumentReference? get craetedbystate => _craetedbystate;
  set craetedbystate(DocumentReference? _value) {
    _craetedbystate = _value;
  }

  Color _changecolor = Color(4283917164);
  Color get changecolor => _changecolor;
  set changecolor(Color _value) {
    _changecolor = _value;
  }

  Color _changecolor2 = Color(4283917164);
  Color get changecolor2 => _changecolor2;
  set changecolor2(Color _value) {
    _changecolor2 = _value;
  }

  Color _changecolor3 = Color(4283917164);
  Color get changecolor3 => _changecolor3;
  set changecolor3(Color _value) {
    _changecolor3 = _value;
  }

  Color _changecolor4 = Color(4283917164);
  Color get changecolor4 => _changecolor4;
  set changecolor4(Color _value) {
    _changecolor4 = _value;
  }

  Color _changecolor5 = Color(4283917164);
  Color get changecolor5 => _changecolor5;
  set changecolor5(Color _value) {
    _changecolor5 = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}
