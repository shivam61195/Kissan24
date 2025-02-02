import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

double? priceSummary(List<double>? prices) {
// summarize a list of prices from the product list
  if (prices == null || prices.isEmpty) {
    return null;
  }
  return prices.reduce((value, element) => value + element);
}

dynamic createjson(
  String merchantId,
  String merchantTransactionId,
  String merchantUserId,
  double amount,
  String redirectUrl,
  String redirectMode,
  String callbackUrl,
  String mobileNumber,
) {
  return {
    "merchantId": merchantId,
    "merchantTransactionId": merchantTransactionId,
    "merchantUserId": merchantUserId,
    "amount": amount,
    "redirectUrl": redirectUrl,
    "redirectMode": redirectMode,
    "callbackUrl": callbackUrl,
    "mobileNumber": mobileNumber,
    "paymentInstrument": {"type": "PAY_PAGE"}
  };
}

String? coverjsontobase64(dynamic json) {
  String jsonString = jsonEncode(json);
  String base64String = base64.encode(utf8.encode(jsonString));
  return base64String;
}
