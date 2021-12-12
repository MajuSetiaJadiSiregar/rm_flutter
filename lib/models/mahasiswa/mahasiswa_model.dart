class Mahasiswa {
  final String status;
  final int total;
  final List<ListMahasiswa> listMahasiswa;

  Mahasiswa({required this.status, required this.total, required this.listMahasiswa});

  factory Mahasiswa.fromJson(Map<String, dynamic> json){

    var list = json["ListMahasiswa"] as List;

    List<ListMahasiswa> mahasiswaList = list.map((i) => ListMahasiswa.fromJson(i)).toList();

    return Mahasiswa(status: json["status"], total: json["total"], listMahasiswa: mahasiswaList);
  }
}


class ListMahasiswa {
  final String id;
  final String name;
  final String fakultas;
  final String jurusan;
  final String ipk;

  ListMahasiswa(
    {
      required this.id,
      required this.name,
      required this.fakultas,
      required this.jurusan,
      required this.ipk
    }
  );


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


class DeleteMahasiswa {
  String msg;

  DeleteMahasiswa({required this.msg});

  factory DeleteMahasiswa.fromJson(Map<String,dynamic> json){
    return DeleteMahasiswa(msg: json["msg"]);
  }
}