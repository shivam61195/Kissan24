import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'privacy_policy_model.dart';
export 'privacy_policy_model.dart';

class PrivacyPolicyWidget extends StatefulWidget {
  const PrivacyPolicyWidget({super.key});

  @override
  State<PrivacyPolicyWidget> createState() => _PrivacyPolicyWidgetState();
}

class _PrivacyPolicyWidgetState extends State<PrivacyPolicyWidget> {
  late PrivacyPolicyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacyPolicyModel());

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
            'Privacy Policy',
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
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Text(
                        'At Kisaan24.com, we are committed to protecting your privacy and ensuring the security of your personal information. This privacy policy outlines how we collect, use, and safeguard the information you provide to us.\n\nInformation We Collect:\nPersonal Information: When you visit our website or place an order, we may collect personal information such as your name, email address, phone number, and delivery address.\nPayment Information: If you make a purchase on our website, we may collect payment information such as credit card details or other payment method details.\nUsage Information: We may collect information about your interactions with our website, including the pages you visit, the products you view, and your browsing activity.\nUse of Information:\nWe use the information we collect to process your orders, communicate with you, and provide customer support.\nWe may also use your information to personalize your experience on our website and to improve our products and services.\nWe do not sell, trade, or otherwise transfer your personal information to third parties without your consent, except as required by law or as necessary to fulfill your orders.\nData Security:\nWe take appropriate security measures to protect your personal information from unauthorized access, disclosure, alteration, or destruction.\nWe use encryption technology to safeguard sensitive information transmitted online.\nPrivacy Policy for Kisaan24.com:\n\nAt Kisaan24.com, we are committed to protecting your privacy and ensuring the security of your personal information. This privacy policy outlines how we collect, use, and safeguard the information you provide to us.\n\nInformation We Collect:\nPersonal Information: When you visit our website or place an order, we may collect personal information such as your name, email address, phone number, and delivery address.\nPayment Information: If you make a purchase on our website, we may collect payment information such as credit card details or other payment method details.\nUsage Information: We may collect information about your interactions with our website, including the pages you visit, the products you view, and your browsing activity.\nUse of Information:\nWe use the information we collect to process your orders, communicate with you, and provide customer support.\nWe may also use your information to personalize your experience on our website and to improve our products and services.\nWe do not sell, trade, or otherwise transfer your personal information to third parties without your consent, except as required by law or as necessary to fulfill your orders.\nData Security:\nWe take appropriate security measures to protect your personal information from unauthorized access, disclosure, alteration, or destruction.\nWe use encryption technology to safeguard sensitive information transmitted online.\nCookies:\nWe may use cookies and similar tracking technologies to enhance your browsing experience and collect information about how you use our website.\nYou can adjust your browser settings to refuse cookies or to be notified when cookies are being sent. However, please note that certain features of our website may not function properly if cookies are disabled.\nThird-Party Links:\nOur application may contain links to third-party websites. We are not responsible for the privacy practices or content of these third-party sites. We encourage you to read the privacy policies of this application before providing any personal information.\n\nChanges to this Privacy Policy:\nWe reserve the right to update or change our privacy policy at any time. Any changes will be posted on this page with a revised effective date.\nContact Us:\nIf you have any questions or concerns about our privacy policy, please contact us at \nContact - \n+91 70653 70453\nBy using our application, you consent to the collection and use of your information as described in this privacy policy.\n\nThank you for choosing Kisaan24.com!',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
