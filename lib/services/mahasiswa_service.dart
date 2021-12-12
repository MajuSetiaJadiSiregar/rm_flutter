import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:myclient/models/mahasiswa/mahasiswa_model.dart';
import 'package:myclient/envirotment/file_env.dart';


class MahasiswaService {

  static Future<Mahasiswa> readMahasiswa() async {
    final response = await http.get(Uri.parse(FileEnv.endpointMahasiswaRead));
    if(response.statusCode == 200){
      return Mahasiswa.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load mahasiswa');
    }
  }

  static Future<DeleteMahasiswa> deleteMahasiswa(String id) async {
    final response = await http.delete(Uri.parse('http://10.0.2.2:5000/mahasiswa/delete/$id'));

    if(response.statusCode == 200){
      print(jsonDecode(response.body));
      return DeleteMahasiswa.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to delete mahasiswa');
    }
  }
}