import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'halaman_data_aset_copy_model.dart';
export 'halaman_data_aset_copy_model.dart';

class HalamanDataAsetCopyWidget extends StatefulWidget {
  const HalamanDataAsetCopyWidget({super.key});

  @override
  State<HalamanDataAsetCopyWidget> createState() =>
      _HalamanDataAsetCopyWidgetState();
}

class _HalamanDataAsetCopyWidgetState extends State<HalamanDataAsetCopyWidget> {
  late HalamanDataAsetCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HalamanDataAsetCopyModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.modecari = false;
      setState(() {});
    });

    _model.textFieldCariTextController ??= TextEditingController();
    _model.textFieldCariFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            context.pushNamed('halaman_tambah_aset');
          },
          backgroundColor: FlutterFlowTheme.of(context).primary,
          elevation: 8.0,
          child: Icon(
            Icons.add,
            color: FlutterFlowTheme.of(context).info,
            size: 24.0,
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: Stack(
            children: [
              if (FFAppState().cariaktif)
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  buttonSize: 48.0,
                  icon: Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    FFAppState().cariaktif = false;
                    setState(() {});
                    setState(() {
                      _model.textFieldCariTextController?.clear();
                    });
                    _model.modecari = false;
                    setState(() {});
                  },
                ),
              if (!FFAppState().cariaktif)
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  buttonSize: 48.0,
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('halaman_tab_aset');
                  },
                ),
            ],
          ),
          title: Stack(
            children: [
              Text(
                'Daftar Aset',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      letterSpacing: 0.0,
                    ),
              ),
              if (FFAppState().cariaktif)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    child: TextFormField(
                      controller: _model.textFieldCariTextController,
                      focusNode: _model.textFieldCariFocusNode,
                      onChanged: (_) => EasyDebounce.debounce(
                        '_model.textFieldCariTextController',
                        Duration(milliseconds: 2000),
                        () => setState(() {}),
                      ),
                      autofocus: false,
                      textInputAction: TextInputAction.done,
                      obscureText: false,
                      decoration: InputDecoration(
                        isDense: true,
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                        hintText: 'Cari...',
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
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
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        prefixIcon: Icon(
                          Icons.search,
                        ),
                        suffixIcon: _model
                                .textFieldCariTextController!.text.isNotEmpty
                            ? InkWell(
                                onTap: () async {
                                  _model.textFieldCariTextController?.clear();
                                  setState(() {});
                                },
                                child: Icon(
                                  Icons.clear,
                                  size: 30.0,
                                ),
                              )
                            : null,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                          ),
                      maxLines: null,
                      minLines: 1,
                      validator: _model.textFieldCariTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ),
            ],
          ),
          actions: [
            FlutterFlowIconButton(
              borderColor: FlutterFlowTheme.of(context).primary,
              borderRadius: 20.0,
              buttonSize: 48.0,
              fillColor: FlutterFlowTheme.of(context).accent1,
              icon: Icon(
                Icons.manage_search_sharp,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                size: 30.0,
              ),
              onPressed: () async {
                FFAppState().cariaktif = true;
                setState(() {});
              },
            ),
          ],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
                  child: StreamBuilder<List<TbAsetRecord>>(
                    stream: queryTbAsetRecord(),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<TbAsetRecord> listViewDataAsetTbAsetRecordList =
                          snapshot.data!;

                      return ListView.separated(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewDataAsetTbAsetRecordList.length,
                        separatorBuilder: (_, __) => SizedBox(height: 15.0),
                        itemBuilder: (context, listViewDataAsetIndex) {
                          final listViewDataAsetTbAsetRecord =
                              listViewDataAsetTbAsetRecordList[
                                  listViewDataAsetIndex];
                          return InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'halaman_detail_aset',
                                queryParameters: {
                                  'detailDataAset': serializeParam(
                                    listViewDataAsetTbAsetRecord,
                                    ParamType.Document,
                                  ),
                                }.withoutNulls,
                                extra: <String, dynamic>{
                                  'detailDataAset':
                                      listViewDataAsetTbAsetRecord,
                                },
                              );
                            },
                            child: Container(
                              width: 100.0,
                              height: 70.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 1.0,
                                    color: Color(0x33000000),
                                    offset: Offset(
                                      0.0,
                                      4.0,
                                    ),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(10.0),
                                shape: BoxShape.rectangle,
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        listViewDataAsetTbAsetRecord.namaAset,
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    FlutterFlowIconButton(
                                      icon: Icon(
                                        Icons.delete,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 40.0,
                                      ),
                                      onPressed: () async {
                                        await listViewDataAsetTbAsetRecord
                                            .reference
                                            .delete();

                                        context.pushNamed(
                                          'halaman_data_asetCopy',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
