import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<double> dataNow = [4.2, 7.0];
  List<List<dynamic>> listData = [
    ['12.00', 2.0, 7.0],
    ['11.55', 4.0, 6.5],
    ['11.50', 2.0, 7.0],
    ['11.45', 4.0, 6.5],
    ['11.40', 2.0, 7.0],
    ['11.35', 4.0, 6.5],
    ['11.30', 2.0, 7.0],
    ['11.25', 4.0, 6.5],
    ['12.20', 2.0, 7.0],
    ['11.15', 6.1, 6.5]
  ];
  bool _isSwitched = false;
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String dateToday = DateFormat('dd MMMM yyyy').format(now);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Container biru
              Container(
                width: double.infinity, // menetapkan lebar menjadi penuh
                color: Color(0xFF2490A9),
                height: 311.0,
                child: Column(children: [
                  SizedBox(height: 100.0),
                  Text(
                    'Selamat Datang',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Di HydroCheck',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(height: 45.0),

                  // Container Tanggal
                  Container(
                    width: 342,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color(
                              0x40000000), // Warna hitam dengan opacity 25%
                          blurRadius: 4,
                          offset:
                              Offset(0, 4), // Drop shadow ke bawah sejauh 4px
                        ),
                      ],
                    ),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 15.0),
                        Image.asset(
                          'images/logo-tanggal.png',
                          width: 24.0,
                          height: 24.0,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 10.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Tanggal',
                              style: TextStyle(
                                color: Color(0xFF2490A9),
                                fontSize: 12.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '$dateToday',
                              style: TextStyle(
                                color: Color(0xFF2490A9),
                                fontSize: 12.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ]),
              ),

              // Container putih
              Container(
                width: double.infinity, // menetapkan lebar menjadi penuh
                child: Transform.translate(
                  offset: Offset(0.0, -45.0),
                  child: Column(
                    children: [
                      // Container Kadar PH Saat Ini
                      Container(
                        width: 342,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color(
                                  0x40000000), // Warna hitam dengan opacity 25%
                              blurRadius: 2,
                              offset: Offset(
                                  0, 4), // Drop shadow ke bawah sejauh 4px
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            // Jarak dari atas untuk teks "Kadar PH Saat Ini"
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                'Kadar PH Saat Ini',
                                style: TextStyle(
                                  color: Color(0xFF2490A9),
                                  fontSize: 12.0,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: List.generate(
                                dataNow.length,
                                (index) {
                                  bool isOutOfRange = dataNow[index] < 6.0 ||
                                      dataNow[index] > 8.0;
                                  Color color = isOutOfRange
                                      ? Colors.red
                                      : Color(0xFF2490A9);
                                  String label =
                                      index == 0 ? 'Input' : 'Output';
                                  return Column(
                                    children: <Widget>[
                                      Container(
                                        width: 43,
                                        height: 39,
                                        color: color,
                                        alignment: Alignment.center,
                                        child: Text(
                                          '${dataNow[index]}',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11.0,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        label,
                                        style: TextStyle(
                                          color: color,
                                          fontSize: 9.0,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Jarak
                      SizedBox(height: 30.0),

                      // Container Netralisasi Otomatis
                      Container(
                        width: 342,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color(
                                  0x40000000), // Warna hitam dengan opacity 25%
                              blurRadius: 2,
                              offset: Offset(
                                  0, 4), // Drop shadow ke bawah sejauh 4px
                            ),
                          ],
                        ),
                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 15.0),
                            // Lingkaran dengan logo
                            Container(
                              width: 31,
                              height: 31,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(
                                        0x40000000), // Warna hitam dengan opacity 25%
                                    blurRadius: 2,
                                    offset: Offset(0,
                                        4), // Drop shadow ke bawah sejauh 4px
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Image.asset(
                                  'images/logo_ph.png',
                                  width: 20.0,
                                  height: 20.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                                width: 15.0), // Jarak antara lingkaran dan teks
                            // Teks "Netralisasi Otomatis"
                            Text(
                              'Netralisasi Otomatis',
                              style: TextStyle(
                                color: Color(0xFF2490A9),
                                fontSize: 14.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(), // Spacer untuk membuat jarak yang sama
                            // Tombol on/off (switch button)
                            Switch(
                              value: _isSwitched,
                              activeColor: Colors.white,
                              activeTrackColor: Color(0xFF38FF58),
                              inactiveThumbColor: Colors.white,
                              inactiveTrackColor: Color(0xFFD9D9D9),
                              onChanged: (value) {
                                setState(() {
                                  _isSwitched = value;
                                });
                              },
                              overlayColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.pressed)) {
                                    return Colors.transparent;
                                  }
                                  return Colors.grey.withOpacity(
                                      0.4); // Atur warna overlay ke abu-abu dengan opacity 0.4
                                },
                              ),
                              splashRadius: 16.0, // Atur ukuran radius splash
                            ),
                            SizedBox(width: 15.0), // Padding 15px dari kanan
                          ],
                        ),
                      ),

                      // Jarak
                      SizedBox(height: 30.0),

                      // Container Riwayat Pemantauan
                      Container(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                width: 342,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x40000000),
                                      blurRadius: 2,
                                      offset: Offset(0, 4),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    // Jarak dari atas untuk teks "Riwayat Pemantauan"
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0,
                                          top: 10.0,
                                          right: 15.0,
                                          bottom: 20.0),
                                      child: Column(
                                        children: [
                                          // menampilkan judul container
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Riwayat Pemantauan',
                                                style: TextStyle(
                                                  color: Color(0xFF2490A9),
                                                  fontSize: 12.0,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.pushNamed(
                                                      context, '/history');
                                                },
                                                child: Text(
                                                  'Lihat Semua',
                                                  style: TextStyle(
                                                    color: Color(0xFF2490A9),
                                                    fontSize: 10.0,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 17.0),

                                          // Menampilkan setiap data pemantauan
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0),
                                            child: Column(
                                              children:
                                                  listData.asMap().entries.map(
                                                (entry) {
                                                  int index = entry.key;
                                                  List<dynamic> data =
                                                      entry.value;
                                                  Color color1 =
                                                      (data[1] < 6.0 ||
                                                              data[1] > 8.0)
                                                          ? Colors.red
                                                          : Color(0xFF2490A9);
                                                  String status1 =
                                                      (data[1] < 6.0)
                                                          ? "Rendah"
                                                          : "Netral";
                                                  Color color2 =
                                                      (data[2] < 6.0 ||
                                                              data[2] > 8.0)
                                                          ? Colors.red
                                                          : Color(0xFF2490A9);
                                                  String status2 =
                                                      (data[2] < 6.0)
                                                          ? "Rendah"
                                                          : "Netral";
                                                  return Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Column(
                                                        children: [
                                                          Container(
                                                            width: 16,
                                                            height: 16,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              color: Color(
                                                                  0xFF2490A9),
                                                            ),
                                                          ),
                                                          if (index !=
                                                              listData.length -
                                                                  1)
                                                            SizedBox(
                                                                height: 29.0,
                                                                width: 2.0,
                                                                child: Container(
                                                                    color: Color(
                                                                        0xFF2490A9))),
                                                        ],
                                                      ),
                                                      SizedBox(width: 5.0),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            '${data[0]} WIB',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF2490A9),
                                                              fontSize: 11.0,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(width: 5.0),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'pH Input',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF2490A9),
                                                              fontSize: 11.0,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                          Text(
                                                            'pH Output',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF2490A9),
                                                              fontSize: 11.0,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(width: 12.0),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            '${data[1]} ${status1}',
                                                            style: TextStyle(
                                                              color: color1,
                                                              fontSize: 11.0,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                            ),
                                                          ),
                                                          Text(
                                                            '${data[2]} ${status2}',
                                                            style: TextStyle(
                                                              color: color2,
                                                              fontSize: 11.0,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  );
                                                },
                                              ).toList(),
                                            ),
                                          ),
                                          SizedBox(height: 16.0),

                                          // Menampilkan tombol Selengkap-nya
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              ElevatedButton(
                                                onPressed: () {
                                                  // Implementasi aksi ketika tombol ditekan
                                                  Navigator.pushNamed(
                                                      context, '/history');
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  ),
                                                  padding: EdgeInsets
                                                      .zero, // Mengatur padding menjadi nol
                                                  minimumSize: Size(0,
                                                      0), // Mengatur ukuran minimum menjadi nol
                                                  tapTargetSize:
                                                      MaterialTapTargetSize
                                                          .shrinkWrap, // Mengurangi area tap
                                                  backgroundColor: Color(
                                                      0xFF2490A9), // Mengatur warna latar belakang
                                                ).copyWith(
                                                  backgroundColor:
                                                      MaterialStateProperty
                                                          .resolveWith<Color>(
                                                              (states) {
                                                    if (states.contains(
                                                        MaterialState
                                                            .pressed)) {
                                                      // Ketika tombol ditekan
                                                      return Colors
                                                          .blueGrey; //Warna abu-abu muda
                                                    }
                                                    ;
                                                    return Color(
                                                        0xFF2490A9); // Warna asli
                                                  }),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      18.0,
                                                      8.0,
                                                      18.0,
                                                      8.0), // Tambahkan padding ke teks
                                                  child: Text(
                                                    'Selengkap-nya',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ), // Spasi antara container daftar dan bagian bawah
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
