import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_it_app/services/app_service.dart';
import 'package:get_it_app/widgets/snack_bar_widget.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Details Page',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.grey[500],
        elevation: 1,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('Welcome to our DI tutorial'),
          ),
          OutlinedButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
            ),
            onPressed: () {
              String currentDate = GetIt.instance<AppService>().execute();
              showSnackBar(currentDate, context);
            },
            child: const Text('Get Date'),
          ),
        ],
      ),
    );
  }
}
