import 'package:dynamic_routing/dynamic_routing.dart';
import 'package:flutter/material.dart';

class ScreenFive extends StatelessWidget {
  const ScreenFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen Five"),
        leading: IconButton(
          onPressed: () {
            DynamicRouting.previous(context);
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.4,
            width: MediaQuery.sizeOf(context).width,
          ),
          const Text(
            "Screen Five",
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              DynamicRouting.next(context);
            },
            child: const Text(
              "Next",
            ),
          ),
        ],
      ),
    );
  }
}
