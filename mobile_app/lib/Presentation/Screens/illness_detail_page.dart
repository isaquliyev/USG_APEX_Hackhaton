import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:mobile_app/Data/ReceitDetail.dart';

class IllnessDetailPage extends StatefulWidget {
  const IllnessDetailPage({super.key});

  @override
  State<IllnessDetailPage> createState() => _IllnessDetailPageState();
}

class _IllnessDetailPageState extends State<IllnessDetailPage> {
  MedicalReceiptWidget medicalReceiptWidget = MedicalReceiptWidget(
    patientName: 'John Doe',
    dateOfBirth: 'January 1, 1980',
    patientAddress: '123 Main Street, Cityville',
    phoneNumber: '555-1234',
    email: 'john.doe@example.com',
    dateOfConsultation: 'March 1, 2024',
    timeOfConsultation: '10:00 AM',
    doctorName: 'Dr. Smith',
    clinicName: 'City General Hospital',
    clinicAddress: '456 Oak Avenue, Cityville',
    servicesDescription: 'General checkup and prescription',
    consultationFee: 80.0,
    medicationCost: 20.0,
    totalAmount: 100.0,
    paymentMethod: 'Credit Card',
  );

  bool isReceiptActive = true;
  bool isAnalysisActive = false;

  Future<bool> _downloadImage() async {
    // Replace 'assets/your_image.jpg' with the actual path to your image asset
    final ByteData data = await rootBundle.load('images/analysis1.png');
    List<int> bytes = data.buffer.asUint8List();
    final result = await ImageGallerySaver.saveImage(Uint8List.fromList(bytes));

    if (result['isSuccess']) {
      return true;
    } else {
      return false;
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Cholera",
                  style: Theme
                      .of(context)
                      .textTheme
                      .displayLarge,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    "Doctor's notes: The patient is advised to follow the prescribed treatment, maintain strict hygiene practices, and refrain from work or school until declared fit by a medical professional. For any further information, please feel free to contact our office.",
                    style: Theme
                        .of(context)
                        .textTheme
                        .displayMedium,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          this.isReceiptActive = true;
                          this.isAnalysisActive = false;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 2,
                        decoration: BoxDecoration(
                          color:
                          this.isReceiptActive ? Colors.white : Colors.grey,
                          borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(16)),
                        ),
                        child: Icon(
                          Icons.receipt,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          this.isReceiptActive = false;
                          this.isAnalysisActive = true;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 2,
                        decoration: BoxDecoration(
                          color: isAnalysisActive ? Colors.white : Colors.grey,
                          borderRadius:
                          BorderRadius.only(topRight: Radius.circular(16)),
                        ),
                        child: Icon(Icons.analytics),
                      ),
                    ),
                  ],
                ),
                this.isReceiptActive
                    ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          '------------------------------------------\n'
                              '        Medical Consultation Receipt\n'
                              '------------------------------------------\n',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),

                      // Patient Information
                      Text(
                        'Patient Information:\n'
                            'Name: ${medicalReceiptWidget.patientName}\n'
                            'Date of Birth: ${medicalReceiptWidget
                            .dateOfBirth}\n'
                            'Address: ${medicalReceiptWidget.patientAddress}\n'
                            'Phone Number: ${medicalReceiptWidget
                            .phoneNumber}\n'
                            'Email: ${medicalReceiptWidget.email}\n',
                      ),
                      Divider(),
                      // Consultation Details
                      Text(
                        'Consultation Details:\n'
                            'Date: ${medicalReceiptWidget.dateOfConsultation}\n'
                            'Time: ${medicalReceiptWidget.timeOfConsultation}\n'
                            'Doctor: ${medicalReceiptWidget.doctorName}\n'
                            'Clinic/Hospital: ${medicalReceiptWidget
                            .clinicName}\n'
                            'Address: ${medicalReceiptWidget.clinicAddress}\n',
                      ),
                      Divider(),
                      // Services Rendered
                      Text(
                        'Services Rendered:\n'
                            'Description: ${medicalReceiptWidget
                            .servicesDescription}\n\n',
                      ),
                      Divider(),
                      // Fees and Payments
                      Text(
                        'Consultation Fee: \$${medicalReceiptWidget
                            .consultationFee}\n'
                            'Medication Cost: \$${medicalReceiptWidget
                            .medicationCost}\n'
                            'Total Amount: \$${medicalReceiptWidget
                            .totalAmount}\n\n',
                      ),
                      Divider(),
                      // Payment Method
                      Text(
                        'Payment Method:\n'
                            '${medicalReceiptWidget.paymentMethod}\n\n',
                      ),
                      Divider(),
                      // Footer
                      Text(
                        'Thank you for choosing our services. Please feel free to contact us for any further assistance.\n'
                            '------------------------------------------\n',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                )
                    : Container(
                  height: 600,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('images/analysis1.png', height: 400, width: 300, fit: BoxFit.fill,),
                        GestureDetector(
                          onTap: () async {
                            if (await _downloadImage()) {
                              Fluttertoast.showToast(msg: "Download Succesfully");
                            }
                            else {
                              Fluttertoast.showToast(msg: "Download failed");
                            }
                          },
                            child: Icon(Icons.download_for_offline, size: 70, color: Colors.grey, )),
                      ],
                    );
                  },
                    itemCount: 4,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
