import 'package:flutter/material.dart';
import 'package:mi_primera_app/features/ofertas/data/ofertas_locales.dart';

void main() {
  runApp(const MiPrimeraApp());
}

class MiPrimeraApp extends StatelessWidget {
  const MiPrimeraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ofertas',
      home: const OfertasPage(),
    );
  }
}

class OfertasPage extends StatefulWidget {
  const OfertasPage({super.key});

  @override
  State<OfertasPage> createState() => _OfertasPageState();
}

class _OfertasPageState extends State<OfertasPage> {
  final OfertasLocales repositorio =
      OfertasLocales(); //repositorio local de ofertas

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ofertas disponibles')),
      body: FutureBuilder(
        future: repositorio.obtenerTodas(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('No se pudo leer:\n${snapshot.error}'));
          }

          final ofertas = snapshot.data ?? [];

          return ListView.builder(
            itemCount: ofertas.length,
            itemBuilder: (context, index) {
              final oferta = ofertas[index];

              return ListTile(
                title: Text(oferta.titulo),
                subtitle: Text('${oferta.negocio} · \$${oferta.precioOferta}'),
                trailing: Text(oferta.estado.runtimeType.toString()),
              );
            },
          );
        },
      ),
    );
  }
}
