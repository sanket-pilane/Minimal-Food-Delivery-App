import 'package:flutter/material.dart';
import 'package:minimal_food_app/components/my_receipt.dart';
import 'package:minimal_food_app/model/restaunrunt.dart';
import 'package:minimal_food_app/services/database/firestore.dart';
import 'package:provider/provider.dart';

class DeliveryPage extends StatefulWidget {
  const DeliveryPage({super.key});

  @override
  State<DeliveryPage> createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  FirestoreServices db = FirestoreServices();

  @override
  void initState() {
    super.initState();
    String receipt = context.read<Restaunrant>().displayReceipt();
    db.saveOrderToDatabase(receipt);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: _builCustomBottomNavigationBar(context),
        appBar: AppBar(
          title: const Text("Delivery in progress"),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: const Column(
          children: [
            MyReceipt(),
          ],
        ));
  }
}

Widget _builCustomBottomNavigationBar(BuildContext context) {
  return Container(
    height: 100,
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.secondary,
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25), topRight: Radius.circular(25)),
    ),
    child: Row(
      children: [
        Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
              ),
            )),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Doe John",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Driver",
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
            ),
          ],
        ),
        const Spacer(),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.message,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                )),
          ],
        )
      ],
    ),
  );
}
