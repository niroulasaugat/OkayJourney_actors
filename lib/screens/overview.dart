import 'package:flutter/material.dart';
import '../widgets/txt-button.dart';
import '../screens/detail.dart';

class ActorOverview extends StatefulWidget {
  const ActorOverview({super.key});

  @override
  State<ActorOverview> createState() => _ActorOverviewState();
}

class _ActorOverviewState extends State<ActorOverview> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _imageController = TextEditingController();
  @override

  void dispose() {
    _nameController.dispose();
    _imageController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Actor Details', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Txtfield(_nameController, 'Enter Actor Name'),
            SizedBox(height: 20,),
            Txtfield(_imageController, 'Enter Actor Image Url'),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_)=>ActorDetail(name: _nameController.text, imgurl: _imageController.text,)));
              },
              child: newbutton(context),
            )
          ],
        ),
      ),
    );
  }

}
