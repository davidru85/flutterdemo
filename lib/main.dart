import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/app_widget.dart';
import 'presentation/bloc_example_bloc.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BlocExampleBloc()),
      ],
      child: AppWidget(),
    ),
  );
}
