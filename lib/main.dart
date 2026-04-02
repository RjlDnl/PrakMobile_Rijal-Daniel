import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String title = 'Wisata Garut';

    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(title),
          leading: const Icon(Icons.home),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Artikel Baru
              Container(
                margin: const EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Artikel Baru",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),

                      // Gambar Garut
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://assets.promediateknologi.id/crop/0x0:0x0/1200x600/webp/photo/2023/04/07/Kabupaten-Garut-1875986460.jpg',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),

                      // Judul
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Kota Garut",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      // Deskripsi
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          "Garut adalah salah satu kabupaten di Jawa Barat yang terkenal dengan keindahan alamnya. "
                          "Dikelilingi oleh pegunungan seperti Gunung Papandayan dan Gunung Guntur, Garut menawarkan "
                          "pemandangan yang sejuk dan asri. Selain itu, Garut juga dikenal dengan kuliner khas seperti "
                          "dodol Garut serta berbagai tempat wisata alam seperti pemandian air panas Cipanas dan pantai selatan.",
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),

              // Komentar Section
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Komentar",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),

              // List komentar
              komentar("Andi", "Garut memang indah banget, apalagi Gunung Papandayan!"),
              komentar("Siti", "Aku suka dodol Garut, rasanya khas banget."),
              komentar("Budi", "Pemandian air panas Cipanas wajib dikunjungi kalau ke Garut."),
            ],
          ),
        ),
      ),
    );
  }

  // Widget komentar reusable
  Widget komentar(String nama, String isi) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(nama, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 5),
          Text(isi),
        ],
      ),
    );
  }
}
