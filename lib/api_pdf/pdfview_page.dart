import 'dart:io';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class PDFScreen extends StatefulWidget {
  String filename;
  String course;
  String sem;
  PDFScreen(
      {Key? key,
      required this.filename,
      required this.course,
      required this.sem})
      : super(key: key);

  @override
  _PDFScreenState createState() => _PDFScreenState();
}

class _PDFScreenState extends State<PDFScreen> {
  String? _pdfPath;

  @override
  void initState() {
    super.initState();
    _downloadPdf();
  }

  Future<void> _downloadPdf() async {
    final pdfUrl = await FirebaseStorage.instance
        .ref('pdfs/${widget.course}/${widget.sem}/${widget.filename}.pdf')
        .getDownloadURL();

    print(pdfUrl);

    final pdfBytes =
        await FirebaseStorage.instance.refFromURL(pdfUrl).getData();

    final tempDir = await getTemporaryDirectory();
    final pdfFile = File('${tempDir.path}/file.pdf');
    await pdfFile.writeAsBytes(pdfBytes?.toList() ?? []);

    if (mounted) {
      setState(() {
        _pdfPath = pdfFile.path;
      });
    }

    print("PDF Path=> ${_pdfPath}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pdfPath == null
            ? Center(child: CircularProgressIndicator())
            : Scrollbar(
                isAlwaysShown: true,
                child: PDFView(
                  filePath: _pdfPath,
                ),
              ));
  }
}
