import '/flutter_flow/flutter_flow_util.dart';
import '/pages/cart_order_history/cart_product/cart_product_widget.dart';
import 'cart_summary_widget.dart' show CartSummaryWidget;
import 'package:flutter/material.dart';

class CartSummaryModel extends FlutterFlowModel<CartSummaryWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for cartProduct dynamic component.
  late FlutterFlowDynamicModels<CartProductModel> cartProductModels;

  @override
  void initState(BuildContext context) {
    cartProductModels = FlutterFlowDynamicModels(() => CartProductModel());
  }

  @override
  void dispose() {
    cartProductModels.dispose();
  }
}
