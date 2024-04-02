import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _myCart =
          prefs.getStringList('ff_myCart')?.map((path) => path.ref).toList() ??
              _myCart;
    });
    _safeInit(() {
      _myCartSummary =
          prefs.getStringList('ff_myCartSummary')?.map(double.parse).toList() ??
              _myCartSummary;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<DocumentReference> _myCart = [];
  List<DocumentReference> get myCart => _myCart;
  set myCart(List<DocumentReference> value) {
    _myCart = value;
    prefs.setStringList('ff_myCart', value.map((x) => x.path).toList());
  }

  void addToMyCart(DocumentReference value) {
    _myCart.add(value);
    prefs.setStringList('ff_myCart', _myCart.map((x) => x.path).toList());
  }

  void removeFromMyCart(DocumentReference value) {
    _myCart.remove(value);
    prefs.setStringList('ff_myCart', _myCart.map((x) => x.path).toList());
  }

  void removeAtIndexFromMyCart(int index) {
    _myCart.removeAt(index);
    prefs.setStringList('ff_myCart', _myCart.map((x) => x.path).toList());
  }

  void updateMyCartAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _myCart[index] = updateFn(_myCart[index]);
    prefs.setStringList('ff_myCart', _myCart.map((x) => x.path).toList());
  }

  void insertAtIndexInMyCart(int index, DocumentReference value) {
    _myCart.insert(index, value);
    prefs.setStringList('ff_myCart', _myCart.map((x) => x.path).toList());
  }

  List<double> _myCartSummary = [];
  List<double> get myCartSummary => _myCartSummary;
  set myCartSummary(List<double> value) {
    _myCartSummary = value;
    prefs.setStringList(
        'ff_myCartSummary', value.map((x) => x.toString()).toList());
  }

  void addToMyCartSummary(double value) {
    _myCartSummary.add(value);
    prefs.setStringList(
        'ff_myCartSummary', _myCartSummary.map((x) => x.toString()).toList());
  }

  void removeFromMyCartSummary(double value) {
    _myCartSummary.remove(value);
    prefs.setStringList(
        'ff_myCartSummary', _myCartSummary.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromMyCartSummary(int index) {
    _myCartSummary.removeAt(index);
    prefs.setStringList(
        'ff_myCartSummary', _myCartSummary.map((x) => x.toString()).toList());
  }

  void updateMyCartSummaryAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    _myCartSummary[index] = updateFn(_myCartSummary[index]);
    prefs.setStringList(
        'ff_myCartSummary', _myCartSummary.map((x) => x.toString()).toList());
  }

  void insertAtIndexInMyCartSummary(int index, double value) {
    _myCartSummary.insert(index, value);
    prefs.setStringList(
        'ff_myCartSummary', _myCartSummary.map((x) => x.toString()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
