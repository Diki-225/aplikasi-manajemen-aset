import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'teknisi_navbar_model.dart';
export 'teknisi_navbar_model.dart';

class TeknisiNavbarWidget extends StatefulWidget {
  const TeknisiNavbarWidget({
    super.key,
    required this.buttonOnSelect,
  });

  final String? buttonOnSelect;

  @override
  State<TeknisiNavbarWidget> createState() => _TeknisiNavbarWidgetState();
}

class _TeknisiNavbarWidgetState extends State<TeknisiNavbarWidget> {
  late TeknisiNavbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TeknisiNavbarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primary,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FlutterFlowIconButton(
                icon: Icon(
                  Icons.monitor_heart,
                  color: valueOrDefault<Color>(
                    widget!.buttonOnSelect == 'maintenance'
                        ? FlutterFlowTheme.of(context).secondaryBackground
                        : FlutterFlowTheme.of(context).accent4,
                    FlutterFlowTheme.of(context).accent4,
                  ),
                  size: 30.0,
                ),
                onPressed: () async {
                  context.goNamed(
                    'halaman_tab_maintenance_teknisi',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                        duration: Duration(milliseconds: 0),
                      ),
                    },
                  );
                },
              ),
              Text(
                'Maintenance',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      letterSpacing: 0.0,
                    ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FlutterFlowIconButton(
                icon: Icon(
                  Icons.work_history_sharp,
                  color: valueOrDefault<Color>(
                    widget!.buttonOnSelect == 'history'
                        ? FlutterFlowTheme.of(context).secondaryBackground
                        : FlutterFlowTheme.of(context).accent4,
                    FlutterFlowTheme.of(context).accent4,
                  ),
                  size: 30.0,
                ),
                onPressed: () async {
                  context.goNamed(
                    'halaman_tab_history_teknisi',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                        duration: Duration(milliseconds: 0),
                      ),
                    },
                  );
                },
              ),
              Text(
                'History',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      letterSpacing: 0.0,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
