import '/backend/backend.dart';
import '/components/tambah_ruangan/tambah_ruangan_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'halaman_data_ruangan_widget.dart' show HalamanDataRuanganWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class HalamanDataRuanganModel
    extends FlutterFlowModel<HalamanDataRuanganWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ListViewDataRuangan widget.

  PagingController<DocumentSnapshot?, TbRuanganRecord>?
      listViewDataRuanganPagingController;
  Query? listViewDataRuanganPagingQuery;
  List<StreamSubscription?> listViewDataRuanganStreamSubscriptions = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    listViewDataRuanganStreamSubscriptions.forEach((s) => s?.cancel());
    listViewDataRuanganPagingController?.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, TbRuanganRecord>
      setListViewDataRuanganController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewDataRuanganPagingController ??=
        _createListViewDataRuanganController(query, parent);
    if (listViewDataRuanganPagingQuery != query) {
      listViewDataRuanganPagingQuery = query;
      listViewDataRuanganPagingController?.refresh();
    }
    return listViewDataRuanganPagingController!;
  }

  PagingController<DocumentSnapshot?, TbRuanganRecord>
      _createListViewDataRuanganController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller = PagingController<DocumentSnapshot?, TbRuanganRecord>(
        firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryTbRuanganRecordPage(
          queryBuilder: (_) => listViewDataRuanganPagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewDataRuanganStreamSubscriptions,
          controller: controller,
          pageSize: 25,
          isStream: true,
        ),
      );
  }
}
