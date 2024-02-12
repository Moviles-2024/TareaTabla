import 'package:flutter/material.dart';

class AppTable extends StatelessWidget {
  const AppTable({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("StatelessWidget vs StatefulWidget"),
        backgroundColor: Colors.grey[100],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              border: TableBorder.all(),
              children: <TableRow>[
                _celdasConstructor(
                    ['Característica', 'StatelessWidget', 'StatefulWidget'],
                    Colors.blue),
                _celdasConstructor(['Mutabilidad', 'Inmutable', 'Mutable']),
                _celdasConstructor([
                  'Ciclo de vida',
                  'Se crea una vez y no cambia',
                  'Se crea una vez y se actualiza según el estado'
                ]),
                _celdasConstructor(
                    ['Rendimiento', 'Más eficiente', 'Menos eficiente']),
                _celdasConstructor([
                  'Uso',
                  'Ideal para elementos estáticos',
                  'Ideal para elementos dinámicos'
                ]),
                _celdasConstructor([
                  'Ejemplos',
                  'Texto, Icono, Imagen',
                  'Botón, Formulario, Animación'
                ], Colors.white),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TableRow _celdasConstructor(List<String> texts, [Color? color]) {
    return TableRow(
      children: texts
          .map(
            (text) => TableCell(
              child: Container(
                padding: EdgeInsets.all(8.0),
                color: color ?? Colors.white,
                child: Center(child: Text(text)),
              ),
            ),
          )
          .toList(),
    );
  }
}
