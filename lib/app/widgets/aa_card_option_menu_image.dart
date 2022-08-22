import 'package:flutter/material.dart';

class AAcardOptionMenuImage extends StatelessWidget {
  final dynamic imageName;
  final String description;
  final VoidCallback onTap;
  final double? height;
  final double? width;
  final double? fontSize;
  final double? imageSize;

  const AAcardOptionMenuImage(
      {Key? key,
      required this.imageName,
      required this.description,
      required this.onTap,
      this.height = 80,
      this.width = 160,
      this.fontSize = 14,
      this.imageSize = 40})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: InkWell(
        onTap: onTap,
        child: Card(
          elevation: 3,
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: SizedBox(
                    height: imageSize,
                    width: imageSize,
                    child: Image.asset('assets/images/$imageName'),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      text: description,
                      style: TextStyle(
                        color: Color(0xFF0A5F55),
                        fontSize: fontSize,
                      ),
                    ),
                  ),
                  flex: 7,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
