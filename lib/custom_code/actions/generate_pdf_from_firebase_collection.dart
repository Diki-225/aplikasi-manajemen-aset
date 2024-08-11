// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:open_filex/open_filex.dart';
import 'package:intl/intl.dart'; // Import package intl

Future<void> generatePdfFromFirebaseCollection() async {
  // Retrieve data from Firebase collection
  QuerySnapshot snapshot =
      await FirebaseFirestore.instance.collection('tb_maintenance').get();
  List<QueryDocumentSnapshot> documents = snapshot.docs;

  // Get current date
  String currentDate = DateFormat('dd/MM/yyyy').format(DateTime.now());

  // Create a PDF document
  final pdf = pw.Document();

  // Add a page with a table and headers
  pdf.addPage(
    pw.MultiPage(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return [
          pw.Header(
            level: 0,
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text('Data Maintenance',
                    style: pw.TextStyle(
                        fontSize: 24, fontWeight: pw.FontWeight.bold)),
                pw.SizedBox(height: 10),
                pw.Text(
                    'KUKM Sunan Bonang, Dsn. Ngemplak, Ds. Bangeran, Kec.Dawarblandong, Kab. Mojokerto',
                    style: pw.TextStyle(fontSize: 16)),
                pw.SizedBox(height: 10),
                pw.Text('Tanggal: $currentDate',
                    style: pw.TextStyle(fontSize: 16)),
                pw.SizedBox(height: 20),
              ],
            ),
          ),
          pw.Table.fromTextArray(
            headers: ['No', 'Nama Aset', 'Status', 'Keterangan', 'Tindakan'],
            data: List<List<String>>.generate(documents.length, (index) {
              final doc = documents[index];
              return [
                (index + 1).toString(),
                doc['nama_aset'],
                doc['status'],
                doc['keterangan'],
                doc['tindakan'],
              ];
            }),
            border: pw.TableBorder.all(),
            headerStyle: pw.TextStyle(fontWeight: pw.FontWeight.bold),
            cellAlignment: pw.Alignment.center,
            headerDecoration: pw.BoxDecoration(color: PdfColors.grey300),
            cellHeight: 30,
            cellAlignments: {
              0: pw.Alignment.center,
              1: pw.Alignment.centerLeft,
              2: pw.Alignment.centerLeft,
              3: pw.Alignment.centerLeft,
              4: pw.Alignment.centerLeft,
            },
          ),
        ];
      },
    ),
  );

  // Get the directory to store the PDF file
  final directory = await getApplicationDocumentsDirectory();
  final filePath = '${directory.path}/tb_maintenance.pdf';
  final file = File(filePath);

  // Save the PDF file
  await file.writeAsBytes(await pdf.save());

  // Open the PDF file using open_filex
  await OpenFilex.open(filePath);
}
