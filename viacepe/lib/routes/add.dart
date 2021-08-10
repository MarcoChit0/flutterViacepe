import 'package:flutter/material.dart';
import 'package:viacepe/class/viacepe.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class AddNewAddress extends StatefulWidget {
  const AddNewAddress({Key? key}) : super(key: key);

  @override
  _AddNewAddressState createState() => _AddNewAddressState();
}

class _AddNewAddressState extends State<AddNewAddress> {
  late String cep;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add New Address'),),
      body:  SingleChildScrollView(
        child:
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'cep',
            ),
            onChanged: (value)=> cep=value,
          ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_circle),
        onPressed: () async{
          Viacepe myAddress =  await fectchViacepe(cep);
          Navigator.pop(context, myAddress);
          },
      ),
    );
  }
}


Future<Viacepe> fectchViacepe(String cep) async{
  print('https://viacep.com.br/ws/'+ cep.toString() +'/json/');
  final response = await http.get(Uri.parse('https://viacep.com.br/ws/'+ cep.toString() +'/json/'));
  if(response.statusCode==200){
    return Viacepe.fromJson(json.decode(response.body));
  }
  else{
    throw Exception('Failed to get this cep');
  }
}

// Column(
// children: [
// TextField(
// decoration: const InputDecoration(
// border: OutlineInputBorder(),
// labelText: 'logradouro',
// ),
// onChanged: (value)=> logradouro=value,
// ),
// TextField(
// decoration: const InputDecoration(
// border: OutlineInputBorder(),
// labelText: 'cep',
// ),
// onChanged: (value)=> cep=value,
// ),
// TextField(
// decoration: const InputDecoration(
// border: OutlineInputBorder(),
// labelText: 'complemento',
// ),
// onChanged: (value)=> complemento=value,
// ),
// TextField(
// decoration: const InputDecoration(
// border: OutlineInputBorder(),
// labelText: 'bairro',
// ),
// onChanged: (value)=> bairro=value,
// ),
// TextField(
// decoration: const InputDecoration(
// border: OutlineInputBorder(),
// labelText: 'localidade',
// ),
// onChanged: (value)=> localidade =value,
// ),
// TextField(
// decoration: const InputDecoration(
// border: OutlineInputBorder(),
// labelText: 'uf',
// ),
// onChanged: (value)=> uf=value,
// ),
// TextField(
// decoration: const InputDecoration(
// border: OutlineInputBorder(),
// labelText: 'ibge',
// ),
// onChanged: (value)=> ibge=value,
// ),
// TextField(
// decoration: const InputDecoration(
// border: OutlineInputBorder(),
// labelText: 'gia',
// ),
// onChanged: (value)=> gia=value,
// ),
// TextField(
// decoration: const InputDecoration(
// border: OutlineInputBorder(),
// labelText: 'siafi',
// ),
// onChanged: (value)=> siafi=value,
// ),
// TextField(
// decoration: const InputDecoration(
// border: OutlineInputBorder(),
// labelText: 'ddd',
// ),
// onChanged: (value)=> ddd=value,
// ),
// ],
// ),
