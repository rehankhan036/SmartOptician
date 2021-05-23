import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

PickedFile imagefile;
final ImagePicker picker = ImagePicker();

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        overflow: Overflow.visible,
        children: [
          CircleAvatar(
            backgroundImage: imagefile == null
                ? AssetImage("assets/images/Profile Image.png")
                : FileImage(File(imagefile.path)),
          ),
          Positioned(
            right: -16,
            bottom: 0,
            child: SizedBox(
              height: 46,
              width: 46,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                  side: BorderSide(color: Colors.white),
                ),
                color: Color(0xFFF5F6F9),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: ((builder) => bottomsheet()),
                  );
                },
                child: SvgPicture.asset("assets/icons/Camera Icon.svg",
                    color: Color(0xFF5b02b4)),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget bottomsheet() {
    return Container(
      height: 100.0,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(children: <Widget>[
        Text(
          "Choose Profile Picture",
          style: TextStyle(fontSize: 20.0, color: Color(0xFF5b02b4)),
        ),
        Spacer(),
        SizedBox(
          height: 20,
          width: 50,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.camera, color: Color(0xFF5b02b4)),
            onPressed: () {
              takephoto(ImageSource.camera);
            },
            label: Text("Camera"),
          ),
          FlatButton.icon(
            icon: Icon(Icons.image, color: Color(0xFF5b02b4)),
            onPressed: () {
              takephoto(ImageSource.gallery);
            },
            label: Text("Gallery"),
          )
        ]),
      ]),
    );
  }

  void takephoto(ImageSource source) async {
    final pickedFile = await picker.getImage(
      source: source,
    );
    setState(() {
      imagefile = pickedFile;
    });
  }

  void setState(Null Function() param0) {}
}
