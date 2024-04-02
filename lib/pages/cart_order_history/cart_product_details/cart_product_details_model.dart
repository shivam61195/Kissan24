import '/components/bottomnavigationcomponents/bottomnavigationcomponents_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/cart_order_history/cart_badge/cart_badge_widget.dart';
import 'cart_product_details_widget.dart' show CartProductDetailsWidget;
import 'package:flutter/material.dart';

class CartProductDetailsModel
    extends FlutterFlowModel<CartProductDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for cartBadge component.
  late CartBadgeModel cartBadgeModel1;
  // Model for cartBadge component.
  late CartBadgeModel cartBadgeModel2;
  // Model for bottomnavigationcomponents component.
  late BottomnavigationcomponentsModel bottomnavigationcomponentsModel;

  @override
  void initState(BuildContext context) {
    cartBadgeModel1 = createModel(context, () => CartBadgeModel());
    cartBadgeModel2 = createModel(context, () => CartBadgeModel());
    bottomnavigationcomponentsModel =
        createModel(context, () => BottomnavigationcomponentsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cartBadgeModel1.dispose();
    cartBadgeModel2.dispose();
    bottomnavigationcomponentsModel.dispose();
  }
}
