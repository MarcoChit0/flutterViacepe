import 'package:viacepe/class/viacepe.dart';
import 'package:flutter/material.dart';

class DetailAddresss extends StatelessWidget {
  const DetailAddresss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Viacepe myAddress;
    final route = ModalRoute.of(context);
    if(route!=null){
      myAddress = route.settings as Viacepe;
      return Scaffold(
        appBar: AppBar(
          title: Text(myAddress.logradouro),
        ),
        body: Center(
          child: Card(
            child: Column(
              children: [
                Row(
                  children: [
                    const Text('CEP: '),
                    Text(myAddress.cep),
                  ],
                ),
                Row(
                  children: [
                    const Text('Logradouro: '),
                    Text(myAddress.logradouro),
                  ],
                ),
                Row(
                  children: [
                    const Text('Complemento: '),
                    Text(myAddress.complemento),
                  ],
                ),
                Row(
                  children: [
                    const Text('Bairro: '),
                    Text(myAddress.bairro),
                  ],
                ),
                Row(
                  children: [
                    const Text('Localidade: '),
                    Text(myAddress.localidade),
                  ],
                ),
                Row(
                  children: [
                    const Text('UF: '),
                    Text(myAddress.uf),
                  ],
                ),
                Row(
                  children: [
                    const Text('IBGE: '),
                    Text(myAddress.ibge),
                  ],
                ),
                Row(
                  children: [
                    const Text('GIA: '),
                    Text(myAddress.gia),
                  ],
                ),
                Row(
                  children: [
                    const Text('SIAFI: '),
                    Text(myAddress.siafi),
                  ],
                ),
                Row(
                  children: [
                    const Text('DDD: '),
                    Text(myAddress.ddd),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }
    else {return const Scaffold();}
  }
}
