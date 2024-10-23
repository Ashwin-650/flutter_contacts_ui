import 'package:flutter/material.dart';

class Contactadd extends StatelessWidget {
  const Contactadd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: const Center(
          child: Text('Add contact'),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.done))],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 200,
              width: double.infinity,
              child: Icon(
                Icons.account_circle,
                size: 150,
              ),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10)),
                child: const SizedBox(
                  height: 50,
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: " Add name", border: InputBorder.none),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10)),
              child: const SizedBox(
                height: 50,
                width: 350,
                child: Padding(
                  padding: EdgeInsets.zero,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: " Add Phone number",
                        border: InputBorder.none),
                    keyboardType: TextInputType.number,
                    maxLength: 10,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
