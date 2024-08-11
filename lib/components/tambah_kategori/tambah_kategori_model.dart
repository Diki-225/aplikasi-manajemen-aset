import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'tambah_kategori_widget.dart' show TambahKategoriWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TambahKategoriModel extends FlutterFlowModel<TambahKategoriWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextFieldTambahKategori widget.
  FocusNode? textFieldTambahKategoriFocusNode;
  TextEditingController? textFieldTambahKategoriTextController;
  String? Function(BuildContext, String?)?
      textFieldTambahKategoriTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldTambahKategoriFocusNode?.dispose();
    textFieldTambahKategoriTextController?.dispose();
  }
}
