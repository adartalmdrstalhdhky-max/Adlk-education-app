import '../entities/certificate.dart';
import '../../services/pdf/certificate_pdf_service.dart';

class GenerateCertificateUseCase {
  final CertificatePdfService service;
  GenerateCertificateUseCase(this.service);

  void call(Certificate cert) {
    service.generate(cert);
  }
}
