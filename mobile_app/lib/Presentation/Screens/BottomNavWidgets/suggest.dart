import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SuggestPage extends StatefulWidget {
  const SuggestPage({super.key});

  @override
  State<SuggestPage> createState() => _SuggestPageState();
}

class _SuggestPageState extends State<SuggestPage> {
  bool isDocsDownload = false;
  late AnimationController loadingController;
  File? _file;
  PlatformFile? _platformFile;

  selectFile() async {
    final file = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['png', 'jpg', 'pdf'],
    );

    if (file != null) {
      _file = File(file.files.single.path!);
      _platformFile = file.files.first;
    }

    loadingController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: isDocsDownload
          ? CircularPercentIndicator(
              radius: 120.0,
              lineWidth: 16.0,
              percent: 0.4,
              animation: true,
              animationDuration: 2000,
              center: const Text(
                "7400 AZN",
                style: TextStyle(fontSize: 25),
              ),
              progressColor: Colors.green,
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "File daxil edin:",
                    style: TextStyle(fontSize: 24),
                  ),
                  GestureDetector(
                    onTap: selectFile,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(50)),
                      child: GestureDetector(
                        onTap: () {

                        },
                        child: Icon(
                          Icons.upload_file,
                          size: 60,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
