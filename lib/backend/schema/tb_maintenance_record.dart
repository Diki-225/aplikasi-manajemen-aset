import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TbMaintenanceRecord extends FirestoreRecord {
  TbMaintenanceRecord._(
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

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "keterangan" field.
  String? _keterangan;
  String get keterangan => _keterangan ?? '';
  bool hasKeterangan() => _keterangan != null;

  // "tindakan" field.
  String? _tindakan;
  String get tindakan => _tindakan ?? '';
  bool hasTindakan() => _tindakan != null;

  // "tanggal" field.
  DateTime? _tanggal;
  DateTime? get tanggal => _tanggal;
  bool hasTanggal() => _tanggal != null;

  void _initializeFields() {
    _namaAset = snapshotData['nama_aset'] as String?;
    _merek = snapshotData['merek'] as String?;
    _ruangan = snapshotData['ruangan'] as String?;
    _kategori = snapshotData['kategori'] as String?;
    _status = snapshotData['status'] as String?;
    _keterangan = snapshotData['keterangan'] as String?;
    _tindakan = snapshotData['tindakan'] as String?;
    _tanggal = snapshotData['tanggal'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tb_maintenance');

  static Stream<TbMaintenanceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TbMaintenanceRecord.fromSnapshot(s));

  static Future<TbMaintenanceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TbMaintenanceRecord.fromSnapshot(s));

  static TbMaintenanceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TbMaintenanceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TbMaintenanceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TbMaintenanceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TbMaintenanceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TbMaintenanceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTbMaintenanceRecordData({
  String? namaAset,
  String? merek,
  String? ruangan,
  String? kategori,
  String? status,
  String? keterangan,
  String? tindakan,
  DateTime? tanggal,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nama_aset': namaAset,
      'merek': merek,
      'ruangan': ruangan,
      'kategori': kategori,
      'status': status,
      'keterangan': keterangan,
      'tindakan': tindakan,
      'tanggal': tanggal,
    }.withoutNulls,
  );

  return firestoreData;
}

class TbMaintenanceRecordDocumentEquality
    implements Equality<TbMaintenanceRecord> {
  const TbMaintenanceRecordDocumentEquality();

  @override
  bool equals(TbMaintenanceRecord? e1, TbMaintenanceRecord? e2) {
    return e1?.namaAset == e2?.namaAset &&
        e1?.merek == e2?.merek &&
        e1?.ruangan == e2?.ruangan &&
        e1?.kategori == e2?.kategori &&
        e1?.status == e2?.status &&
        e1?.keterangan == e2?.keterangan &&
        e1?.tindakan == e2?.tindakan &&
        e1?.tanggal == e2?.tanggal;
  }

  @override
  int hash(TbMaintenanceRecord? e) => const ListEquality().hash([
        e?.namaAset,
        e?.merek,
        e?.ruangan,
        e?.kategori,
        e?.status,
        e?.keterangan,
        e?.tindakan,
        e?.tanggal
      ]);

  @override
  bool isValidKey(Object? o) => o is TbMaintenanceRecord;
}
