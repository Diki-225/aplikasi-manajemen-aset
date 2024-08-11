import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'halaman_tab_maintenance_widget.dart' show HalamanTabMaintenanceWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class HalamanTabMaintenanceModel
    extends FlutterFlowModel<HalamanTabMaintenanceWidget> {
  ///  Local state fields for this page.

  bool statusbaik = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ListViewDataMaintenance widget.

  PagingController<DocumentSnapshot?, TbMaintenanceRecord>?
      listViewDataMaintenancePagingController;
  Query? listViewDataMaintenancePagingQuery;
  List<StreamSubscription?> listViewDataMaintenanceStreamSubscriptions = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    listViewDataMaintenanceStreamSubscriptions.forEach((s) => s?.cancel());
    listViewDataMaintenancePagingController?.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, TbMaintenanceRecord>
      setListViewDataMaintenanceController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewDataMaintenancePagingController ??=
        _createListViewDataMaintenanceController(query, parent);
    if (listViewDataMaintenancePagingQuery != query) {
      listViewDataMaintenancePagingQuery = query;
      listViewDataMaintenancePagingController?.refresh();
    }
    return listViewDataMaintenancePagingController!;
  }

  PagingController<DocumentSnapshot?, TbMaintenanceRecord>
      _createListViewDataMaintenanceController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller = PagingController<DocumentSnapshot?, TbMaintenanceRecord>(
        firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryTbMaintenanceRecordPage(
          queryBuilder: (_) => listViewDataMaintenancePagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewDataMaintenanceStreamSubscriptions,
          controller: controller,
          pageSize: 25,
          isStream: true,
        ),
      );
  }
}
