import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  Map<String, List<double>> data = {
    '12 April 2024 12:00': [3.4, 6.9],
    '12 April 2024 11:55': [4.6, 6.8],
    '12 April 2024 11:50': [5.5, 7.0],
    '12 April 2024 11:45': [4.0, 7.5],
    '12 April 2024 11:40': [3.4, 6.9],
    '12 April 2024 11:35': [4.6, 6.8],
    '12 April 2024 11:30': [5.5, 7.0],
    '12 April 2024 11:25': [4.0, 7.5],
    '12 April 2024 11:20': [3.4, 6.9],
    '12 April 2024 11:15': [4.6, 6.8],
    '12 April 2024 11:10': [5.5, 7.0],
    '12 April 2024 11:05': [4.0, 7.5],
    '12 April 2024 11:00': [3.4, 6.9],
    '12 April 2024 10:55': [4.6, 6.8],
    '12 April 2024 10:50': [5.5, 7.0],
    '12 April 2024 10:45': [4.0, 7.5],
    '12 April 2024 10:40': [3.4, 6.9],
    '12 April 2024 10:35': [4.6, 6.8],
    '12 April 2024 10:30': [5.5, 7.0],
    '12 April 2024 10:25': [4.0, 7.5],
    '12 April 2024 10:20': [3.4, 6.9],
    '12 April 2024 10:15': [4.6, 6.8],
    '12 April 2024 10:10': [5.5, 7.0],
    '12 April 2024 10:05': [4.0, 7.5],
    '12 April 2024 10:00': [3.4, 6.9],
    '11 April 2024 12:00': [4.6, 6.8],
    '11 April 2024 11:55': [5.5, 7.0],
    '11 April 2024 11:50': [4.0, 7.5],
    '11 April 2024 11:45': [3.4, 6.9],
    '11 April 2024 11:40': [4.6, 6.8],
    '11 April 2024 11:35': [5.5, 7.0],
    '11 April 2024 11:30': [4.0, 7.5],
    '11 April 2024 11:25': [3.4, 6.9],
    '11 April 2024 11:20': [4.6, 6.8],
    '11 April 2024 11:15': [5.5, 7.0],
    '11 April 2024 11:10': [4.0, 7.5],
    '11 April 2024 11:05': [3.4, 6.9],
    '11 April 2024 11:00': [4.6, 6.8],
    '11 April 2024 10:55': [4.6, 6.8],
    '11 April 2024 10:50': [5.5, 7.0],
    '11 April 2024 10:45': [4.0, 7.5],
    '11 April 2024 10:40': [3.4, 6.9],
    '11 April 2024 10:35': [4.6, 6.8],
    '11 April 2024 10:30': [5.5, 7.0],
    '11 April 2024 10:25': [4.0, 7.5],
    '11 April 2024 10:20': [3.4, 6.9],
    '11 April 2024 10:15': [4.6, 6.8],
    '11 April 2024 10:10': [5.5, 7.0],
    '11 April 2024 10:05': [4.0, 7.5],
    '11 April 2024 10:00': [3.4, 6.9],
    '10 April 2024 12:00': [4.0, 6.8],
    '10 April 2024 11:55': [5.5, 7.0],
    '10 April 2024 11:50': [4.0, 7.5],
    '10 April 2024 11:45': [3.4, 6.9],
    '10 April 2024 11:40': [4.6, 6.8],
    '10 April 2024 11:35': [5.5, 7.0],
    '10 April 2024 11:30': [4.0, 7.5],
    '10 April 2024 11:25': [3.4, 6.9],
    '10 April 2024 11:20': [4.6, 6.8],
    '10 April 2024 11:15': [5.5, 7.0],
    '10 April 2024 11:10': [4.0, 7.5],
    '10 April 2024 11:05': [3.4, 6.9],
    '10 April 2024 11:00': [4.6, 6.8],
    '10 April 2024 10:55': [4.6, 6.8],
    '10 April 2024 10:50': [5.5, 7.0],
    '10 April 2024 10:45': [4.0, 7.5],
    '10 April 2024 10:40': [3.4, 6.9],
    '10 April 2024 10:35': [4.6, 6.8],
    '10 April 2024 10:30': [5.5, 7.0],
    '10 April 2024 10:25': [4.0, 7.5],
    '10 April 2024 10:20': [3.4, 6.9],
    '10 April 2024 10:15': [4.6, 6.8],
    '10 April 2024 10:10': [5.5, 7.0],
    '10 April 2024 10:05': [4.0, 7.5],
    '10 April 2024 10:00': [3.4, 6.9],
    '09 April 2024 12:00': [4.6, 6.8],
    '09 April 2024 11:55': [5.5, 7.0],
    '09 April 2024 11:50': [4.0, 7.5],
    '09 April 2024 11:45': [3.4, 6.9],
    '09 April 2024 11:40': [4.6, 6.8],
    '09 April 2024 11:35': [5.5, 7.0],
    '09 April 2024 11:30': [4.0, 7.5],
    '09 April 2024 11:25': [3.4, 6.9],
    '09 April 2024 11:20': [4.6, 6.8],
    '09 April 2024 11:15': [5.5, 7.0],
    '09 April 2024 11:10': [4.0, 7.5],
    '09 April 2024 11:05': [3.4, 6.9],
    '09 April 2024 11:00': [4.6, 6.8],
    '09 April 2024 10:55': [4.6, 6.8],
    '09 April 2024 10:50': [5.5, 7.0],
    '09 April 2024 10:45': [4.0, 7.5],
    '09 April 2024 10:40': [3.4, 6.9],
    '09 April 2024 10:35': [4.6, 6.8],
    '09 April 2024 10:30': [5.5, 7.0],
    '09 April 2024 10:25': [4.0, 7.5],
    '09 April 2024 10:20': [3.4, 6.9],
    '09 April 2024 10:15': [4.6, 6.8],
    '09 April 2024 10:10': [5.5, 7.0],
    '09 April 2024 10:05': [4.0, 7.5],
    '09 April 2024 10:00': [3.4, 6.9],
    '08 April 2024 12:00': [4.6, 6.8],
    '08 April 2024 11:55': [5.5, 7.0],
    '08 April 2024 11:50': [4.0, 7.5],
    '08 April 2024 11:45': [3.4, 6.9],
    '08 April 2024 11:40': [4.6, 6.8],
    '08 April 2024 11:35': [5.5, 7.0],
    '08 April 2024 11:30': [4.0, 7.5],
    '08 April 2024 11:25': [3.4, 6.9],
    '08 April 2024 11:20': [4.6, 6.8],
    '08 April 2024 11:15': [5.5, 7.0],
    '08 April 2024 11:10': [4.0, 7.5],
    '08 April 2024 11:05': [3.4, 6.9],
    '08 April 2024 11:00': [4.6, 6.8],
  };

  // List untuk menampung jenis tanggal
  List<String> jenisTanggal = [];

  // List untuk menampung jenis jam
  List<List<dynamic>> listData = [];

  String selectedDate = '';

  @override
  void initState() {
    super.initState();
    initJenisTanggal();
  }

  void initJenisTanggal() {
    data.keys.forEach((key) {
      List<String> parts = key.split(' ');
      String jenis = '${parts[0]} ${parts[1]} ${parts[2]}';
      String jenisJam = '${parts[3]}';

      if (!jenisTanggal.contains(jenis)) {
        jenisTanggal.add(jenis);
      }
    });
    if (jenisTanggal.isNotEmpty) {
      selectedDate = jenisTanggal[0];
    }
  }

  @override
  Widget build(BuildContext context) {
    data.forEach((key, value) {
      if (key.startsWith(selectedDate)) {
        List<dynamic> rowData = [];
        rowData.add(key.substring(14)); // Menambahkan jam
        rowData.addAll(value); // Menambahkan data pH
        listData.add(rowData); // Menambahkan rowData ke data12April2024
      }
    });
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
                child: Column(
                  children: [
                    SizedBox(height: 100.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Riwayat Pemantauan ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Hydro Check',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.normal,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 17.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 12.0),
                        TextButton.icon(
                          onPressed: () {
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              '/beranda',
                              (route) =>
                                  false, // Menghapus semua halaman sebelumnya
                            );
                          },
                          icon: Image.asset(
                            'images/back_button.png',
                            width: 12, // Adjust the width as needed
                            height: 20, // Adjust the height as needed
                          ),
                          label: Text(
                            'Beranda',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor:
                                Colors.transparent, // Button background color
                            padding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 16), // Button padding
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  8), // Button border radius
                            ),
                            elevation: 2, // Button shadow
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(height: 10.0),
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
                      child: Padding(
                        padding: EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Row(
                          children: <Widget>[
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
                                  '$selectedDate',
                                  style: TextStyle(
                                    color: Color(0xFF2490A9),
                                    fontSize: 12.0,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            PopupMenuButton(
                              offset: Offset(13, 20),
                              onSelected: (dynamic value) {
                                setState(() {
                                  listData = [];
                                  selectedDate = value
                                      as String; // Memperbarui selectedDate dengan nilai yang dipilih
                                });
                              },
                              itemBuilder: (BuildContext context) {
                                return jenisTanggal.map((jenis) {
                                  return PopupMenuItem(
                                    value:
                                        jenis, // Menambahkan value ke PopupMenuItem
                                    child: Text(jenis),
                                  );
                                }).toList();
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 2.0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Text(
                                  'Pilih Tanggal',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.0,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w300,
                                  ),
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
              Container(
                width: double.infinity, // menetapkan lebar menjadi penuh
                child: Transform.translate(
                  offset: Offset(0.0, -45.0),
                  child: Column(
                    children: [
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
                                          top: 30.0,
                                          right: 15.0,
                                          bottom: 20.0),
                                      child: Column(
                                        children: [
                                          // menampilkan judul container
                                          Row(
                                            children: [
                                              Text(
                                                'Riwayat Pemantauan Tanggal',
                                                style: TextStyle(
                                                  color: Color(0xFF2490A9),
                                                  fontSize: 12.0,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                ' $selectedDate',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12.0,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 27.0),

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
