import 'package:flutter/material.dart';

class ViewDetails extends StatelessWidget {

  final String? wallpaperName;
  final String? wallpaperDetails;
  const ViewDetails({super.key, required this.wallpaperName, required this.wallpaperDetails});

  String getImagePath() {
    switch (wallpaperName.toString()) {
      case 'Images' :
      return 'assets/images/images.png';

      case 'Ember_Mac' :
      return 'assets/images/Ember_Mac.png';

      case 'Mac_Commander' :
      return 'assets/images/MacCommander_ColorF.png';

      case 'FireLicked_Mac' :
      return 'assets/images/FireLicked_Mac.png';

      case 'BOP_Mac' :
      return 'assets/images/BOP_Mac.png';

      case 'Rancho_Twlight' :
      return 'assets/images/RanchoTwlight_T_Mac.png';

      default :
      return 'assets/image/noImage.png';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text (wallpaperName.toString()),centerTitle: true,
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: <Widget> [
            const Text('Wallpapers', style: TextStyle(fontSize: 30, color: Colors.white),),
            Text(wallpaperName.toString(), style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
            ClipOval(child: Image.asset(getImagePath(), height: 200, width: 200,fit: BoxFit.cover,)),
          ],
        ),
      ),
    );
  }
}