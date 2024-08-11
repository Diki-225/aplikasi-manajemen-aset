import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'halaman_edit_aset_widget.dart' show HalamanEditAsetWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HalamanEditAsetModel extends FlutterFlowModel<HalamanEditAsetWidget> {
  ///  Local state fields for this page.

  int? mataUang;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for namaAsetTextField widget.
  FocusNode? namaAsetTextFieldFocusNode;
  TextEditingController? namaAsetTextFieldTextController;
  String? Function(BuildContext, String?)?
      namaAsetTextFieldTextControllerValidator;
  // State field(s) for MerekTextField widget.
  FocusNode? merekTextFieldFocusNode;
  TextEditingController? merekTextFieldTextController;
  String? Function(BuildContext, String?)?
      merekTextFieldTextControllerValidator;
  // State field(s) for DropDownRuangan widget.
  String? dropDownRuanganValue;
  FormFieldController<String>? dropDownRuanganValueController;
  // State field(s) for DropDownKategori widget.
  String? dropDownKategoriValue;
  FormFieldController<String>? dropDownKategoriValueController;
  DateTime? datePicked;
  // State field(s) for hargaBeliTextField widget.
  FocusNode? hargaBeliTextFieldFocusNode;
  TextEditingController? hargaBeliTextFieldTextController;
  String? Function(BuildContext, String?)?
      hargaBeliTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    namaAsetTextFieldFocusNode?.dispose();
    namaAsetTextFieldTextController?.dispose();

    merekTextFieldFocusNode?.dispose();
    merekTextFieldTextController?.dispose();

    hargaBeliTextFieldFocusNode?.dispose();
    hargaBeliTextFieldTextController?.dispose();
  }
}
