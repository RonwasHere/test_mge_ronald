import 'package:flutter/material.dart';
import 'package:test_mge_ronald/model/kendaraan.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  //controller untuk textformfield
  TextEditingController namaController = TextEditingController();
  TextEditingController mesinController = TextEditingController();
  TextEditingController rodaController = TextEditingController();

  //list untuk menyimpan hasil inputan
  List<Kendaraan> kendaraan = List.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'List View',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    width: 150,
                    child: TextFormField(
                      controller: namaController,
                      decoration: InputDecoration(
                        labelText: "Nama",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 150,
                    child: TextFormField(
                      controller: mesinController,
                      decoration: InputDecoration(
                        labelText: "Kapasitas Mesin",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 100,
                    child: TextFormField(
                      controller: rodaController,
                      decoration: InputDecoration(
                        labelText: "Roda",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: 200,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(color: Colors.blue),
                  ),
                ),
                onPressed: () {
                  String nama = namaController.text.trim();
                  String mesin = mesinController.text.trim();
                  String roda = rodaController.text.trim();

                  if (nama.isNotEmpty && mesin.isNotEmpty && roda.isNotEmpty) {
                    setState(() {
                      namaController.text = '';
                      mesinController.text = '';
                      rodaController.text = '';
                      kendaraan.add(Kendaraan(
                          nama: nama, mesin: mesin, roda: int.parse(roda)));
                    });
                  }
                },
                child: Text(
                  'add',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            SizedBox(height: 20),
            //hasil tampilan list
            Divider(thickness: 2),
            SizedBox(height: 10),
            //pengecekan ada data / tidak
            kendaraan.isEmpty
                ? Text(
                    'tidak ada data',
                    style: TextStyle(fontSize: 20),
                  )
                : Expanded(
                    child: ListView.builder(
                      itemCount: kendaraan.length,
                      itemBuilder: (context, index) => getRow(index),
                    ),
                  )
          ],
        ),
      ),
    );
  }

  Widget getRow(int index) {
    return ListTile(
      leading: Icon(Icons.list, size: 30),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(kendaraan[index].nama),
          //row kapasitas mesin + roda
          Row(
            children: [
              Text('Kapasitas Mesin = '),
              Text(kendaraan[index].mesin),
              Text(' / '),
              Text('Roda = '),
              Text(kendaraan[index].roda.toString()),
            ],
          ),
        ],
      ),
    );
  }
}
