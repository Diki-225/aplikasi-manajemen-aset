import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'halaman_data_aset_copy_widget.dart' show HalamanDataAsetCopyWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HalamanDataAsetCopyModel
    extends FlutterFlowModel<HalamanDataAsetCopyWidget> {
  ///  Local state fields for this page.

  bool modecari = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextFieldCari widget.
  FocusNode? textFieldCariFocusNode;
  TextEditingController? textFieldCariTextController;
  String? Function(BuildContext, String?)? textFieldCariTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldCariFocusNode?.dispose();
    textFieldCariTextController?.dispose();
  }
}
