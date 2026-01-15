import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 1.In aan wacdo image picker plugin
  final ImagePicker _imagePicker = ImagePicker();
  // 2.In aan sameeysto file aan ku shubto image keeyga
  File? selectedImage;
  // 3.In aan sameeysto function ii qaban lahay sida aan kuso heli lahay image gallery
  Future<void> pickImageGallery() async {
    // 1.Isticmalaha in aan ka helo gallery sawirantiisa
    XFile? image = await _imagePicker.pickImage(source: ImageSource.gallery);
    // 2.selectedImage i aan lamid dhigo qiimaha uu soo geliyo isticmalaha
    if (image != null) {
      setState(() {
        selectedImage = File(image.path);
      });
    }
  }

  // 4.In aan sameeysto function ii qaban lahay sida aan kuso heli lahay image camera
  Future<void> pickImageCamera() async {
    // 1.Isticmalaha in aan ka helo camera-da si uu sawir iskaga qaado front and back
    XFile? camera = await _imagePicker.pickImage(source: ImageSource.camera);
    // 2.selectedImage i aan lamid dhigo qiimaha uu soo geliyo isticmalaha
    if (camera != null) {
      setState(() {
        selectedImage = File(camera.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            selectedImage != null
                ? CircleAvatar(
                    radius: 50.0,
                    backgroundImage: FileImage(selectedImage!),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage(
                          "assets/no_profile_photo.png",
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text("No profile photo!"),
                    ],
                  ),
            SizedBox(height: 15.0),
            ElevatedButton(
              onPressed: pickImageGallery,
              child: Text("Select your profile photo on gallery"),
            ),
            SizedBox(height: 5.0),
            ElevatedButton(
              onPressed: pickImageCamera,
              child: Text("Select your profile photo on camera"),
            ),
          ],
        ),
      ),
    );
  }
}
