import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myclient/controllers/mahasiswa_controller.dart';

class HomePage extends StatelessWidget {
  final MahasiswaController mahasiswaController = Get.put(MahasiswaController());

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Mahasiswa'),),
      // body: _body(),
      body: _body(),
    );
  }

  // Widget _body(){
  //   return Obx((){
  //     return ListView.builder(itemBuilder: itemBuilder)
  //   });
  // }
  Widget _body() => Obx(() => ListView.builder(
    itemBuilder: (_, i){
      /**
       * call value from parameter
       * yang parameter diambil dari getx controller
       */
      return _cardList(
        name: mahasiswaController.listMahasiswa[i].name,
        fakultas: mahasiswaController.listMahasiswa[i].fakultas,
        jurusan: mahasiswaController.listMahasiswa[i].jurusan,
        ipk: mahasiswaController.listMahasiswa[i].ipk,
        id: mahasiswaController.listMahasiswa[i].id
      );
    },
    itemCount: mahasiswaController.listMahasiswa.length,
  ));

  Widget _cardList({String? name, String? fakultas, String? jurusan, String? ipk, String? id}){
    return Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.album),
              title: (name !=null) ? Text('name : $name') : Text('No Name'),
              subtitle: (fakultas !=null) ? Text('fakultas : $fakultas') : Text('No Fakultas'),
            ),
            ListTile(
              leading: Icon(Icons.album),
              title: (jurusan !=null) ? Text('Jurusan : $jurusan') : Text('No Jurusan'),
              subtitle: (ipk !=null) ? Text('IPK : $ipk') : Text('No ipk'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Edit'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('Delete'),
                  onPressed: () {
                    if(id != null){
                      mahasiswaController.deleteDataMahasiswa(id);
                      //mahasiswaController.readDataMahasiswa();
                    } else {
                      print('aya wae');
                    }
                    
                  },
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      );
  }



  Widget _loadingIndicator(){
    return Center(
      child: Text('Sabar bos ku...'),
    );
  }
  
}
