import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TbHistoryRecord extends FirestoreRecord {
  TbHistoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nama" field.
  String? _nama;
  String get nama => _nama ?? '';
  bool hasNama() => _nama != null;

  // "Merek" field.
  String? _merek;
  String get merek => _merek ?? '';
  bool hasMerek() => _merek != null;

  // "Ruangan" field.
  String? _ruangan;
  String get ruangan => _ruangan ?? '';
  bool hasRuangan() => _ruangan != null;

  // "Kategori" field.
  String? _kategori;
  String get kategori => _kategori ?? '';
  bool hasKategori() => _kategori != null;

  // "Tanggal" field.
  DateTime? _tanggal;
  DateTime? get tanggal => _tanggal;
  bool hasTanggal() => _tanggal != null;

  // "Deskripsi" field.
  String? _deskripsi;
  String get deskripsi => _deskripsi ?? '';
  bool hasDeskripsi() => _deskripsi != null;

  // "Tindakan" field.
  String? _tindakan;
  String get tindakan => _tindakan ?? '';
  bool hasTindakan() => _tindakan != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _nama = snapshotData['Nama'] as String?;
    _merek = snapshotData['Merek'] as String?;
    _ruangan = snapshotData['Ruangan'] as String?;
    _kategori = snapshotData['Kategori'] as String?;
    _tanggal = snapshotData['Tanggal'] as DateTime?;
    _deskripsi = snapshotData['Deskripsi'] as String?;
    _tindakan = snapshotData['Tindakan'] as String?;
    _status = snapshotData['status'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tb_history');

  static Stream<TbHistoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TbHistoryRecord.fromSnapshot(s));

  static Future<TbHistoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TbHistoryRecord.fromSnapshot(s));

  static TbHistoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TbHistoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TbHistoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TbHistoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TbHistoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TbHistoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTbHistoryRecordData({
  String? nama,
  String? merek,
  String? ruangan,
  String? kategori,
  DateTime? tanggal,
  String? deskripsi,
  String? tindakan,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nama': nama,
      'Merek': merek,
      'Ruangan': ruangan,
      'Kategori': kategori,
      'Tanggal': tanggal,
      'Deskripsi': deskripsi,
      'Tindakan': tindakan,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class TbHistoryRecordDocumentEquality implements Equality<TbHistoryRecord> {
  const TbHistoryRecordDocumentEquality();

  @override
  bool equals(TbHistoryRecord? e1, TbHistoryRecord? e2) {
    return e1?.nama == e2?.nama &&
        e1?.merek == e2?.merek &&
        e1?.ruangan == e2?.ruangan &&
        e1?.kategori == e2?.kategori &&
        e1?.tanggal == e2?.tanggal &&
        e1?.deskripsi == e2?.deskripsi &&
        e1?.tindakan == e2?.tindakan &&
        e1?.status == e2?.status;
  }

  @override
  int hash(TbHistoryRecord? e) => const ListEquality().hash([
        e?.nama,
        e?.merek,
        e?.ruangan,
        e?.kategori,
        e?.tanggal,
        e?.deskripsi,
        e?.tindakan,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is TbHistoryRecord;
}
