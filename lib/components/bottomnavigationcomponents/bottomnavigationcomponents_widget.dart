import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'bottomnavigationcomponents_model.dart';
export 'bottomnavigationcomponents_model.dart';

class BottomnavigationcomponentsWidget extends StatefulWidget {
  const BottomnavigationcomponentsWidget({
    super.key,
    int? selectedPageIndex,
    bool? hidden,
  })  : selectedPageIndex = selectedPageIndex ?? 1,
        hidden = hidden ?? false;

  final int selectedPageIndex;
  final bool hidden;

  @override
  State<BottomnavigationcomponentsWidget> createState() =>
      _BottomnavigationcomponentsWidgetState();
}

class _BottomnavigationcomponentsWidgetState
    extends State<BottomnavigationcomponentsWidget>
    with TickerProviderStateMixin {
  late BottomnavigationcomponentsModel _model;

  final animationsMap = {
    'dividerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: const Offset(0.6, 1.0),
          end: const Offset(1.0, 1.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'dividerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: const Offset(0.6, 1.0),
          end: const Offset(1.0, 1.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'dividerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: const Offset(0.6, 1.0),
          end: const Offset(1.0, 1.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'dividerOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: const Offset(0.6, 1.0),
          end: const Offset(1.0, 1.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomnavigationcomponentsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
      child: Container(
        width: 360.0,
        height: 70.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              FlutterFlowTheme.of(context).primary,
              FlutterFlowTheme.of(context).secondary
            ],
            stops: const [0.0, 1.0],
            begin: const AlignmentDirectional(1.0, -1.0),
            end: const AlignmentDirectional(-1.0, 1.0),
          ),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(8.0),
            bottomRight: Radius.circular(8.0),
            topLeft: Radius.circular(8.0),
            topRight: Radius.circular(8.0),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Opacity(
                  opacity: widget.selectedPageIndex == 1 ? 1.0 : 0.5,
                  child: FlutterFlowIconButton(
                    borderRadius: 30.0,
                    borderWidth: 0.0,
                    buttonSize: 50.0,
                    icon: Icon(
                      Icons.cottage_outlined,
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.goNamed(
                        'homepage',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                  ),
                ),
                if (widget.selectedPageIndex == 1)
                  SizedBox(
                    width: 30.0,
                    child: Divider(
                      height: 2.0,
                      thickness: 2.0,
                      color: FlutterFlowTheme.of(context).lineColor,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['dividerOnPageLoadAnimation1']!),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Opacity(
                  opacity: widget.selectedPageIndex == 2 ? 1.0 : 0.5,
                  child: FlutterFlowIconButton(
                    borderRadius: 30.0,
                    borderWidth: 0.0,
                    buttonSize: 50.0,
                    icon: Icon(
                      Icons.search_outlined,
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.pushNamed(
                        'SearchPage',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                  ),
                ),
                if (widget.selectedPageIndex == 2)
                  SizedBox(
                    width: 30.0,
                    child: Divider(
                      height: 2.0,
                      thickness: 2.0,
                      color: FlutterFlowTheme.of(context).lineColor,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['dividerOnPageLoadAnimation2']!),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Opacity(
                  opacity: widget.selectedPageIndex == 3 ? 1.0 : 0.5,
                  child: FlutterFlowIconButton(
                    borderRadius: 30.0,
                    borderWidth: 0.0,
                    buttonSize: 50.0,
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.pushNamed(
                        'cart_Details',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                  ),
                ),
                if (widget.selectedPageIndex == 3)
                  SizedBox(
                    width: 30.0,
                    child: Divider(
                      height: 2.0,
                      thickness: 2.0,
                      color: FlutterFlowTheme.of(context).lineColor,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['dividerOnPageLoadAnimation3']!),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Opacity(
                  opacity: widget.selectedPageIndex == 4 ? 1.0 : 0.5,
                  child: FlutterFlowIconButton(
                    borderRadius: 30.0,
                    borderWidth: 0.0,
                    buttonSize: 50.0,
                    icon: Icon(
                      Icons.person_outline_sharp,
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.pushNamed(
                        'ProfilePage',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                  ),
                ),
                if (widget.selectedPageIndex == 4)
                  SizedBox(
                    width: 30.0,
                    child: Divider(
                      height: 2.0,
                      thickness: 2.0,
                      color: FlutterFlowTheme.of(context).lineColor,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['dividerOnPageLoadAnimation4']!),
              ],
            ),
          ]
              .divide(const SizedBox(width: 16.0))
              .addToStart(const SizedBox(width: 16.0))
              .addToEnd(const SizedBox(width: 16.0)),
        ),
      ),
    );
  }
}
