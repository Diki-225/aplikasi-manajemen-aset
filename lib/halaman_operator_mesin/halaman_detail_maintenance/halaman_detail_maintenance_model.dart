import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'halaman_detail_maintenance_widget.dart'
    show HalamanDetailMaintenanceWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HalamanDetailMaintenanceModel
    extends FlutterFlowModel<HalamanDetailMaintenanceWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextFieldKeterangan widget.
  FocusNode? textFieldKeteranganFocusNode;
  TextEditingController? textFieldKeteranganTextController;
  String? Function(BuildContext, String?)?
      textFieldKeteranganTextControllerValidator;
  // State field(s) for TextFieldTindakan widget.
  FocusNode? textFieldTindakanFocusNode;
  TextEditingController? textFieldTindakanTextController;
  String? Function(BuildContext, String?)?
      textFieldTindakanTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldKeteranganFocusNode?.dispose();
    textFieldKeteranganTextController?.dispose();

    textFieldTindakanFocusNode?.dispose();
    textFieldTindakanTextController?.dispose();
  }
}
