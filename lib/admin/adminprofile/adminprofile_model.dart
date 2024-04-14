import '/components/bottomnavigationcomponents/bottomnavigationcomponents_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'adminprofile_widget.dart' show AdminprofileWidget;
import 'package:flutter/material.dart';

class AdminprofileModel extends FlutterFlowModel<AdminprofileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for bottomnavigationcomponents component.
  late BottomnavigationcomponentsModel bottomnavigationcomponentsModel;

  @override
  void initState(BuildContext context) {
    bottomnavigationcomponentsModel =
        createModel(context, () => BottomnavigationcomponentsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    bottomnavigationcomponentsModel.dispose();
  }
}
