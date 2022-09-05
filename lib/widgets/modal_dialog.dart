// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void imagePickerModal(BuildContext context, {VoidCallback? onCameraTapped, VoidCallback? onGalleryTapped}) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        padding: EdgeInsets.all(20),
        height: 220,
        child: Column(
          children: [
            GestureDetector(
              onTap: onCameraTapped,
              child: Card(
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(15),
                  child: Text('Camera',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: onGalleryTapped,
              child: Card(
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(15),
                  child: Text('Gallery',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
