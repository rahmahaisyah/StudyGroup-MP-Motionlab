import 'package:flutter/material.dart';
import 'package:home_page/pages/login_page.dart';
import 'package:home_page/pages/register_page.dart';
import 'package:home_page/pages/slicing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
      },
    );
    // return MaterialApp(
    //   home: Scaffold(
    //     body: SafeArea(
    //       child: Container(
    //         padding: const EdgeInsets.all(9.0),
    //         child: Column(
    //           crossAxisAlignment:
    //               CrossAxisAlignment.start, // Menyusun elemen-elemen di kiri
    //           children: [
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 Image.asset(
    //                   'assets/images/3line.png',
    //                   height: 15,
    //                   width: 20,
    //                 ),
    //                 Image.asset(
    //                   'assets/images/logo.png',
    //                   height: 47,
    //                   width: 47,
    //                 ),
    //                 Image.asset(
    //                   'assets/images/bag.png',
    //                   width: 23,
    //                   height: 23,
    //                 ),
    //               ],
    //             ),
    //             const Padding(
    //               padding: EdgeInsets.only(top: 10.0),
    //               child: Text(
    //                 'Our way of loving\nyou back',
    //                 style: TextStyle(
    //                   fontFamily: 'Inter',
    //                   fontSize: 25,
    //                   fontWeight: FontWeight.w600,
    //                 ),
    //               ),
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.only(top: 10.0),
    //               child: SizedBox(
    //                 width: 382.0,
    //                 height: 53.0,
    //                 child: TextField(
    //                   decoration: InputDecoration(
    //                     hintText: 'Search',
    //                     hintStyle: TextStyle(
    //                       fontFamily: 'Inter',
    //                       fontSize: 16,
    //                       fontWeight: FontWeight.w400,
    //                       color: const Color(0xff161B28).withOpacity(0.5),
    //                     ),
    //                     prefixIcon: Padding(
    //                       padding: const EdgeInsets.all(16.0),
    //                       child: Image.asset(
    //                         'assets/images/search.png',
    //                         width: 19.36,
    //                         height: 19.28,
    //                       ),
    //                     ),
    //                     border: OutlineInputBorder(
    //                       borderRadius: BorderRadius.circular(26.5),
    //                       borderSide: BorderSide.none,
    //                     ),
    //                     filled: true,
    //                     fillColor: const Color(0xFFF2F2F2),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.only(top: 10.0),
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.start,
    //                 children: [
    //                   Container(
    //                     width: 92,
    //                     height: 40,
    //                     decoration: BoxDecoration(
    //                       color: const Color(0xff3A5A40),
    //                       borderRadius: BorderRadius.circular(22.5),
    //                     ),
    //                     child: const Center(
    //                       child: Text(
    //                         'All',
    //                         style: TextStyle(
    //                           color: Colors.white,
    //                           fontSize: 20,
    //                           fontFamily: 'Raleway',
    //                         ),
    //                       ),
    //                     ),
    //                   ),
    //                   const SizedBox(width: 10),
    //                   Container(
    //                     width: 122,
    //                     height: 40,
    //                     decoration: BoxDecoration(
    //                       color: const Color(0xffF2F2F2),
    //                       borderRadius: BorderRadius.circular(22.5),
    //                     ),
    //                     child: const Center(
    //                       child: Text(
    //                         'Watch',
    //                         style: TextStyle(
    //                           color: Color(0xff4D4D4D),
    //                           fontSize: 20,
    //                           fontFamily: 'Inter',
    //                         ),
    //                       ),
    //                     ),
    //                   ),
    //                   const SizedBox(width: 10),
    //                   Container(
    //                     width: 100,
    //                     height: 40,
    //                     decoration: BoxDecoration(
    //                       color: const Color(0xffF2F2F2),
    //                       borderRadius: BorderRadius.circular(22.5),
    //                     ),
    //                     child: const Center(
    //                       child: Text(
    //                         'Shirt',
    //                         style: TextStyle(
    //                           color: Color(0xff4D4D4D),
    //                           fontSize: 20,
    //                           fontFamily: 'Inter',
    //                         ),
    //                       ),
    //                     ),
    //                   ),
    //                   const SizedBox(width: 10),
    //                   Container(
    //                     width: 100,
    //                     height: 40,
    //                     decoration: BoxDecoration(
    //                       color: const Color(0xffF2F2F2),
    //                       borderRadius: BorderRadius.circular(22.5),
    //                     ),
    //                     child: const Center(
    //                       child: Text(
    //                         'Shoes',
    //                         style: TextStyle(
    //                           color: Color(0xff4D4D4D),
    //                           fontSize: 20,
    //                           fontFamily: 'Inter',
    //                         ),
    //                       ),
    //                     ),
    //                   ),
    //                   const SizedBox(width: 10),
    //                   Container(
    //                     width: 99,
    //                     height: 40,
    //                     decoration: BoxDecoration(
    //                       color: const Color(0xffF2F2F2),
    //                       borderRadius: BorderRadius.circular(22.5),
    //                     ),
    //                     child: const Center(
    //                       child: Text(
    //                         'Food',
    //                         style: TextStyle(
    //                           color: Color(0xff4D4D4D),
    //                           fontSize: 20,
    //                           fontFamily: 'Inter',
    //                         ),
    //                       ),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //             const Padding(
    //               padding: const EdgeInsets.only(top: 8.0),
    //               child: Text(
    //                 'Our Best Seller',
    //                 style: TextStyle(
    //                   fontFamily: 'Roboto',
    //                   fontSize: 22,
    //                   fontWeight: FontWeight.w600,
    //                 ),
    //               ),
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.only(top: 5.0),
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Padding(
    //                     padding:
    //                         const EdgeInsets.all(8.0), // Padding luar Container
    //                     child: Container(
    //                       width: 177.89,
    //                       height: 251.04,
    //                       decoration: BoxDecoration(
    //                         color: const Color(0xffFCFFFE),
    //                         borderRadius: BorderRadius.circular(9.72),
    //                         boxShadow: [
    //                           BoxShadow(
    //                             color: Colors.black.withOpacity(0.1),
    //                             blurRadius: 6,
    //                             offset: const Offset(0, 3), // Posisi bayangan
    //                           ),
    //                         ],
    //                       ),
    //                       child: Column(
    //                         crossAxisAlignment: CrossAxisAlignment.start,
    //                         children: [
    //                           // Gambar di bagian atas
    //                           Container(
    //                             width: 177.89,
    //                             height: 187.72, // Sesuaikan tinggi gambar
    //                             decoration: const BoxDecoration(
    //                               borderRadius: BorderRadius.only(
    //                                 topLeft: Radius.circular(9.72),
    //                                 topRight: Radius.circular(9.72),
    //                               ),
    //                             ),
    //                             child: Image.asset(
    //                               'assets/images/smartwatch.png',
    //                             ),
    //                           ),
    //                           Padding(
    //                             padding: const EdgeInsets.symmetric(
    //                                 horizontal: 13.0, vertical: 10.0),
    //                             child: Column(
    //                               crossAxisAlignment: CrossAxisAlignment.start,
    //                               children: [
    //                                 const Text(
    //                                   'Mi Band 8 Pro', // Nama produk
    //                                   style: TextStyle(
    //                                     fontFamily: 'Raleway',
    //                                     fontSize: 13.88,
    //                                   ),
    //                                 ),
    //                                 const SizedBox(
    //                                     height: 8.0), // Jarak antar teks
    //                                 Row(
    //                                   mainAxisAlignment:
    //                                       MainAxisAlignment.spaceBetween,
    //                                   children: [
    //                                     const Text(
    //                                       '\$54.00', // Harga produk
    //                                       style: TextStyle(
    //                                         fontFamily: 'Poppins',
    //                                         fontSize: 17.35,
    //                                         color: Color(0xff00623B),
    //                                       ),
    //                                     ),
    //                                     Image.asset(
    //                                       'assets/images/redlike.png', // Gambar ikon hati
    //                                       width: 16.66,
    //                                       height: 15.27,
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ],
    //                             ),
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                   Padding(
    //                     padding:
    //                         const EdgeInsets.all(8.0), // Padding luar Container
    //                     child: Container(
    //                       width: 177.89,
    //                       height: 251.04,
    //                       decoration: BoxDecoration(
    //                         color: const Color(0xffFCFFFE),
    //                         borderRadius: BorderRadius.circular(9.72),
    //                         boxShadow: [
    //                           BoxShadow(
    //                             color: Colors.black.withOpacity(0.1),
    //                             blurRadius: 6,
    //                             offset: const Offset(0, 3), // Posisi bayangan
    //                           ),
    //                         ],
    //                       ),
    //                       child: Column(
    //                         crossAxisAlignment: CrossAxisAlignment.start,
    //                         children: [
    //                           // Gambar di bagian atas
    //                           Container(
    //                             width: 177.89,
    //                             height: 187.72, // Sesuaikan tinggi gambar
    //                             decoration: const BoxDecoration(
    //                               borderRadius: BorderRadius.only(
    //                                 topLeft: Radius.circular(9.72),
    //                                 topRight: Radius.circular(9.72),
    //                               ),
    //                             ),
    //                             child: Image.asset(
    //                               'assets/images/shirt.png',
    //                             ),
    //                           ),
    //                           Padding(
    //                             padding: const EdgeInsets.symmetric(
    //                                 horizontal: 13.0, vertical: 10.0),
    //                             child: Column(
    //                               crossAxisAlignment: CrossAxisAlignment.start,
    //                               children: [
    //                                 const Text(
    //                                   'Lycra Men\’s shirt', // Nama produk
    //                                   style: TextStyle(
    //                                     fontFamily: 'Inter',
    //                                     fontSize: 14,
    //                                   ),
    //                                 ),
    //                                 const SizedBox(
    //                                     height: 8.0), // Jarak antar teks
    //                                 Row(
    //                                   mainAxisAlignment:
    //                                       MainAxisAlignment.spaceBetween,
    //                                   children: [
    //                                     const Text(
    //                                       '\$12.00', // Harga produk
    //                                       style: TextStyle(
    //                                         fontFamily: 'Poppins',
    //                                         fontSize: 17.35,
    //                                         color: Color(0xff00623B),
    //                                       ),
    //                                     ),
    //                                     Image.asset(
    //                                       'assets/images/greylike.png', // Gambar ikon hati
    //                                       width: 16.66,
    //                                       height: 15.27,
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ],
    //                             ),
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.only(top: 5.0),
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Padding(
    //                     padding:
    //                         const EdgeInsets.all(8.0), // Padding luar Container
    //                     child: Container(
    //                       width: 177.89,
    //                       height: 251.04,
    //                       decoration: BoxDecoration(
    //                         color: const Color(0xffFCFFFE),
    //                         borderRadius: BorderRadius.circular(9.72),
    //                         boxShadow: [
    //                           BoxShadow(
    //                             color: Colors.black.withOpacity(0.1),
    //                             blurRadius: 6,
    //                             offset: const Offset(0, 3), // Posisi bayangan
    //                           ),
    //                         ],
    //                       ),
    //                       child: Column(
    //                         crossAxisAlignment: CrossAxisAlignment.start,
    //                         children: [
    //                           // Gambar di bagian atas
    //                           Container(
    //                             width: 177.89,
    //                             height: 187.72, // Sesuaikan tinggi gambar
    //                             decoration: const BoxDecoration(
    //                               borderRadius: BorderRadius.only(
    //                                 topLeft: Radius.circular(9.72),
    //                                 topRight: Radius.circular(9.72),
    //                               ),
    //                             ),
    //                             child: Image.asset(
    //                               'assets/images/headd.png',
    //                             ),
    //                           ),
    //                           Padding(
    //                             padding: const EdgeInsets.symmetric(
    //                                 horizontal: 13.0, vertical: 10.0),
    //                             child: Column(
    //                               crossAxisAlignment: CrossAxisAlignment.start,
    //                               children: [
    //                                 const Text(
    //                                   'Siberia 800', // Nama produk
    //                                   style: TextStyle(
    //                                     fontFamily: 'Raleway',
    //                                     fontSize: 13.88,
    //                                   ),
    //                                 ),
    //                                 const SizedBox(
    //                                     height: 8.0), // Jarak antar teks
    //                                 Row(
    //                                   mainAxisAlignment:
    //                                       MainAxisAlignment.spaceBetween,
    //                                   children: [
    //                                     const Text(
    //                                       '\$45.00', // Harga produk
    //                                       style: TextStyle(
    //                                         fontFamily: 'Poppins',
    //                                         fontSize: 17.35,
    //                                         color: Color(0xff00623B),
    //                                       ),
    //                                     ),
    //                                     Image.asset(
    //                                       'assets/images/greylike.png', // Gambar ikon hati
    //                                       width: 16.66,
    //                                       height: 15.27,
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ],
    //                             ),
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                   Padding(
    //                     padding:
    //                         const EdgeInsets.all(8.0), // Padding luar Container
    //                     child: Container(
    //                       width: 177.89,
    //                       height: 251.04,
    //                       decoration: BoxDecoration(
    //                         color: const Color(0xffFCFFFE),
    //                         borderRadius: BorderRadius.circular(9.72),
    //                         boxShadow: [
    //                           BoxShadow(
    //                             color: Colors.black.withOpacity(0.1),
    //                             blurRadius: 6,
    //                             offset: const Offset(0, 3), // Posisi bayangan
    //                           ),
    //                         ],
    //                       ),
    //                       child: Column(
    //                         crossAxisAlignment: CrossAxisAlignment.start,
    //                         children: [
    //                           // Gambar di bagian atas
    //                           Container(
    //                             width: 177.89,
    //                             height: 187.72, // Sesuaikan tinggi gambar
    //                             decoration: const BoxDecoration(
    //                               borderRadius: BorderRadius.only(
    //                                 topLeft: Radius.circular(9.72),
    //                                 topRight: Radius.circular(9.72),
    //                               ),
    //                             ),
    //                             child: Image.asset(
    //                               'assets/images/shoess.png',
    //                             ),
    //                           ),
    //                           Padding(
    //                             padding: const EdgeInsets.symmetric(
    //                                 horizontal: 13.0, vertical: 10.0),
    //                             child: Column(
    //                               crossAxisAlignment: CrossAxisAlignment.start,
    //                               children: [
    //                                 const Text(
    //                                   'Strawberry Frappuccino', // Nama produk
    //                                   style: TextStyle(
    //                                     fontFamily: 'Raleway',
    //                                     fontSize: 13.88,
    //                                   ),
    //                                 ),
    //                                 const SizedBox(
    //                                     height: 8.0), // Jarak antar teks
    //                                 Row(
    //                                   mainAxisAlignment:
    //                                       MainAxisAlignment.spaceBetween,
    //                                   children: [
    //                                     const Text(
    //                                       '\$35.00', // Harga produk
    //                                       style: TextStyle(
    //                                         fontFamily: 'Poppins',
    //                                         fontSize: 17.35,
    //                                         color: Color(0xff00623B),
    //                                       ),
    //                                     ),
    //                                     Image.asset(
    //                                       'assets/images/greylike.png', // Gambar ikon hati
    //                                       width: 16.66,
    //                                       height: 15.27,
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ],
    //                             ),
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.only(top: 25.0),
    //               child: Container(
    //                 width: 427,
    //                 height: 74,
    //                 color: const Color(0xff00623B), // Warna hijau
    //                 child: Row(
    //                   mainAxisAlignment: MainAxisAlignment
    //                       .spaceEvenly, // Jarak antar ikon sama rata
    //                   children: [
    //                     Image.asset(
    //                       'assets/images/home.png',
    //                       width: 22.65,
    //                       height: 22.65,
    //                     ),
    //                     Image.asset(
    //                       'assets/images/pay.png',
    //                       width: 25,
    //                       height: 21,
    //                     ),
    //                     Image.asset(
    //                       'assets/images/fav.png',
    //                       width: 23.93,
    //                       height: 20.33,
    //                     ),
    //                     Image.asset(
    //                       'assets/images/notif.png',
    //                       width: 30.29,
    //                       height: 30.29,
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
