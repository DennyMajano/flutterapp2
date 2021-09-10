import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReportList extends StatelessWidget {
  var examples = ["Reporte1","Reporte2","Reporte3","Reporte4","Reporte5","Reporte6"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blueGrey ,
      appBar: AppBar(
        title: const Text("Informes de iglesia"),
      ),
      body: Column(verticalDirection: VerticalDirection.down,
        children: [
          _BusquedaInforme(),
      ListView.builder(itemBuilder: (context,position){
        return Card(

          child: Column(children: <Widget> [
            Text("Reporte de mes "+ position.toString(),style: TextStyle(fontSize: 18),),
            Row(children:<Widget> [
              ElevatedButton(onPressed: (){}, child:Text("Ver informe")),
              ElevatedButton(onPressed: (){}, child:Text("Descargar"))
            ], mainAxisAlignment: MainAxisAlignment.spaceEvenly,)
          ],),
        );
      },
        itemCount: examples.length,
      ),
        ],
      )
    );
  }

  Widget _BusquedaInforme(){
    return Column(
      children: [
        Text("Informes generales"),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password',
          ),
        )
      ],
    );
  }
}
