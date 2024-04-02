import '/components/bottomnavigationcomponents/bottomnavigationcomponents_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_page_widget.dart' show ProfilePageWidget;
import 'package:flutter/material.dart';

class ProfilePageModel extends FlutterFlowModel<ProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for bottomnavigationcomponents component.
  late BottomnavigationcomponentsModel bottomnavigationcomponentsModel;

  @override
  void initState(BuildContext context) {
    bottomnavigationcomponentsModel =
        createModel(context, () => BottomnavigationcomponentsModel());
  }

  @override
  void dispose() {
    bottomnavigationcomponentsModel.dispose();
  }
}
