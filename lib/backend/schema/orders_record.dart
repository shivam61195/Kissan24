import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "products" field.
  List<DocumentReference>? _products;
  List<DocumentReference> get products => _products ?? const [];
  bool hasProducts() => _products != null;

  // "totalPrice" field.
  double? _totalPrice;
  double get totalPrice => _totalPrice ?? 0.0;
  bool hasTotalPrice() => _totalPrice != null;

  // "tax" field.
  double? _tax;
  double get tax => _tax ?? 0.0;
  bool hasTax() => _tax != null;

  // "timeCreated" field.
  DateTime? _timeCreated;
  DateTime? get timeCreated => _timeCreated;
  bool hasTimeCreated() => _timeCreated != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "orderNumber" field.
  int? _orderNumber;
  int get orderNumber => _orderNumber ?? 0;
  bool hasOrderNumber() => _orderNumber != null;

  // "address" field.
  AddressStruct? _address;
  AddressStruct get address => _address ?? AddressStruct();
  bool hasAddress() => _address != null;

  // "users" field.
  List<DocumentReference>? _users;
  List<DocumentReference> get users => _users ?? const [];
  bool hasUsers() => _users != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "userphone" field.
  String? _userphone;
  String get userphone => _userphone ?? '';
  bool hasUserphone() => _userphone != null;

  void _initializeFields() {
    _products = getDataList(snapshotData['products']);
    _totalPrice = castToType<double>(snapshotData['totalPrice']);
    _tax = castToType<double>(snapshotData['tax']);
    _timeCreated = snapshotData['timeCreated'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _owner = snapshotData['owner'] as DocumentReference?;
    _orderNumber = castToType<int>(snapshotData['orderNumber']);
    _address = AddressStruct.maybeFromMap(snapshotData['address']);
    _users = getDataList(snapshotData['users']);
    _username = snapshotData['username'] as String?;
    _userphone = snapshotData['userphone'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  double? totalPrice,
  double? tax,
  DateTime? timeCreated,
  String? status,
  DocumentReference? owner,
  int? orderNumber,
  AddressStruct? address,
  String? username,
  String? userphone,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'totalPrice': totalPrice,
      'tax': tax,
      'timeCreated': timeCreated,
      'status': status,
      'owner': owner,
      'orderNumber': orderNumber,
      'address': AddressStruct().toMap(),
      'username': username,
      'userphone': userphone,
    }.withoutNulls,
  );

  // Handle nested data for "address" field.
  addAddressStructData(firestoreData, address, 'address');

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.products, e2?.products) &&
        e1?.totalPrice == e2?.totalPrice &&
        e1?.tax == e2?.tax &&
        e1?.timeCreated == e2?.timeCreated &&
        e1?.status == e2?.status &&
        e1?.owner == e2?.owner &&
        e1?.orderNumber == e2?.orderNumber &&
        e1?.address == e2?.address &&
        listEquality.equals(e1?.users, e2?.users) &&
        e1?.username == e2?.username &&
        e1?.userphone == e2?.userphone;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.products,
        e?.totalPrice,
        e?.tax,
        e?.timeCreated,
        e?.status,
        e?.owner,
        e?.orderNumber,
        e?.address,
        e?.users,
        e?.username,
        e?.userphone
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
