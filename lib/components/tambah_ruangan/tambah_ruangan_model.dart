import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'tambah_ruangan_widget.dart' show TambahRuanganWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TambahRuanganModel extends FlutterFlowModel<TambahRuanganWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextFieldTambahRuangan widget.
  FocusNode? textFieldTambahRuanganFocusNode;
  TextEditingController? textFieldTambahRuanganTextController;
  String? Function(BuildContext, String?)?
      textFieldTambahRuanganTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldTambahRuanganFocusNode?.dispose();
    textFieldTambahRuanganTextController?.dispose();
  }
}
