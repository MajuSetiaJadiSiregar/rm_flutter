import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:myclient/envirotment/file_env.dart';
import 'package:myclient/models/mahasiswa/mahasiswa_model.dart';

class MahasiswaService {

  static Future<Mahasiswa> readMahasiswa() async {
    final response = await http.get(Uri.parse(FileEnv.endpointMahasiswaRead));
    if(response.statusCode == 200){
      return Mahasiswa.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load mahasiswa');
    }
  }
}