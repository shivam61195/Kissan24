import '/flutter_flow/flutter_flow_util.dart';
import 'forgetpass_widget.dart' show ForgetpassWidget;
import 'package:flutter/material.dart';

class ForgetpassModel extends FlutterFlowModel<ForgetpassWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressController?.dispose();
  }
}
