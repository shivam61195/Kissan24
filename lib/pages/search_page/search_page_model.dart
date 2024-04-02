import '/components/bottomnavigationcomponents/bottomnavigationcomponents_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_page_widget.dart' show SearchPageWidget;
import 'package:flutter/material.dart';

class SearchPageModel extends FlutterFlowModel<SearchPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
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
    textFieldFocusNode?.dispose();
    textController?.dispose();

    bottomnavigationcomponentsModel.dispose();
  }
}
