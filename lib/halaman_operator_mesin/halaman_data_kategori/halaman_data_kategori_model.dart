import '/backend/backend.dart';
import '/components/tambah_kategori/tambah_kategori_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'halaman_data_kategori_widget.dart' show HalamanDataKategoriWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class HalamanDataKategoriModel
    extends FlutterFlowModel<HalamanDataKategoriWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ListViewKategori widget.

  PagingController<DocumentSnapshot?, TbKategoriRecord>?
      listViewKategoriPagingController;
  Query? listViewKategoriPagingQuery;
  List<StreamSubscription?> listViewKategoriStreamSubscriptions = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    listViewKategoriStreamSubscriptions.forEach((s) => s?.cancel());
    listViewKategoriPagingController?.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, TbKategoriRecord>
      setListViewKategoriController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewKategoriPagingController ??=
        _createListViewKategoriController(query, parent);
    if (listViewKategoriPagingQuery != query) {
      listViewKategoriPagingQuery = query;
      listViewKategoriPagingController?.refresh();
    }
    return listViewKategoriPagingController!;
  }

  PagingController<DocumentSnapshot?, TbKategoriRecord>
      _createListViewKategoriController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller = PagingController<DocumentSnapshot?, TbKategoriRecord>(
        firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryTbKategoriRecordPage(
          queryBuilder: (_) => listViewKategoriPagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewKategoriStreamSubscriptions,
          controller: controller,
          pageSize: 25,
          isStream: true,
        ),
      );
  }
}
