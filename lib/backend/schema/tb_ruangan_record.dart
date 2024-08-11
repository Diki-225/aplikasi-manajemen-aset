import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TbRuanganRecord extends FirestoreRecord {
  TbRuanganRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ruangan" field.
  String? _ruangan;
  String get ruangan => _ruangan ?? '';
  bool hasRuangan() => _ruangan != null;

  // "tgl_data_dibuat" field.
  DateTime? _tglDataDibuat;
  DateTime? get tglDataDibuat => _tglDataDibuat;
  bool hasTglDataDibuat() => _tglDataDibuat != null;

  void _initializeFields() {
    _ruangan = snapshotData['ruangan'] as String?;
    _tglDataDibuat = snapshotData['tgl_data_dibuat'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tb_ruangan');

  static Stream<TbRuanganRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TbRuanganRecord.fromSnapshot(s));

  static Future<TbRuanganRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TbRuanganRecord.fromSnapshot(s));

  static TbRuanganRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TbRuanganRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TbRuanganRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TbRuanganRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TbRuanganRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TbRuanganRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTbRuanganRecordData({
  String? ruangan,
  DateTime? tglDataDibuat,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ruangan': ruangan,
      'tgl_data_dibuat': tglDataDibuat,
    }.withoutNulls,
  );

  return firestoreData;
}

class TbRuanganRecordDocumentEquality implements Equality<TbRuanganRecord> {
  const TbRuanganRecordDocumentEquality();

  @override
  bool equals(TbRuanganRecord? e1, TbRuanganRecord? e2) {
    return e1?.ruangan == e2?.ruangan && e1?.tglDataDibuat == e2?.tglDataDibuat;
  }

  @override
  int hash(TbRuanganRecord? e) =>
      const ListEquality().hash([e?.ruangan, e?.tglDataDibuat]);

  @override
  bool isValidKey(Object? o) => o is TbRuanganRecord;
}
