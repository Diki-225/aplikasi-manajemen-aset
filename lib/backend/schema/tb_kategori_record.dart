import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TbKategoriRecord extends FirestoreRecord {
  TbKategoriRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "kategori" field.
  String? _kategori;
  String get kategori => _kategori ?? '';
  bool hasKategori() => _kategori != null;

  // "tgl_data_dibuat" field.
  DateTime? _tglDataDibuat;
  DateTime? get tglDataDibuat => _tglDataDibuat;
  bool hasTglDataDibuat() => _tglDataDibuat != null;

  void _initializeFields() {
    _kategori = snapshotData['kategori'] as String?;
    _tglDataDibuat = snapshotData['tgl_data_dibuat'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tb_kategori');

  static Stream<TbKategoriRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TbKategoriRecord.fromSnapshot(s));

  static Future<TbKategoriRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TbKategoriRecord.fromSnapshot(s));

  static TbKategoriRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TbKategoriRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TbKategoriRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TbKategoriRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TbKategoriRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TbKategoriRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTbKategoriRecordData({
  String? kategori,
  DateTime? tglDataDibuat,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'kategori': kategori,
      'tgl_data_dibuat': tglDataDibuat,
    }.withoutNulls,
  );

  return firestoreData;
}

class TbKategoriRecordDocumentEquality implements Equality<TbKategoriRecord> {
  const TbKategoriRecordDocumentEquality();

  @override
  bool equals(TbKategoriRecord? e1, TbKategoriRecord? e2) {
    return e1?.kategori == e2?.kategori &&
        e1?.tglDataDibuat == e2?.tglDataDibuat;
  }

  @override
  int hash(TbKategoriRecord? e) =>
      const ListEquality().hash([e?.kategori, e?.tglDataDibuat]);

  @override
  bool isValidKey(Object? o) => o is TbKategoriRecord;
}
