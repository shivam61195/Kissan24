import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/cart_order_history/cart_product/cart_product_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_summary_model.dart';
export 'cart_summary_model.dart';

class CartSummaryWidget extends StatefulWidget {
  const CartSummaryWidget({
    super.key,
    bool? showTotal,
  }) : showTotal = showTotal ?? false;

  final bool showTotal;

  @override
  State<CartSummaryWidget> createState() => _CartSummaryWidgetState();
}

class _CartSummaryWidgetState extends State<CartSummaryWidget> {
  late CartSummaryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CartSummaryModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      constraints: const BoxConstraints(
        maxWidth: 750.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: const [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x33000000),
            offset: Offset(
              0.0,
              2.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Cart',
              style: FlutterFlowTheme.of(context).headlineSmall.override(
                    fontFamily: 'Urbanist',
                    letterSpacing: 0.0,
                  ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
              child: Text(
                'Below is the list of items in your cart.',
                style: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Plus Jakarta Sans',
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Builder(
              builder: (context) {
                final cartItems = FFAppState().myCart.toList();
                return ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: cartItems.length,
                  itemBuilder: (context, cartItemsIndex) {
                    final cartItemsItem = cartItems[cartItemsIndex];
                    return wrapWithModel(
                      model: _model.cartProductModels.getModel(
                        cartItemsItem.id,
                        cartItemsIndex,
                      ),
                      updateCallback: () => setState(() {}),
                      updateOnChange: true,
                      child: CartProductWidget(
                        key: Key(
                          'Keyguw_${cartItemsItem.id}',
                        ),
                        product: cartItemsItem,
                        cartItem: true,
                      ),
                    );
                  },
                );
              },
            ),
            if (widget.showTotal)
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Sub Total',
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: 'Outfit',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 20.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 36.0,
                          icon: Icon(
                            Icons.info_outlined,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 18.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ],
                    ),
                    Text(
                      valueOrDefault<String>(
                        formatNumber(
                          functions.priceSummary(
                              FFAppState().myCartSummary.toList()),
                          formatType: FormatType.decimal,
                          decimalType: DecimalType.automatic,
                          currency: '₹',
                        ),
                        '0',
                      ),
                      style: FlutterFlowTheme.of(context).displaySmall.override(
                            fontFamily: 'Urbanist',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
