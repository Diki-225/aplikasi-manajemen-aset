import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'halaman_reset_email_widget.dart' show HalamanResetEmailWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HalamanResetEmailModel extends FlutterFlowModel<HalamanResetEmailWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldEmailBaru widget.
  FocusNode? textFieldEmailBaruFocusNode;
  TextEditingController? textFieldEmailBaruTextController;
  String? Function(BuildContext, String?)?
      textFieldEmailBaruTextControllerValidator;
  String? _textFieldEmailBaruTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email harus diisi';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Email tidak valid';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    textFieldEmailBaruTextControllerValidator =
        _textFieldEmailBaruTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldEmailBaruFocusNode?.dispose();
    textFieldEmailBaruTextController?.dispose();
  }
}
