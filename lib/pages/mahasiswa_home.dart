import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myclient/controllers/mahasiswa_controller.dart';

class MahasiswaHome extends StatelessWidget {
  final MahasiswaController mahasiswaController = Get.put(MahasiswaController());
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('List Mahasiswa'),),
      body: _body(),
    );
  }

  Widget _body(){
    return Obx((){
      return ListView.builder(
        itemBuilder: (_, index){
          return _listCardMahasiswa(
            name: mahasiswaController.listMahasiswa[index].name,
            fakultas: mahasiswaController.listMahasiswa[index].fakultas,
            jurusan: mahasiswaController.listMahasiswa[index].jurusan,
            ipk: mahasiswaController.listMahasiswa[index].ipk,
            id: mahasiswaController.listMahasiswa[index].id
          );
        },
        itemCount: mahasiswaController.listMahasiswa.length,
      );
    });
  }

  Widget _listCardMahasiswa({String? name, String? fakultas, String? jurusan, String? ipk, String? id}){
    return Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.album),
              title: (name != null) ? Text('Name : $name') : Text('No Name'),
              subtitle: (fakultas != null) ? Text('Fakultas : $fakultas') : Text('No Fakultas')
            ),

            ListTile(
              leading: Icon(Icons.album),
              title: (jurusan != null) ? Text('Jurusan : $jurusan') : Text('No Jurusan'),
              subtitle: (ipk != null) ? Text('IPK : $ipk') : Text('No IPK')
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Delete'),
                  onPressed: () {
                    (id !=null) ? mahasiswaController.deleteDataMahasiwa(id) : Get.snackbar('Information', 'Data id is Empty');
                    mahasiswaController.readMahasiswa();
                  },
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('Edit'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      );
  }
}