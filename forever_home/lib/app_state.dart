import 'package:flutter/material.dart';
import 'backend/backend.dart';
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
    _Zer0 = prefs.getDouble('ff_Zer0') ?? _Zer0;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _confirmRealtorAgent = true;
  bool get confirmRealtorAgent => _confirmRealtorAgent; // WARNING
  set confirmRealtorAgent(bool _value) {
    _confirmRealtorAgent = _value;
  }

  bool _confirmIDAgent = true;
  bool get confirmIDAgent => _confirmIDAgent; // WARNING
  set confirmIDAgent(bool _value) {
    _confirmIDAgent = _value;
  }

  LatLng? _searchedListing = LatLng(1.3453021, 103.9469326);
  LatLng? get searchedListing => _searchedListing; // WARNING
  set searchedListing(LatLng? _value) {
    _searchedListing = _value;
  }

  LatLng? _DisplayAmenitiesListing = LatLng(1.3453021, 103.9469326); // WARNING
  LatLng? get DisplayAmenitiesListing => _DisplayAmenitiesListing;
  set DisplayAmenitiesListing(LatLng? _value) {
    _DisplayAmenitiesListing = _value;
  }

  double _userDownPayment = 0.0;
  double get userDownPayment => _userDownPayment;
  set userDownPayment(double _value) {
    _userDownPayment = _value;
  }

  double _userInterest = 0.0;
  double get userInterest => _userInterest;
  set userInterest(double _value) {
    _userInterest = _value;
  }

  double _userLoanTenure = 0.0;
  double get userLoanTenure => _userLoanTenure;
  set userLoanTenure(double _value) {
    _userLoanTenure = _value;
  }

  double _userLoanAmount = 0.0;
  double get userLoanAmount => _userLoanAmount;
  set userLoanAmount(double _value) {
    _userLoanAmount = _value;
  }

  double _Zer0 = 0;
  double get Zer0 => _Zer0;
  set Zer0(double _value) {
    _Zer0 = _value;
    prefs.setDouble('ff_Zer0', _value);
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
