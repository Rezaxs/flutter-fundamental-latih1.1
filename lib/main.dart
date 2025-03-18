import 'package:flutter/material.dart';
import 'basic_widgets/scaffold_widget.dart';
import 'basic_widgets/dialog_widget.dart';
import 'basic_widgets/input_selection_widget.dart';
import 'basic_widgets/date_time_picker.dart';
import 'basic_widgets/floating_action_button.dart'; 
import 'basic_widgets/image_widget.dart';
import 'basic_widgets/text_widget.dart';
import 'basic_widgets/loading_cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Widgets Demo")),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(16),
          children: [
            _buildNavigationButton(
              context, 
              "Scaffold Widget", 
              const ScaffoldWidget(),
              icon: Icons.dashboard,
            ),
            _buildNavigationButton(
              context, 
              "Dialog Widget", 
              const DialogWidget(),
              icon: Icons.chat_bubble_outline,
            ),
            _buildNavigationButton(
              context, 
              "Input & Selection Widget", 
              const InputSelectionWidget(),
              icon: Icons.edit_note,
            ),
            _buildNavigationButton(
              context, 
              "Date Picker Widget", 
              const DateTimePickerWidget(),
              icon: Icons.calendar_today,
            ),
            _buildNavigationButton(
              context, 
              "Floating Action Button", 
              FloatingActionButtonExample(),
              icon: Icons.thumb_up,
            ),
            _buildNavigationButton(
              context, 
              "Image Widget", 
              const MyImageWidget(),
              icon: Icons.image,
            ),
            _buildNavigationButton(
              context, 
              "Loading Cupertino", 
              const LoadingCupertino(),
              icon: Icons.hourglass_top,
            ),
            _buildNavigationButton(
              context, 
              "Text Widget", 
              const MyTextWidget(),
              icon: Icons.text_fields,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavigationButton(
    BuildContext context,
    String title,
    Widget destination, {
    required IconData icon,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton.icon(
        icon: Icon(icon),
        label: Text(title),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          textStyle: const TextStyle(fontSize: 16),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
        },
      ),
    );
  }
}
