import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myclient/controllers/mahasiswa_controller.dart';

class HomePage extends StatelessWidget {
  final MahasiswaController mahasiswaController = Get.put(MahasiswaController());
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Mahasiswa'),),
      body: Center(
        child: ElevatedButton(
          child: Text('clik'), 
          onPressed: (){
            mahasiswaController.readDataMahasiswa();
          },
          ),
        ),
    );
  }
}