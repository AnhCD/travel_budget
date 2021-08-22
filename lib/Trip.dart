import 'package:flutter/cupertino.dart';

class Trip{
  final String title;
  final DateTime statDate;
  final DateTime endDate;
  final double budget;
  final String travelType;

  Trip(this.title, this.statDate, this.endDate, this.budget, this.travelType);
}

