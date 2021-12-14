import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:myclient/models/mahasiswa_model.dart';
import 'package:myclient/services/mahasiswa_service.dart';

class MahasiswaController extends GetxController {
  final listMahasiswa = <ListMahasiswa>[].obs;
  final createMahasiswa = CreateMahasiswa(msg: "", responseCreateMahasiswa: ResponseCreateMahasiswa(name: "", fakultas : "", jurusan: "", ipk: "", id : "")).obs;
  
  final TextEditingController nameEditingController = TextEditingController();
  final TextEditingController fakultasEditingController = TextEditingController();
  final TextEditingController jurusanEditingController = TextEditingController();
  final TextEditingController ipkEditingController = TextEditingController();

  @override 
  void onInit() {
    readMahasiswa();
    super.onInit();
  }

  void createDataMahasiswa() async {
    try{
      print('response.msgggwr');
      var response = await MahasiswaService.createNewMahasiswa(nameEditingController.text, fakultasEditingController.text, jurusanEditingController.text, ipkEditingController.text);
      print('response.msg');
      Get.back();
    } catch(e){
      print(e);
    }
  }


  void readMahasiswa() async {
    try {
      var resonse = await MahasiswaService.readMahasiswa();
      listMahasiswa.value = resonse.listMahasiswa;
    } catch(e){
      print(e);
    }
  }

  void deleteDataMahasiwa(String id) async {
    try {
      var response = await MahasiswaService.deleteMahasiswa(id);
      Get.snackbar('Informatin', response.msg);
    }catch(e){
      print(e);
    }
  }
}