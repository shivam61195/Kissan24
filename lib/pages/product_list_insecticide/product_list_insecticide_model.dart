import '/components/bottomnavigationcomponents/bottomnavigationcomponents_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/cart_order_history/cart_badge/cart_badge_widget.dart';
import 'product_list_insecticide_widget.dart' show ProductListInsecticideWidget;
import 'package:flutter/material.dart';

class ProductListInsecticideModel
    extends FlutterFlowModel<ProductListInsecticideWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for cartBadge component.
  late CartBadgeModel cartBadgeModel1;
  // Model for bottomnavigationcomponents component.
  late BottomnavigationcomponentsModel bottomnavigationcomponentsModel;
  // Model for cartBadge component.
  late CartBadgeModel cartBadgeModel2;

  @override
  void initState(BuildContext context) {
    cartBadgeModel1 = createModel(context, () => CartBadgeModel());
    bottomnavigationcomponentsModel =
        createModel(context, () => BottomnavigationcomponentsModel());
    cartBadgeModel2 = createModel(context, () => CartBadgeModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cartBadgeModel1.dispose();
    bottomnavigationcomponentsModel.dispose();
    cartBadgeModel2.dispose();
  }
}
