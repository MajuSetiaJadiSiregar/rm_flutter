import 'package:get/get.dart';
import 'package:myclient/models/mahasiswa/mahasiswa_model.dart';
import 'package:myclient/services/mahasiswa_service.dart';

class MahasiswaController extends GetxController {
  final listMahasiswa = <ListMahasiswa>[].obs;

  void readDataMahasiswa() async {
    try
    {
      var responseJson = MahasiswaService.readMahasiswa();
    }
    catch(e)
    {
      print(e);
    }
  }
}