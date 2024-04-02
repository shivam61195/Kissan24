import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_badge_model.dart';
export 'cart_badge_model.dart';

class CartBadgeWidget extends StatefulWidget {
  const CartBadgeWidget({super.key});

  @override
  State<CartBadgeWidget> createState() => _CartBadgeWidgetState();
}

class _CartBadgeWidgetState extends State<CartBadgeWidget> {
  late CartBadgeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CartBadgeModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 16.0, 0.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          context.pushNamed(
            'cart_Details',
            extra: <String, dynamic>{
              kTransitionInfoKey: const TransitionInfo(
                hasTransition: true,
                transitionType: PageTransitionType.bottomToTop,
                duration: Duration(milliseconds: 300),
              ),
            },
          );
        },
        child: badges.Badge(
          badgeContent: Text(
            valueOrDefault<String>(
              FFAppState().myCart.length.toString(),
              '0',
            ),
            style: FlutterFlowTheme.of(context).titleSmall.override(
                  fontFamily: 'Plus Jakarta Sans',
                  color: FFAppState().myCart.isNotEmpty
                      ? FlutterFlowTheme.of(context).info
                      : FlutterFlowTheme.of(context).primaryText,
                  letterSpacing: 0.0,
                ),
          ),
          showBadge: true,
          shape: badges.BadgeShape.circle,
          badgeColor: FFAppState().myCart.isNotEmpty
              ? FlutterFlowTheme.of(context).primary
              : FlutterFlowTheme.of(context).primaryBackground,
          elevation: 4.0,
          padding: const EdgeInsets.all(8.0),
          position: badges.BadgePosition.topEnd(),
          animationType: badges.BadgeAnimationType.scale,
          toAnimate: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 32.0,
            ),
          ),
        ),
      ),
    );
  }
}
