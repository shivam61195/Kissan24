import '/components/bottomnavigationcomponents/bottomnavigationcomponents_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/cart_order_history/cart_product/cart_product_widget.dart';
import 'cart_order_details_widget.dart' show CartOrderDetailsWidget;
import 'package:flutter/material.dart';

class CartOrderDetailsModel extends FlutterFlowModel<CartOrderDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Models for cartProduct dynamic component.
  late FlutterFlowDynamicModels<CartProductModel> cartProductModels;
  // Model for bottomnavigationcomponents component.
  late BottomnavigationcomponentsModel bottomnavigationcomponentsModel;

  @override
  void initState(BuildContext context) {
    cartProductModels = FlutterFlowDynamicModels(() => CartProductModel());
    bottomnavigationcomponentsModel =
        createModel(context, () => BottomnavigationcomponentsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cartProductModels.dispose();
    bottomnavigationcomponentsModel.dispose();
  }
}
