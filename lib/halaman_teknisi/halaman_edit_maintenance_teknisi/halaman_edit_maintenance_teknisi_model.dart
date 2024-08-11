import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'halaman_edit_maintenance_teknisi_widget.dart'
    show HalamanEditMaintenanceTeknisiWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HalamanEditMaintenanceTeknisiModel
    extends FlutterFlowModel<HalamanEditMaintenanceTeknisiWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextFieldNamaAset widget.
  FocusNode? textFieldNamaAsetFocusNode;
  TextEditingController? textFieldNamaAsetTextController;
  String? Function(BuildContext, String?)?
      textFieldNamaAsetTextControllerValidator;
  // State field(s) for MerekTextField widget.
  FocusNode? merekTextFieldFocusNode;
  TextEditingController? merekTextFieldTextController;
  String? Function(BuildContext, String?)?
      merekTextFieldTextControllerValidator;
  // State field(s) for RuanganTextField widget.
  FocusNode? ruanganTextFieldFocusNode;
  TextEditingController? ruanganTextFieldTextController;
  String? Function(BuildContext, String?)?
      ruanganTextFieldTextControllerValidator;
  // State field(s) for TextFieldKategori widget.
  FocusNode? textFieldKategoriFocusNode;
  TextEditingController? textFieldKategoriTextController;
  String? Function(BuildContext, String?)?
      textFieldKategoriTextControllerValidator;
  // State field(s) for DropDownPilihStatus widget.
  String? dropDownPilihStatusValue;
  FormFieldController<String>? dropDownPilihStatusValueController;
  DateTime? datePicked;
  // State field(s) for KeteranganTextField widget.
  FocusNode? keteranganTextFieldFocusNode;
  TextEditingController? keteranganTextFieldTextController;
  String? Function(BuildContext, String?)?
      keteranganTextFieldTextControllerValidator;
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
    textFieldNamaAsetFocusNode?.dispose();
    textFieldNamaAsetTextController?.dispose();

    merekTextFieldFocusNode?.dispose();
    merekTextFieldTextController?.dispose();

    ruanganTextFieldFocusNode?.dispose();
    ruanganTextFieldTextController?.dispose();

    textFieldKategoriFocusNode?.dispose();
    textFieldKategoriTextController?.dispose();

    keteranganTextFieldFocusNode?.dispose();
    keteranganTextFieldTextController?.dispose();

    textFieldTindakanFocusNode?.dispose();
    textFieldTindakanTextController?.dispose();
  }
}
