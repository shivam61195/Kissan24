import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'termsand_conditions_model.dart';
export 'termsand_conditions_model.dart';

class TermsandConditionsWidget extends StatefulWidget {
  const TermsandConditionsWidget({super.key});

  @override
  State<TermsandConditionsWidget> createState() =>
      _TermsandConditionsWidgetState();
}

class _TermsandConditionsWidgetState extends State<TermsandConditionsWidget> {
  late TermsandConditionsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsandConditionsModel());

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
            'Terms and Conditions',
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
                  'Welcome to Kisaan24.com ! Before using our services, please read these terms and conditions carefully. By accessing or using our website, you agree to be bound by these terms and conditions.\n\nDelivery Timeframe:\nWe strive to deliver orders within 12-24 hours from the time of purchase. However, delivery times may vary depending on factors such as product availability and location.\n\nOrder Placement:\nBy placing an order on our website, you agree to provide accurate and complete information, including your contact details and delivery address.\n\nProduct Availability:\nAll products listed on our website are subject to availability. In the event that a product is out of stock or unavailable, we reserve the right to cancel your order or provide a suitable alternative.\n\nModification of Terms:\n[Your Website Name] reserves the right to modify these terms and conditions at any time without prior notice. Changes will be effective immediately upon posting on our website.\n\nContact Us:\nIf you have any questions or concerns about these terms and conditions, please contact us at \nContact - \n+91 70653 70453\n\nBy using our website, you acknowledge that you have read, understood, and agree to be bound by these terms and conditions. If you do not agree with any part of these terms and conditions, please do not use our website.\n\nThank you for choosing \nKisaan24',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
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
