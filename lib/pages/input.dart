import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Input extends StatefulWidget {
  const Input({Key? key}) : super(key: key);

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  //untuk menangkap hasil inputan textformfield
  final TextEditingController nameController = TextEditingController();
  final TextEditingController angkaController = TextEditingController();
  //method untuk bagian kesatu
  void masuk() {
    setState(() {
      nameController.text;
      // nameController.text.replaceAll("a", "o");
    });
  }

  //method untuk bagian kedua
  void keluar() {
    setState(() {
      angkaController.text;
    });
  }

  //method untuk desimal 3 angka di depan coma

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Input Data',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 200,
                  child: TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: "Input Text",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 200,
                  height: 50,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(color: Colors.blue),
                      ),
                    ),
                    onPressed: () {
                      masuk();
                    },
                    child: Text(
                      'Run Text',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              //print sesuai inputan
              child: Text('Teks Asli : ' + nameController.text),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              //print inputan, tapi huruf a jadi huruf o
              child: Text(
                  'A jadi O : ' + nameController.text.replaceAll('a', 'o')),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Huruf kecil : ' + nameController.text.toLowerCase()),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  'jumlah huruf : ' + nameController.text.length.toString()),
            ),
            //========================= bagian 2======================
            //========================= bagian 2======================
            //========================= bagian 2======================
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 200,
                  child: TextFormField(
                    controller: angkaController,
                    decoration: InputDecoration(
                      labelText: "Input Angka",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 200,
                  height: 50,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(color: Colors.blue),
                      ),
                    ),
                    onPressed: () {
                      keluar();
                    },
                    child: Text(
                      'Run Angka',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              //print sesuai inputan
              child: Text('Angka Asli : ' + angkaController.text),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              //print inputan, tapi 3 angka dibelakang
              child: Text('Format : ' +
                  NumberFormat.currency(locale: "id_ID")
                      .format(123456)
                      .toString()),
            ),

            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Angka Pangkat : ' + nameController.text.toLowerCase(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
