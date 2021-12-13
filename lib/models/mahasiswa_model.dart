import 'dart:convert';

class ReadMahasiswa {
  String status;
  int total;
  List<ListMahasiswa> listMahasiswa;

  ReadMahasiswa({required this.status, required this.total, required this.listMahasiswa});

  factory ReadMahasiswa.fromJson(Map<String, dynamic> json){

    var list = json["ListMahasiswa"] as List;
    List<ListMahasiswa> listMahasiswa_ = list.map((e) => ListMahasiswa.fromJson(e)).toList();
    return ReadMahasiswa(status: json["status"], total: json["total"], listMahasiswa: listMahasiswa_);
  }
}

class ListMahasiswa {
  String id;
  String name;
  String fakultas;
  String jurusan;
  String ipk;

  ListMahasiswa({required this.id, required this.name, required this.fakultas, required this.jurusan, required this.ipk});

  factory ListMahasiswa.fromJson(Map<String, dynamic> json){
    return ListMahasiswa(
      id: json["_id"],
      name: json["name"],
      fakultas: json["fakultas"],
      jurusan: json["jurusan"],
      ipk: json["ipk"]
    );
  }
}