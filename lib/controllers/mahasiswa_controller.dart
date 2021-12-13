import 'package:get/get.dart';
import 'package:myclient/models/mahasiswa_model.dart';
import 'package:myclient/services/mahasiswa_service.dart';

class MahasiswaController extends GetxController {
  final listMahasiswa = <ListMahasiswa>[].obs;


  void readMahasiswa() async {
    try {
      var resonse = await MahasiswaService.readMahasiswa();
      listMahasiswa.value = resonse.listMahasiswa;
    } catch(e){
      print(e);
    }
  }
}