import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_image_search/presentation/home/components/photo_widget.dart';
import 'package:flutter_image_search/presentation/home/home_view_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = TextEditingController();
  StreamSubscription? _subscription;

  @override
  void initState() {
    super.initState();

    Future.microtask(() => null);
    final vm = context.read<HomeViewModel>();
    _subscription = vm.eventStream.listen((event) {
      event.when(showSnackBar: (message) {
        final snackBar = SnackBar(content: Text(message));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _subscription?.cancel();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var vm = context.watch<HomeViewModel>();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: TextField(
            controller: _controller,
            decoration: InputDecoration(
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                suffixIcon: IconButton(
                    onPressed: () {
                      vm.fetch(_controller.text);
                    },
                    icon: const Icon(Icons.search))),
          ),
        ),
        vm.state.isLoading
            ? const CircularProgressIndicator()
            : Expanded(
                child: GridView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: vm.state.photos.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16),
                    itemBuilder: (context, index) {
                      return PhotoWidget(photo: vm.state.photos[index]);
                    }),
              )
      ],
    );
  }
}
