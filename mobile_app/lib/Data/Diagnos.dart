import 'dart:ui';

import 'package:flutter/material.dart';

class Diagnosis {
  String organName;
  Color organColor;
  String illness;
  String illnessId;
  String date;
  String doctorName;
  String imagePath;

  Diagnosis({
    required this.organName,
    required this.organColor,
    required this.illness,
    required this.illnessId,
    required this.date,
    required this.doctorName,
    required this.imagePath,
  });
}

List<Diagnosis> diagnosis = [
  Diagnosis(
    organName: "Heart",
    organColor: Colors.red,
    illness: "Heart Attack",
    illnessId: "#4252353",
    date: "02.03.2024",
    doctorName: "Dr. Isabella Mitchell",
    imagePath: 'images/doctor1.jpg',
  ),
  Diagnosis(
    organName: "Heart",
    organColor: Colors.red,
    illness: "Heart Failure",
    illnessId: "#4258624",
    date: "07.03.2022",
    doctorName: "Dr. Isabelle Mitchell",
    imagePath: 'images/doctor1.jpg',
  ),
  Diagnosis(
    organName: "Kidney",
    organColor: Colors.deepPurpleAccent,
    illness: "Kidney Stones",
    illnessId: "#2467165",
    date: "24.06.2021",
    doctorName: "Dr. Benjamin Anderson",
    imagePath: 'images/doctor2.png',
  ),
  Diagnosis(
    organName: "Kidney",
    organColor: Colors.deepPurpleAccent,
    illness: "Kidney Failure",
    illnessId: "#2464589",
    date: "12.05.2021",
    doctorName: "Dr. Benjamin Anderson",
    imagePath: 'images/doctor2.png',
  ),
  Diagnosis(
    organName: "Lungs",
    organColor: Colors.green.shade700,
    illness: "Pulmonary Pneumonia",
    illnessId: "#3464589",
    date: "15.10.2022",
    doctorName: "Dr. Sophia Patel",
    imagePath: "images/doctor3.jpeg"
  ),
];
