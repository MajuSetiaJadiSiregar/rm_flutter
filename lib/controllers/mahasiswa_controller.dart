import 'package:get/get.dart';
import 'package:myclient/models/mahasiswa/mahasiswa_model.dart';
import 'package:myclient/services/mahasiswa_service.dart';

class MahasiswaController extends GetxController {
  final listMahasiswa = <ListMahasiswa>[].obs;
  final isLoading = false.obs;

  @override
  void onInit(){
    readDataMahasiswa();
    super.onInit();
  }

  void readDataMahasiswa() async {
    try
    {
      var responseJson = await MahasiswaService.readMahasiswa();
      listMahasiswa.addAll(responseJson.listMahasiswa);
    }
    catch(e)
    {
      print(e);
    }
  }


  void changeBoolean() {
    isLoading.value = !isLoading.value;
  }

  void deleteDataMahasiswa(String id) async {
    try
    {
      var response = await MahasiswaService.deleteMahasiswa(id);
      Get.snackbar('Information', response.msg);
    }
    catch(e)
    {
      print(e);
    }
  }
}