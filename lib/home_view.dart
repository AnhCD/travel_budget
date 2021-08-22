import 'dart:html';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'Trip.dart';

class HomeView extends StatelessWidget {
  final List<Trip> tripsList = [
    Trip('New York', DateTime.now(), DateTime.now(), 200.00, 'Car'),
    Trip('Boston', DateTime.now(), DateTime.now(), 450.00, 'Plane'),
    Trip('Washington D.C', DateTime.now(), DateTime.now(), 900.00, 'Bus'),
    Trip('Austin', DateTime.now(), DateTime.now(), 170.00, 'Car'),
    Trip('Scranton', DateTime.now(), DateTime.now(), 180.00, 'Car'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
          itemCount: tripsList.length,
          itemBuilder: (BuildContext context, int index) =>
              buildTripCard(context, index)),
    );
  }

  Widget buildTripCard(BuildContext context, int index) {
    final trip = tripsList[index];
    return new Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                child: Row(children: <Widget>[
                  Text(trip.title, style: new TextStyle(fontSize: 30),),
                  Spacer()
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0, bottom: 8.0),
                child: Row(children: <Widget>[
                  Text(
                      '${DateFormat('dd/MM/yyyy').format(trip.statDate).toString()} - ${DateFormat('dd/MM/yyyy').format(trip.endDate).toString()}'),
                  Spacer()
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Row(
                  children: <Widget>[
                    Text('\$${trip.budget.toStringAsFixed(2)}', style: new TextStyle(fontSize: 35.0)),
                    Spacer(),
                    Icon(Icons.directions_car),
                    Text(trip.travelType),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
