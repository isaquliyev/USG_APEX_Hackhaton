import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mobile_app/Data/Diagnos.dart';
import 'package:percent_indicator/percent_indicator.dart';


class SuggestPage extends StatefulWidget {
  const SuggestPage({ Key? key }) : super(key: key);

  @override
  _SuggestPageState createState() => _SuggestPageState();
}

class _SuggestPageState extends State<SuggestPage> with SingleTickerProviderStateMixin {
  late AnimationController loadingController;

  File? _file;
  PlatformFile? _platformFile;

  selectFile() async {
    final file = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['png', 'jpg', 'jpeg']
    );

    if (file != null) {
      setState(() {
        _file = File(file.files.single.path!);
        _platformFile = file.files.first;
      });
    }

    loadingController.forward();
  }

  @override
  void initState() {
    loadingController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() { setState(() {}); });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: !loadingController.isCompleted? SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 100,),
            SizedBox(height: 50,),
            Text('Upload your file', style: TextStyle(fontSize: 25, color: Colors.grey.shade800, fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text('File should be jpg, png', style: TextStyle(fontSize: 15, color: Colors.grey.shade500),),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: selectFile,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                  child: DottedBorder(
                    borderType: BorderType.RRect,
                    radius: Radius.circular(10),
                    dashPattern: [10, 4],
                    strokeCap: StrokeCap.round,
                    color: Colors.blue.shade400,
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade50.withOpacity(.3),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Iconsax.folder_open, color: Colors.blue, size: 40,),
                          SizedBox(height: 15,),
                          Text('Select your file', style: TextStyle(fontSize: 15, color: Colors.grey.shade400),),
                        ],
                      ),
                    ),
                  )
              ),
            ),
            _platformFile != null
                ? Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Selected File',
                      style: TextStyle(color: Colors.grey.shade400, fontSize: 15, ),),
                    SizedBox(height: 10,),
                    Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                offset: Offset(0, 1),
                                blurRadius: 3,
                                spreadRadius: 2,
                              )
                            ]
                        ),
                        child: Row(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.file(_file!, width: 70,)
                            ),
                            SizedBox(width: 10,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(_platformFile!.name,
                                    style: TextStyle(fontSize: 13, color: Colors.black),),
                                  SizedBox(height: 5,),
                                  Text('${(_platformFile!.size / 1024).ceil()} KB',
                                    style: TextStyle(fontSize: 13, color: Colors.grey.shade500),
                                  ),
                                  SizedBox(height: 5,),
                                  Container(
                                      height: 5,
                                      clipBehavior: Clip.hardEdge,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.blue.shade50,
                                      ),
                                      child: LinearProgressIndicator(
                                        value: loadingController.value,
                                      )
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                          ],
                        )
                    ),
                    SizedBox(height: 20,),
                    // MaterialButton(
                    //   minWidth: double.infinity,
                    //   height: 45,
                    //   onPressed: () {},
                    //   color: Colors.black,
                    //   child: Text('Upload', style: TextStyle(color: Colors.white),),
                    // )
                  ],
                ))
                : Container(),
            SizedBox(height: 150,),
          ],
        ),
      ) : diagnosis.length == 1 ? Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Your Expected Insurance:", style: TextStyle(fontSize: 24),),
            SizedBox(height: 40,),
            CircularPercentIndicator(
              radius: 100,
              percent: 1,
              animation: true,
              animationDuration: 2500,
              lineWidth: 12,
              center: Text("7400 AZN", style: TextStyle(fontSize: 24),),
              progressColor: Colors.green,
              backgroundColor: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Text("Don't forget that this is just estimated Insurance fee.", textAlign: TextAlign.center, style: TextStyle(fontSize: 24),),
            ),
          ],
        ),
      ) : Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/warning.jpg"),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("You are not relevant for Life Insurance", textAlign: TextAlign.center, style: TextStyle(fontSize: 24),),
            ),
          ],
        ),
      ),
    );
  }
}