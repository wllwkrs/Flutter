import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> data = [
      {
        "name": "Willa Wikarsi",
        "imageUrl":
            "https://media.istockphoto.com/id/1365436662/id/foto/kemitraan-yang-sukses.jpg?s=612x612&w=0&k=20&c=g9wAl1aCi2UZF9qGd_4rJGRFGPEpy1JHFjH2uow9yJk=",
        "Jabatan": "Direktur Tambang"
      },
      {
        "name": "Dyarhesya Arthitha",
        "imageUrl":
            "https://media.istockphoto.com/id/1164863397/id/foto/wanita-pengusaha-yang-menarik-menggunakan-tablet-digital-sambil-berdiri-di-depan-jendela.jpg?s=612x612&w=0&k=20&c=Xq7x7OrzXvGReBM4Tm3MLClBpczPcmtMWjyH1ScZ4SY=",
        "Jabatan": "Manajer Operasional Tambang"
      },
      {
        "name": "Agrarish Rahwana Regan",
        "imageUrl":
            "https://media.istockphoto.com/id/1186079153/id/foto/dia-akan-tinggal-sampai-ia-memiliki-semuanya-tahu.jpg?s=612x612&w=0&k=20&c=wPCgNU1RU2SoFjFnd856H2uTc6TpO0EoOsDdKPGtzHU=",
        "Jabatan": "Manajer Sumber Daya Mineral"
      },
      {
        "name": "Agreta Monica",
        "imageUrl":
            "https://media.istockphoto.com/id/1299077558/id/foto/pimpin-diri-anda-untuk-kehidupan-kesuksesan.jpg?s=612x612&w=0&k=20&c=9uwFSipwRbFwRJiv0fi3-E47HYTnhZLYqI3fV_KeWXU=",
        "Jabatan": "Insinyur Pertambangan"
      },
      {
        "name": "Dewandaru Ragata",
        "imageUrl":
            "https://media.istockphoto.com/id/1213860371/id/foto/kepercayaan-diri-cerdas-pengusaha-startup-asia-pengusaha-pengusaha-senyum-tangan-gunakan.jpg?s=612x612&w=0&k=20&c=Vckp5zvbvOvbc16Y5Hu-Q-PrfIGyfECovMAzQYekkF0=",
        "Jabatan": "Teknisi tambang"
      },
      {
        "name": "Titanium Adnan Atmaja",
        "imageUrl":
            "https://media.istockphoto.com/id/1328350044/id/foto/pengusaha-arab-yang-percaya-diri-sukses-tutor-freelancer-ceo-bekerja-pada-tablet-digital.jpg?s=612x612&w=0&k=20&c=wOAyQrj1yO9sj_7cnu1pc0xnoirAmKvEpKevlCWBkOc=",
        "Jabatan": "Pengawas Keselamatan Tambang"
      },
      {
        "name": "Androemeda Gustave",
        "imageUrl":
            "https://media.istockphoto.com/id/1181830509/id/foto/urban-bahagia-wanita-bisnis-menggunakan-komputer-tablet-dan-bekerja.jpg?s=612x612&w=0&k=20&c=iB_p6mr43w8tAatNKGwoPNFG93HPnW9etMp8VdAlOgw=",
        "Jabatan": "Tenaga Kerja Kontrak"
      },
    ];
    return MaterialApp(
      title: 'Praktikum',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffe5e5e5),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Project Uji Coba'),
          backgroundColor: Colors.blueAccent,
          leading: IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {}, // add onPressed callback
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final item = data[index];
            return Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: ListTile(
                leading: ClipOval(
                  child: Image.network(
                    item["imageUrl"] ?? "",
                    width: 50,
                    height: 50,
                  ),
                ),
                title: Text(
                  item["name"] ?? "",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text(
                  item["Jabatan"] ?? "",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
