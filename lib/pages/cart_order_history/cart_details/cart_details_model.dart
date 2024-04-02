import '/components/bottomnavigationcomponents/bottomnavigationcomponents_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/cart_order_history/cart_summary/cart_summary_widget.dart';
import 'cart_details_widget.dart' show CartDetailsWidget;
import 'package:flutter/material.dart';

class CartDetailsModel extends FlutterFlowModel<CartDetailsWidget> {
  ///  Local state fields for this page.

  bool? showCart = false;

  ///  State fields for stateful widgets in this page.

  // Model for cartSummary component.
  late CartSummaryModel cartSummaryModel;
  // Model for bottomnavigationcomponents component.
  late BottomnavigationcomponentsModel bottomnavigationcomponentsModel;

  @override
  void initState(BuildContext context) {
    cartSummaryModel = createModel(context, () => CartSummaryModel());
    bottomnavigationcomponentsModel =
        createModel(context, () => BottomnavigationcomponentsModel());
  }

  @override
  void dispose() {
    cartSummaryModel.dispose();
    bottomnavigationcomponentsModel.dispose();
  }
}
