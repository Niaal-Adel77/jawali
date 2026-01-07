import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class ImagePickerPage extends StatefulWidget {
  const ImagePickerPage({super.key});
  @override
  State<ImagePickerPage> createState() => _ImagePickerPageState();
}
class _ImagePickerPageState extends State<ImagePickerPage> {
  File? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('اختيار صورة')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            image == null
                ?  Text('لا توجد صورة')
                : Image.file(image!, height: 200),
             SizedBox(height: 20),
            ElevatedButton(
              child:  Text('اختر صورة'),
              onPressed: () async {
                final picker = ImagePicker();
                 XFile? picked =
                    await picker.pickImage(source: ImageSource.gallery);
                if (picked != null) {
                  setState(() {
                    image = File(picked.path);
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}