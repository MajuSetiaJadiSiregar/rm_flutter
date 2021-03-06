class CreateMahasiswa {
  String msg;
  ResponseCreateMahasiswa? responseCreateMahasiswa;

  CreateMahasiswa({required this.msg, this.responseCreateMahasiswa});

  factory CreateMahasiswa.fromJson(Map<String, dynamic> json){
    return CreateMahasiswa(msg: json["msg"], responseCreateMahasiswa: ResponseCreateMahasiswa.fromJson(json["mahasiswa"]));
  }
}

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

class DeleteMahasiswa {
  String msg;

  DeleteMahasiswa({required this.msg});

  factory DeleteMahasiswa.fromJson(Map<String, dynamic> json){
    return DeleteMahasiswa(msg: json["msg"]);
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

class ResponseCreateMahasiswa {
  String id;
  String name;
  String fakultas;
  String jurusan;
  String ipk;

  ResponseCreateMahasiswa({required this.id, required this.name, required this.fakultas, required this.jurusan, required this.ipk});

  factory ResponseCreateMahasiswa.fromJson(Map<String, dynamic> json){
    return ResponseCreateMahasiswa(
      id: json["id"],
      name: json["name"],
      fakultas: json["fakultas"],
      jurusan: json["jurusan"],
      ipk: json["ipk"]
    );
  }
}