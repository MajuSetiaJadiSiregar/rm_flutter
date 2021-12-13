import 'dart:convert';

import 'package:myclient/env/env.dart';
import 'package:myclient/models/mahasiswa_model.dart';
import 'package:http/http.dart' as http;

class MahasiswaService {

  static Future<ReadMahasiswa> readMahasiswa() async {

    final response = await http.get(Uri.parse(Envirotment.endpointReadMahasiswa));

    if(response.statusCode == 200){
      return ReadMahasiswa.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load Mahasiswa');
    }
  }
}