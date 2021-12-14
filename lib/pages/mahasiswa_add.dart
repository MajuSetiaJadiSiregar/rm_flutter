import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myclient/controllers/mahasiswa_controller.dart';


class MahasiswaAdd extends StatelessWidget {
  final MahasiswaController mahasiswaController = Get.put(MahasiswaController());
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Add Mahasiswa'),),
      body: _body(),
    );
  }

  Widget _body(){
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              controller: mahasiswaController.nameEditingController,
              decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 labelText: 'Enter Name Mahasiswa'
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              controller: mahasiswaController.fakultasEditingController,
              decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 labelText: 'Enter Fakultas Mahasiswa'
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              controller: mahasiswaController.jurusanEditingController,
              decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 labelText: 'Enter Jurusan Mahasiswa'
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              controller: mahasiswaController.ipkEditingController,
              decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 labelText: 'Enter IPK Mahasiswa'
              ),
            ),
          ),
          
          Center(
            child: ElevatedButton(
              child: Text('Add Mahasiswa'),
              onPressed: () {
                mahasiswaController.createDataMahasiswa();
                // mahasiswaController.createDataMahasiswa(mahasiswaController.nameEditingController.text, mahasiswaController.fakultasEditingController.text, mahasiswaController.jurusanEditingController.text, mahasiswaController.ipkEditingController.text);
                // Get.back()
              }
            ),
          )
        ],
      ),
    );
  }
}