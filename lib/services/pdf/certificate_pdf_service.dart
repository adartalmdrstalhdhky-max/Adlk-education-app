import 'package:pdf/widgets.dart' as pw;
import '../../domain/entities/certificate.dart';

class CertificatePdfService {
  pw.Document generate(Certificate cert) {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        build: (_) => pw.Center(
          child: pw.Column(
            children: [
              pw.Text('شهادة إتمام', style: pw.TextStyle(fontSize: 32)),
              pw.SizedBox(height: 20),
              pw.Text(cert.studentName),
              pw.Text('أتم مادة ${cert.material}'),
              pw.Text('النتيجة: ${cert.score.toStringAsFixed(1)}%'),
            ],
          ),
        ),
      ),
    );
    return pdf;
  }
}
