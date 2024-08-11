import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'halaman_tambah_maintenance_model.dart';
export 'halaman_tambah_maintenance_model.dart';

class HalamanTambahMaintenanceWidget extends StatefulWidget {
  const HalamanTambahMaintenanceWidget({super.key});

  @override
  State<HalamanTambahMaintenanceWidget> createState() =>
      _HalamanTambahMaintenanceWidgetState();
}

class _HalamanTambahMaintenanceWidgetState
    extends State<HalamanTambahMaintenanceWidget> {
  late HalamanTambahMaintenanceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HalamanTambahMaintenanceModel());

    _model.merekTextFieldTextController ??= TextEditingController();
    _model.merekTextFieldFocusNode ??= FocusNode();

    _model.textFieldKeteranganTextController ??= TextEditingController();
    _model.textFieldKeteranganFocusNode ??= FocusNode();
    _model.textFieldKeteranganFocusNode!.addListener(() => setState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.goNamed('halaman_tab_maintenance');
            },
          ),
          title: Text(
            'Tambah Maintenance',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Material(
                    color: Colors.transparent,
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).alternate,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 1.0,
                            color: Color(0x33000000),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 0.0, 15.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            StreamBuilder<List<TbAsetRecord>>(
                              stream: queryTbAsetRecord(
                                queryBuilder: (tbAsetRecord) =>
                                    tbAsetRecord.orderBy('tgl_data_dibuat',
                                        descending: true),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<TbAsetRecord>
                                    dropDownPilihAsetTbAsetRecordList =
                                    snapshot.data!;

                                return FlutterFlowDropDown<String>(
                                  controller: _model
                                          .dropDownPilihAsetValueController ??=
                                      FormFieldController<String>(null),
                                  options: dropDownPilihAsetTbAsetRecordList
                                      .map((e) => valueOrDefault<String>(
                                            e.namaAset,
                                            'N/A',
                                          ))
                                      .toList(),
                                  onChanged: (val) => setState(() =>
                                      _model.dropDownPilihAsetValue = val),
                                  width: double.infinity,
                                  height: 52.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                      ),
                                  hintText: 'Pilih aset...',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  elevation: 2.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).primary,
                                  borderWidth: 2.0,
                                  borderRadius: 8.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 4.0),
                                  hidesUnderline: true,
                                  isOverButton: true,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                );
                              },
                            ),
                            TextFormField(
                              controller: _model.merekTextFieldTextController,
                              focusNode: _model.merekTextFieldFocusNode,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.merekTextFieldTextController',
                                Duration(milliseconds: 2000),
                                () => setState(() {}),
                              ),
                              autofocus: false,
                              textInputAction: TextInputAction.next,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Merek...',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                suffixIcon: _model.merekTextFieldTextController!
                                        .text.isNotEmpty
                                    ? InkWell(
                                        onTap: () async {
                                          _model.merekTextFieldTextController
                                              ?.clear();
                                          setState(() {});
                                        },
                                        child: Icon(
                                          Icons.clear,
                                          size: 25.0,
                                        ),
                                      )
                                    : null,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              maxLines: null,
                              minLines: 1,
                              validator: _model
                                  .merekTextFieldTextControllerValidator
                                  .asValidator(context),
                            ),
                            StreamBuilder<List<TbRuanganRecord>>(
                              stream: queryTbRuanganRecord(
                                queryBuilder: (tbRuanganRecord) =>
                                    tbRuanganRecord.orderBy('tgl_data_dibuat',
                                        descending: true),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<TbRuanganRecord>
                                    dropDownPilihRuanganTbRuanganRecordList =
                                    snapshot.data!;

                                return FlutterFlowDropDown<String>(
                                  controller: _model
                                          .dropDownPilihRuanganValueController ??=
                                      FormFieldController<String>(null),
                                  options:
                                      dropDownPilihRuanganTbRuanganRecordList
                                          .map((e) => e.ruangan)
                                          .toList(),
                                  onChanged: (val) => setState(() =>
                                      _model.dropDownPilihRuanganValue = val),
                                  width: double.infinity,
                                  height: 52.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                      ),
                                  hintText: 'Pilih ruangan...',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  elevation: 2.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).primary,
                                  borderWidth: 2.0,
                                  borderRadius: 8.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 4.0),
                                  hidesUnderline: true,
                                  isOverButton: true,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                );
                              },
                            ),
                            StreamBuilder<List<TbKategoriRecord>>(
                              stream: queryTbKategoriRecord(
                                queryBuilder: (tbKategoriRecord) =>
                                    tbKategoriRecord.orderBy('tgl_data_dibuat',
                                        descending: true),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<TbKategoriRecord>
                                    dropDownPilihKategoriTbKategoriRecordList =
                                    snapshot.data!;

                                return FlutterFlowDropDown<String>(
                                  controller: _model
                                          .dropDownPilihKategoriValueController ??=
                                      FormFieldController<String>(null),
                                  options:
                                      dropDownPilihKategoriTbKategoriRecordList
                                          .map((e) => e.kategori)
                                          .toList(),
                                  onChanged: (val) => setState(() =>
                                      _model.dropDownPilihKategoriValue = val),
                                  width: double.infinity,
                                  height: 52.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                      ),
                                  hintText: 'Pilih kategori...',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  elevation: 2.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).primary,
                                  borderWidth: 2.0,
                                  borderRadius: 8.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 4.0),
                                  hidesUnderline: true,
                                  isOverButton: true,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                );
                              },
                            ),
                            FlutterFlowDropDown<String>(
                              controller:
                                  _model.dropDownPilihStatusValueController ??=
                                      FormFieldController<String>(null),
                              options: ['Rusak', 'Perbaikan'],
                              onChanged: (val) => setState(
                                  () => _model.dropDownPilihStatusValue = val),
                              width: double.infinity,
                              height: 52.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'Pilih status...',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor: FlutterFlowTheme.of(context).primary,
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              hidesUnderline: true,
                              isOverButton: true,
                              isSearchable: false,
                              isMultiSelect: false,
                              labelText: '',
                              labelTextStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            TextFormField(
                              controller:
                                  _model.textFieldKeteranganTextController,
                              focusNode: _model.textFieldKeteranganFocusNode,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.textFieldKeteranganTextController',
                                Duration(milliseconds: 2000),
                                () => setState(() {}),
                              ),
                              autofocus: false,
                              textInputAction: TextInputAction.done,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Keterangan...',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                suffixIcon: _model
                                        .textFieldKeteranganTextController!
                                        .text
                                        .isNotEmpty
                                    ? InkWell(
                                        onTap: () async {
                                          _model
                                              .textFieldKeteranganTextController
                                              ?.clear();
                                          setState(() {});
                                        },
                                        child: Icon(
                                          Icons.clear,
                                          size: 25.0,
                                        ),
                                      )
                                    : null,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              maxLines: null,
                              minLines: 1,
                              validator: _model
                                  .textFieldKeteranganTextControllerValidator
                                  .asValidator(context),
                            ),
                          ]
                              .divide(SizedBox(height: 15.0))
                              .around(SizedBox(height: 15.0)),
                        ),
                      ),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: ((_model.dropDownPilihAsetValue == null ||
                                _model.dropDownPilihAsetValue == '') ||
                            (_model.dropDownPilihRuanganValue == null ||
                                _model.dropDownPilihRuanganValue == '') ||
                            (_model.dropDownPilihKategoriValue == null ||
                                _model.dropDownPilihKategoriValue == '') ||
                            (_model.dropDownPilihStatusValue == null ||
                                _model.dropDownPilihStatusValue == '') ||
                            (_model.textFieldKeteranganTextController.text ==
                                    null ||
                                _model.textFieldKeteranganTextController.text ==
                                    ''))
                        ? null
                        : () async {
                            await TbMaintenanceRecord.collection
                                .doc()
                                .set(createTbMaintenanceRecordData(
                                  namaAset: _model.dropDownPilihAsetValue,
                                  merek:
                                      _model.merekTextFieldTextController.text,
                                  ruangan: _model.dropDownPilihRuanganValue,
                                  kategori: _model.dropDownPilihKategoriValue,
                                  status: _model.dropDownPilihStatusValue,
                                  keterangan: _model
                                      .textFieldKeteranganTextController.text,
                                  tanggal: getCurrentTimestamp,
                                  tindakan: 'Tidak ada tindakan',
                                ));
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('Berhasil disimpan'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );
                            setState(() {
                              _model.merekTextFieldTextController?.clear();
                              _model.textFieldKeteranganTextController?.clear();
                            });
                          },
                    text: 'Simpan',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                      disabledColor: FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ),
                ]
                    .divide(SizedBox(height: 40.0))
                    .addToStart(SizedBox(height: 15.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
