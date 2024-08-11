import '/backend/backend.dart';
import '/components/teknisi_navbar/teknisi_navbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'halaman_tab_history_teknisi_widget.dart'
    show HalamanTabHistoryTeknisiWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class HalamanTabHistoryTeknisiModel
    extends FlutterFlowModel<HalamanTabHistoryTeknisiWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ListViewDataHistory widget.

  PagingController<DocumentSnapshot?, TbHistoryRecord>?
      listViewDataHistoryPagingController;
  Query? listViewDataHistoryPagingQuery;
  List<StreamSubscription?> listViewDataHistoryStreamSubscriptions = [];

  // Model for TeknisiNavbar component.
  late TeknisiNavbarModel teknisiNavbarModel;

  @override
  void initState(BuildContext context) {
    teknisiNavbarModel = createModel(context, () => TeknisiNavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    listViewDataHistoryStreamSubscriptions.forEach((s) => s?.cancel());
    listViewDataHistoryPagingController?.dispose();

    teknisiNavbarModel.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, TbHistoryRecord>
      setListViewDataHistoryController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewDataHistoryPagingController ??=
        _createListViewDataHistoryController(query, parent);
    if (listViewDataHistoryPagingQuery != query) {
      listViewDataHistoryPagingQuery = query;
      listViewDataHistoryPagingController?.refresh();
    }
    return listViewDataHistoryPagingController!;
  }

  PagingController<DocumentSnapshot?, TbHistoryRecord>
      _createListViewDataHistoryController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller = PagingController<DocumentSnapshot?, TbHistoryRecord>(
        firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryTbHistoryRecordPage(
          queryBuilder: (_) => listViewDataHistoryPagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewDataHistoryStreamSubscriptions,
          controller: controller,
          pageSize: 25,
          isStream: true,
        ),
      );
  }
}
