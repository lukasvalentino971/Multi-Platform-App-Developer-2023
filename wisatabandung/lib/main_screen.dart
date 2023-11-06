import 'package:flutter/material.dart';
import 'package:wisatabandung/detail_screen.dart';
import 'package:wisatabandung/model/tourism_place.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Wisata Bandung. Size: ${MediaQuery.of(context).size.width}'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(place: place);
                }));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Card(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5.0),
                            child: Image.asset(place.imageAsset),
                          )),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                place.name,
                                style: const TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(place.location),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ));
        },
        itemCount: tourismPlaceList.length,
      ),
    );
  }
}
