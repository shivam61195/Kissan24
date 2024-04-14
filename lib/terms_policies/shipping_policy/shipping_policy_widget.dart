import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'shipping_policy_model.dart';
export 'shipping_policy_model.dart';

class ShippingPolicyWidget extends StatefulWidget {
  const ShippingPolicyWidget({super.key});

  @override
  State<ShippingPolicyWidget> createState() => _ShippingPolicyWidgetState();
}

class _ShippingPolicyWidgetState extends State<ShippingPolicyWidget> {
  late ShippingPolicyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShippingPolicyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: GradientText(
            'Shipping Policy',
            style: FlutterFlowTheme.of(context).bodyLarge.override(
                  fontFamily: 'Plus Jakarta Sans',
                  letterSpacing: 0.0,
                ),
            colors: [
              FlutterFlowTheme.of(context).primary,
              FlutterFlowTheme.of(context).secondary
            ],
            gradientDirection: GradientDirection.ltr,
            gradientType: GradientType.linear,
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
            child: Container(
              decoration: const BoxDecoration(),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                child: Text(
                  'Thank you for choosing our services! We aim to provide you with the best delivery experience possible. Here are the details of our shipping policy:\n\nDelivery Timeframe: We guarantee delivery within 12-24 hours from the time of placing your order.\n\nDelivery Methods: We utilize efficient delivery methods to ensure timely delivery of your orders.\n\nDelivery Areas: We currently deliver to delivery area 125113 pincode only. If your location is not listed, please contact us for alternative arrangements.\nDelivery Charges: We offer free delivery for orders above 499. For orders below this amount, a flat-rate shipping fee may apply.\nCustomer Support: If you have any questions or concerns regarding your order, our customer support team is available to assist you.\n\nPlease note that delivery times may vary depending on external factors such as weather conditions and holidays. We appreciate your understanding and patience.\n\nIf you have any further inquiries, please don\'t hesitate to contact us.\n\nThank you for choosing \nKisaan24.',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
