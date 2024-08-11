import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'halaman_detail_history_widget.dart' show HalamanDetailHistoryWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HalamanDetailHistoryModel
    extends FlutterFlowModel<HalamanDetailHistoryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextFieldKeterangan widget.
  FocusNode? textFieldKeteranganFocusNode1;
  TextEditingController? textFieldKeteranganTextController1;
  String? Function(BuildContext, String?)?
      textFieldKeteranganTextController1Validator;
  // State field(s) for TextFieldKeterangan widget.
  FocusNode? textFieldKeteranganFocusNode2;
  TextEditingController? textFieldKeteranganTextController2;
  String? Function(BuildContext, String?)?
      textFieldKeteranganTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldKeteranganFocusNode1?.dispose();
    textFieldKeteranganTextController1?.dispose();

    textFieldKeteranganFocusNode2?.dispose();
    textFieldKeteranganTextController2?.dispose();
  }
}
