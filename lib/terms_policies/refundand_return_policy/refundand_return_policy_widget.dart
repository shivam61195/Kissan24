import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'refundand_return_policy_model.dart';
export 'refundand_return_policy_model.dart';

class RefundandReturnPolicyWidget extends StatefulWidget {
  const RefundandReturnPolicyWidget({super.key});

  @override
  State<RefundandReturnPolicyWidget> createState() =>
      _RefundandReturnPolicyWidgetState();
}

class _RefundandReturnPolicyWidgetState
    extends State<RefundandReturnPolicyWidget> {
  late RefundandReturnPolicyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RefundandReturnPolicyModel());

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
            'Refund and Return Policy',
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
                  'Thank you for choosing our services! Your satisfaction is important to us. Here\'s our refund and return policy:\n\nRefund Policy:\nIf you are unsatisfied with your purchase for any reason, please contact us within 2 hours of receiving your order to request a refund.\n\nReturn Policy:\nDue to our swift delivery within 12-24 hours, we do not accept returns on products unless they are damaged or defective upon receipt.\nIf you receive a damaged or defective item, please contact us immediately to arrange for a replacement or refund.\nDamaged or Defective Items:\nIf you receive a damaged or defective item, please contact us within 2 hours of receiving your order.\nWe may require photographic evidence of the damaged or defective item(s) to process your request.\nUpon verification, we will arrange for a replacement or issue a refund for the damaged or defective item(s).\nCustomer Support:\nOur customer support team is available to assist you with any questions or concerns regarding refunds and returns.\nPlease contact us via calling for prompt assistance.\nWhile we do not offer returns for reasons other than damage or defect, we strive to ensure your satisfaction with every purchase.\n\nThank you for choosing\nKisaan24.\nContact - \n+91 70653 70453',
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
