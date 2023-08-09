import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'dart:io';

class Pdf_Api {
  static Future<File> loadnetwork(String url) async {
    final response = await http.get(Uri.parse(url));
    final bytes = response.bodyBytes;
    return _storfile(url, bytes);
  }

  static Future<File> _storfile(String url, List<int> bytes) async {
    final filename = basename(url);
    final dir = await getApplicationDocumentsDirectory();

    final file = File("${dir.path}/$filename");
    await file.writeAsBytes(bytes, flush: true);

    return file;
  }

  static Future<File?> pickfile() async {
    final result = await FilePicker.platform
        .pickFiles(type: FileType.custom, allowedExtensions: ['pdf']);
    if (result == null) return null;
    return File(result.paths.first!);
  }
//  static void openpdf(BuildContext context, File file) => Navigator.push(
//     context, MaterialPageRoute(builder: (context) => PDFScreen(filename: file)));

}
