import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'dart:ui' show ImageByteFormat;





class TicketPdfService {
  /// Cetak/Download PDF dari detail tiket.
  ///
  /// Catatan: implementasi ini ditujukan agar layout konsisten dengan kartu di TicketScreen.
  static Future<void> printTicketPdf({
    required BuildContext context,
    required String destinationName,
    required dynamic jumlahTiket,
    required dynamic price,
    required String paymentMethod,
    required String status,
    required bool isCancelled,
    required String ticketId,
  }) async {
    final pdfBytes = await _buildPdf(
      destinationName: destinationName,
      jumlahTiket: jumlahTiket,
      price: price,
      paymentMethod: paymentMethod,
      status: status,
      isCancelled: isCancelled,
      ticketCode: ticketId,
    );

    await Printing.layoutPdf(
      onLayout: (_) async => pdfBytes,
      name: 'Tiket_$ticketId.pdf',
    );
  }

  /// Generate QR ke PDF sebagai image.
  static Future<pw.MemoryImage> _qrImage({required String data}) async {
    // qr_flutter menghasilkan image dari widget => convert ke bytes PNG.
    // Untuk pdf/widgets, kita butuh MemoryImage.
    final qr = QrPainter(
      data: data,
      version: QrVersions.auto,
      gapless: true,
    );

    final size = 220.0; // ukuran QR di dalam PDF

    final pngBytes = await qr.toImage(size).then(
      (image) => image.toByteData(format: ImageByteFormat.png()),
    );



    final bytes = pngBytes!.buffer.asUint8List();
    return pw.MemoryImage(bytes);
  }

  static Future<Uint8List> _buildPdf({
    required String destinationName,
    required dynamic jumlahTiket,
    required dynamic price,
    required String paymentMethod,
    required String status,
    required bool isCancelled,
    required String ticketCode,
  }) async {
    final qrImage = await _qrImage(data: ticketCode);
    final doc = pw.Document();

    doc.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (_) {
          return pw.Container(
            color: PdfColor.fromInt(const Color(0xFFEFFBEA).value),
            padding: const pw.EdgeInsets.all(24),
            child: pw.Center(
              child: pw.Container(
                width: 520,
                decoration: pw.BoxDecoration(
                  color: PdfColors.white,
                  borderRadius: pw.BorderRadius.circular(22),
                  boxShadow: [
                    pw.BoxShadow(
                      color: PdfColors.black,
                      blurRadius: 12,
                    ),
                  ],
                ),
                padding: const pw.EdgeInsets.all(18),
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.center,
                      children: [
                        pw.Container(
                          width: 24,
                          height: 24,
                          decoration: pw.BoxDecoration(
                            color: isCancelled ? PdfColors.red : PdfColor.fromHex('#007A33'),
                            shape: pw.BoxShape.circle,
                          ),
                        ),
                        pw.SizedBox(width: 8),
                        pw.Text(
                          'E-Tiket Resmi',
                          style: pw.TextStyle(
                            color: isCancelled ? PdfColors.red : PdfColor.fromHex('#007A33'),
                            fontWeight: pw.FontWeight.bold,
                          ),
                        ),
                        pw.Spacer(),
                        pw.Container(
                          padding: const pw.EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: pw.BoxDecoration(
                            color: isCancelled ? PdfColors.red : PdfColor.fromHex('#DDF5D8'),
                            borderRadius: pw.BorderRadius.circular(20),
                          ),
                          child: pw.Text(
                            status,
                            style: pw.TextStyle(
                              color: isCancelled ? PdfColors.red : PdfColor.fromHex('#007A33'),
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    pw.SizedBox(height: 16),
                    pw.Text(
                      destinationName,
                      style: pw.TextStyle(
                        fontSize: 21,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.SizedBox(height: 8),
                    pw.Text('Jumlah Tiket: ${jumlahTiket ?? 1}'),
                    pw.SizedBox(height: 4),
                    pw.Text('Harga: ${price ?? '-'}'),
                    pw.SizedBox(height: 4),
                    pw.Text('Metode Bayar: ${paymentMethod ?? '-'}'),
                    pw.SizedBox(height: 18),

                    pw.Text(
                      'Kode Tiket: $ticketCode',
                      style: pw.TextStyle(
                        color: PdfColor.fromHex('#007A33'),
                        fontWeight: pw.FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    pw.SizedBox(height: 10),

                    pw.Center(
                      child: pw.Container(
                        padding: const pw.EdgeInsets.all(10),
                        decoration: pw.BoxDecoration(
                          borderRadius: pw.BorderRadius.circular(16),
                          border: pw.Border.all(color: PdfColor.fromHex('#DDF5D8')),
                        ),
                        child: pw.Image(qrImage, width: 160, height: 160),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );

    return doc.save();
  }
}



