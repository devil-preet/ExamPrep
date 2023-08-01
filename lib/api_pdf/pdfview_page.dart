import 'dart:io';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path/path.dart';
import 'package:flutter/material.dart';

class PdfView_Page extends StatefulWidget {
   PdfView_Page({super.key, required this.file});
   final File file;

  @override
  State<PdfView_Page> createState() => _PdfView_PageState();
}

class _PdfView_PageState extends State<PdfView_Page> {
  @override
  Widget build(BuildContext context) {
    return PDFView(
      filePath:widget.file.path ,
    );
  }
}