import 'package:flutter/material.dart';
import 'package:whatsappclone_flutter/models/call_model.dart';

class CallPage extends StatefulWidget {
  const CallPage({super.key});

  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: callData.length,
        itemBuilder: (context, i) => Column(
          children: [
            const Divider(
              height: 10.0,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                backgroundImage:
                    AssetImage(callData[i].avatar ?? 'images/no_image.jpg'),
              ),
              title: Text(
                callData[i].name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Container(
                    child: callData[i].callType,
                  ),
                  Text(
                    callData[i].time,
                    style: const TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                ],
              ),
              trailing: Icon(
                Icons.call,
                size: 25,
                color: Theme.of(context).primaryColor,
              ),
              onTap: () {
                print('Call Detail Open');
              },
            )
          ],
        ),
      ),
    );
  }
}
