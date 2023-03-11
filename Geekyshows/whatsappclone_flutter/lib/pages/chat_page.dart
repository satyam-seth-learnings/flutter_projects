import 'package:flutter/material.dart';
import 'package:whatsappclone_flutter/models/chat_model.dart';
import 'package:whatsappclone_flutter/pages/chat_detail_page.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: chatData.length,
        itemBuilder: (context, i) => Column(
          children: [
            const Divider(
              height: 10.0,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                backgroundImage:
                    AssetImage(chatData[i].avatar ?? 'images/no_image.jpg'),
              ),
              title: Text(
                chatData[i].name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                chatData[i].message,
                style: const TextStyle(color: Colors.grey, fontSize: 15.0),
              ),
              trailing: Text(
                chatData[i].time,
                style: const TextStyle(color: Colors.grey, fontSize: 14.0),
              ),
              onTap: () {
                // print('Chat Detail Open');
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChatDetailPage()));
              },
            )
          ],
        ),
      ),
    );
  }
}
