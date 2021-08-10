import 'package:flutter/material.dart';
import 'package:viacepe/routes/list.dart';
import 'package:viacepe/routes/add.dart';
import 'package:viacepe/routes/details.dart';


main(){
  runApp(MaterialApp(
    title: 'My list of Address',
    initialRoute: '/list',
    debugShowCheckedModeBanner: false,
    routes:{
      '/list'       : (context)=> const ListOfAddresses(),
      '/add'    : (context)=> const AddNewAddress(),
      '/detail' : (context)=> const DetailAddresss(),
    }
  ));
}

