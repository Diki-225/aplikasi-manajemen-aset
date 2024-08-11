import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'halaman_data_aset_direktur_widget.dart'
    show HalamanDataAsetDirekturWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class HalamanDataAsetDirekturModel
    extends FlutterFlowModel<HalamanDataAsetDirekturWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ListViewDataAset widget.

  PagingController<DocumentSnapshot?, TbAsetRecord>?
      listViewDataAsetPagingController;
  Query? listViewDataAsetPagingQuery;
  List<StreamSubscription?> listViewDataAsetStreamSubscriptions = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    listViewDataAsetStreamSubscriptions.forEach((s) => s?.cancel());
    listViewDataAsetPagingController?.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, TbAsetRecord>
      setListViewDataAsetController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewDataAsetPagingController ??=
        _createListViewDataAsetController(query, parent);
    if (listViewDataAsetPagingQuery != query) {
      listViewDataAsetPagingQuery = query;
      listViewDataAsetPagingController?.refresh();
    }
    return listViewDataAsetPagingController!;
  }

  PagingController<DocumentSnapshot?, TbAsetRecord>
      _createListViewDataAsetController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, TbAsetRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryTbAsetRecordPage(
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewDataAsetStreamSubscriptions,
          controller: controller,
          pageSize: 25,
          isStream: true,
        ),
      );
  }
}
