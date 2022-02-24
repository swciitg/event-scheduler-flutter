import 'dart:io';
import 'package:flutter/material.dart';
import 'uploadfileboxes.dart';
import 'sharedrivelink.dart';
import 'package:file_picker/file_picker.dart';

class UploadFilesScreen extends StatelessWidget {
  const UploadFilesScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, top: 35, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Upload Files',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  // height: 35,
                  // width: 100,

                  child: Material(
                    elevation: 2.0,
                    color: Color(0xff3D55BE),
                    borderRadius: BorderRadius.circular(100.0),
                    child: MaterialButton(
                      onPressed: () async{
                        FilePickerResult? result = await FilePicker.platform.pickFiles();

                        if (result != null) {
                          File file = File(result.files.single.path.toString());
                        } else {
                          // User canceled the picker
                        }


                      },
                      minWidth: 70.0,
                      height: 25.0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(
                                Icons.upload_rounded,
                                color: Colors.white,
                                size: 13,
                              ),
                              SizedBox(
                                width: 10,
                              ),

                              Text(
                                'Upload',
                                style: TextStyle(color: Colors.white, fontSize: 15),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const Expanded(child: UploadAllFiles()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Share Drive Link',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  // height: 35,
                  // width: 100,

                  child: Material(
                    elevation: 2.0,
                    color: Color(0xff3D55BE),
                    borderRadius: BorderRadius.circular(100.0),
                    child: MaterialButton(
                      onPressed: () {


                      },
                      minWidth: 70.0,
                      height: 25.0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 15,
                              ),
                              SizedBox(
                                width: 10,
                              ),

                              Text(
                                'New',
                                style: TextStyle(color: Colors.white, fontSize: 15),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            const Expanded(child: ShareDriveLink()),
          ],
        ),
      ),
    );

  }
}


class UploadAllFiles extends StatelessWidget {
  const UploadAllFiles({Key? key, this.event}) : super(key: key);
  final String? event;

  @override
  Widget build(BuildContext context) {
    const uploadFilesBox = UploadFilesBoxes();

    List<UploadFilesBoxes> uploadBoxes = [uploadFilesBox];

    uploadBoxes.add(uploadFilesBox);
    uploadBoxes.add(uploadFilesBox);
    return ListView.separated(
      separatorBuilder: (context, index) {
        return Divider(
          color: Color(0xffEFEEFA),
          thickness: 2,
        );
      },
      itemCount: uploadBoxes.length,
      itemBuilder: (context, index) {
        return uploadBoxes[index];
      },
    );
  }
}


class ShareDriveLink extends StatelessWidget {
  const ShareDriveLink({Key? key, this.event}) : super(key: key);
  final String? event;

  @override
  Widget build(BuildContext context) {
    const driveLinkBox = DriveLinkBoxes();

    List<DriveLinkBoxes> linkBoxes = [driveLinkBox];

    linkBoxes.add(driveLinkBox);
    return ListView.separated(
      separatorBuilder: (context, index) {
        return Divider(
          color: Color(0xffEFEEFA),
          thickness: 2,
        );
      },
      itemCount: linkBoxes.length,
      itemBuilder: (context, index) {
        return linkBoxes[index];
      },
    );
  }
}