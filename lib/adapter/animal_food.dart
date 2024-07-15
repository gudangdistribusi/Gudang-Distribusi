import 'package:flutter/material.dart';

class AnimalFood extends StatelessWidget {
  const AnimalFood({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.all(4),
            child: Material(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              elevation: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: Image.asset(
                    'assets/sample.png',width: 158,fit: BoxFit.cover,
                  )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Deskripsi produk panjang'),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Rp200.000',
                            style: TextStyle(color: Colors.red),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              const Icon(Icons.place),
                              Text('Location')
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
