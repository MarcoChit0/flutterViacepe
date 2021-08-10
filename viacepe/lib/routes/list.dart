import 'package:flutter/material.dart';
import 'package:viacepe/class/viacepe.dart';
import 'package:viacepe/routes/add.dart';

class ListOfAddresses extends StatefulWidget {
  const ListOfAddresses({Key? key}) : super(key: key);
  @override
  _ListOfAddressesState createState() => _ListOfAddressesState();
}

class _ListOfAddressesState extends State<ListOfAddresses> {
  List<Viacepe> addresses = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('My Addresses:'),
      ),
      body: ListView.builder(
        itemCount: addresses.length,
        itemBuilder: (context, index){
          return Card(
            child: ListTile(
              leading: const Icon(Icons.home),
              title: Text('Address: ${addresses[index].logradouro}'),
              subtitle: Text('comp: ${addresses[index].complemento}'),
              trailing: FloatingActionButton(
                child: const Icon(Icons.delete_forever),
                onPressed: ()=> setState(()=>addresses.removeAt(index)),
                heroTag: null,
              ),
              onTap: ()=> Navigator.pushNamed(context, '/detail', arguments: addresses[index]),
            ),
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_circle),
        onPressed: () async{
          Viacepe newAddress = await Navigator.push(
            context, MaterialPageRoute(
            builder: (_) => const AddNewAddress()
            )
          );
          setState(()=> addresses.add(newAddress));
        },
      ),
    );
  }
}
