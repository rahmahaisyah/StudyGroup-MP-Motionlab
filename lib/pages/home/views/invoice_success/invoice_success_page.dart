// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:motion_shop/util/button_app.dart';

class InvoiceSuccessPage extends StatelessWidget {
  const InvoiceSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        centerTitle: true,
        actions: const [],
        leading: IconButton(
          iconSize: 30,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left_rounded,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Invoice",
          style: GoogleFonts.inter(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    children: [
                      Center(
                        child: Column(
                          children: [
                            LottieBuilder.asset(
                              'assets/animation/success.json',
                              width: 120,
                              height: 150,
                            ),
                            Text(
                              "Transaction Success",
                              style: GoogleFonts.roboto(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "\$66.00",
                              style: GoogleFonts.roboto(
                                fontSize: 27,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      Divider(),
                      Container(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            InvoiceDetailRow(
                                title: 'Invoice Number', value: '000085752257'),
                            InvoiceDetailRow(
                                title: 'Transaction Date',
                                value: '16 June 2023'),
                            InvoiceDetailRow(
                                title: 'Payment Method',
                                value: 'Bank Transfer',
                                isBold: true),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        padding: EdgeInsets.fromLTRB(15, 0, 15, 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Detail Pesanan',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            InvoiceDetailRow(
                                title: 'Order Name',
                                value: 'Indra Mahesa',
                                isBold: true),
                            InvoiceDetailRow(
                                title: 'Order Email',
                                value: 'indramahesa@gmail.com'),
                            InvoiceDetailRow(
                                title: 'Total Price', value: '\$66.00'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ButtonApp(
                text: "Back to Home",
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InvoiceDetailRow extends StatelessWidget {
  final String title;
  final String value;
  final bool isBold;

  InvoiceDetailRow({
    required this.title,
    required this.value,
    this.isBold = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 14, color: Colors.grey[600]),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 14,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
