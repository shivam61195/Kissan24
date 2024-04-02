import '/backend/backend.dart';
import '/components/bottomnavigationcomponents/bottomnavigationcomponents_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cart_checkout_widget.dart' show CartCheckoutWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class CartCheckoutModel extends FlutterFlowModel<CartCheckoutWidget> {
  ///  Local state fields for this page.

  bool? showCart = false;

  String zipCode = '';

  AddressStruct? selectedAddress;
  void updateSelectedAddressStruct(Function(AddressStruct) updateFn) =>
      updateFn(selectedAddress ??= AddressStruct());

  bool showNewAddress = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Expandable widget.
  late ExpandableController expandableController;

  // State field(s) for address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressController;
  String? Function(BuildContext, String?)? addressControllerValidator;
  String? _addressControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your address';
    }

    return null;
  }

  // State field(s) for streetAddress2 widget.
  FocusNode? streetAddress2FocusNode;
  TextEditingController? streetAddress2Controller;
  String? Function(BuildContext, String?)? streetAddress2ControllerValidator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityController;
  String? Function(BuildContext, String?)? cityControllerValidator;
  String? _cityControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your city';
    }

    return null;
  }

  // State field(s) for state widget.
  FocusNode? stateFocusNode;
  TextEditingController? stateController;
  String? Function(BuildContext, String?)? stateControllerValidator;
  String? _stateControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Choose a state';
    }

    return null;
  }

  // State field(s) for zip widget.
  FocusNode? zipFocusNode;
  TextEditingController? zipController;
  String? Function(BuildContext, String?)? zipControllerValidator;
  // State field(s) for zipCodeMobile widget.
  FocusNode? zipCodeMobileFocusNode;
  TextEditingController? zipCodeMobileController;
  String? Function(BuildContext, String?)? zipCodeMobileControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  OrdersRecord? newOrder;
  // Model for bottomnavigationcomponents component.
  late BottomnavigationcomponentsModel bottomnavigationcomponentsModel;

  @override
  void initState(BuildContext context) {
    addressControllerValidator = _addressControllerValidator;
    cityControllerValidator = _cityControllerValidator;
    stateControllerValidator = _stateControllerValidator;
    bottomnavigationcomponentsModel =
        createModel(context, () => BottomnavigationcomponentsModel());
  }

  @override
  void dispose() {
    expandableController.dispose();
    addressFocusNode?.dispose();
    addressController?.dispose();

    streetAddress2FocusNode?.dispose();
    streetAddress2Controller?.dispose();

    cityFocusNode?.dispose();
    cityController?.dispose();

    stateFocusNode?.dispose();
    stateController?.dispose();

    zipFocusNode?.dispose();
    zipController?.dispose();

    zipCodeMobileFocusNode?.dispose();
    zipCodeMobileController?.dispose();

    bottomnavigationcomponentsModel.dispose();
  }
}
