import 'package:flutter/material.dart';

class MahasiswaAdd extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Add Mahasiswa'),),
      body: _body(),
    );
  }

  Widget _body(){
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 labelText: 'Enter Name Mahasiswa'
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 labelText: 'Enter Fakultas Mahasiswa'
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 labelText: 'Enter Jurusan Mahasiswa'
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 labelText: 'Enter IPK Mahasiswa'
              ),
            ),
          ),
          
          Center(
            child: ElevatedButton(
              child: Text('Add Mahasiswa'),
              onPressed: (){}
            ),
          )
        ],
      ),
    );
  }
}