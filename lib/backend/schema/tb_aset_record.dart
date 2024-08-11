import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TbAsetRecord extends FirestoreRecord {
  TbAsetRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nama_aset" field.
  String? _namaAset;
  String get namaAset => _namaAset ?? '';
  bool hasNamaAset() => _namaAset != null;

  // "merek" field.
  String? _merek;
  String get merek => _merek ?? '';
  bool hasMerek() => _merek != null;

  // "ruangan" field.
  String? _ruangan;
  String get ruangan => _ruangan ?? '';
  bool hasRuangan() => _ruangan != null;

  // "kategori" field.
  String? _kategori;
  String get kategori => _kategori ?? '';
  bool hasKategori() => _kategori != null;

  // "tgl_beli" field.
  DateTime? _tglBeli;
  DateTime? get tglBeli => _tglBeli;
  bool hasTglBeli() => _tglBeli != null;

  // "hrg_beli" field.
  String? _hrgBeli;
  String get hrgBeli => _hrgBeli ?? '';
  bool hasHrgBeli() => _hrgBeli != null;

  // "tgl_data_dibuat" field.
  DateTime? _tglDataDibuat;
  DateTime? get tglDataDibuat => _tglDataDibuat;
  bool hasTglDataDibuat() => _tglDataDibuat != null;

  void _initializeFields() {
    _namaAset = snapshotData['nama_aset'] as String?;
    _merek = snapshotData['merek'] as String?;
    _ruangan = snapshotData['ruangan'] as String?;
    _kategori = snapshotData['kategori'] as String?;
    _tglBeli = snapshotData['tgl_beli'] as DateTime?;
    _hrgBeli = snapshotData['hrg_beli'] as String?;
    _tglDataDibuat = snapshotData['tgl_data_dibuat'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tb_aset');

  static Stream<TbAsetRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TbAsetRecord.fromSnapshot(s));

  static Future<TbAsetRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TbAsetRecord.fromSnapshot(s));

  static TbAsetRecord fromSnapshot(DocumentSnapshot snapshot) => TbAsetRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TbAsetRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TbAsetRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TbAsetRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TbAsetRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTbAsetRecordData({
  String? namaAset,
  String? merek,
  String? ruangan,
  String? kategori,
  DateTime? tglBeli,
  String? hrgBeli,
  DateTime? tglDataDibuat,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nama_aset': namaAset,
      'merek': merek,
      'ruangan': ruangan,
      'kategori': kategori,
      'tgl_beli': tglBeli,
      'hrg_beli': hrgBeli,
      'tgl_data_dibuat': tglDataDibuat,
    }.withoutNulls,
  );

  return firestoreData;
}

class TbAsetRecordDocumentEquality implements Equality<TbAsetRecord> {
  const TbAsetRecordDocumentEquality();

  @override
  bool equals(TbAsetRecord? e1, TbAsetRecord? e2) {
    return e1?.namaAset == e2?.namaAset &&
        e1?.merek == e2?.merek &&
        e1?.ruangan == e2?.ruangan &&
        e1?.kategori == e2?.kategori &&
        e1?.tglBeli == e2?.tglBeli &&
        e1?.hrgBeli == e2?.hrgBeli &&
        e1?.tglDataDibuat == e2?.tglDataDibuat;
  }

  @override
  int hash(TbAsetRecord? e) => const ListEquality().hash([
        e?.namaAset,
        e?.merek,
        e?.ruangan,
        e?.kategori,
        e?.tglBeli,
        e?.hrgBeli,
        e?.tglDataDibuat
      ]);

  @override
  bool isValidKey(Object? o) => o is TbAsetRecord;
}
