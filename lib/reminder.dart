import 'package:flutter/material.dart';

class ReminderPage extends StatelessWidget {
  const ReminderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Your test date'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Set the day of your theory test',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildDateButton('29th'),
                _buildDateButton('January'),
                _buildDateButton('2024'),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'Practise reminders',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Turn on practise reminders'),
                Switch(value: false, onChanged: (value) {}),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Set the time of day you want to be reminded',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildTimeButton('8'),
                _buildTimeButton('0'),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'How often you would like to a reminder ( Days )',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                minimumSize: const Size(double.infinity, 50),
                side: const BorderSide(color: Colors.black),
              ),
              onPressed: () {},
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDateButton(String text) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        minimumSize: const Size(80, 40),
      ),
      onPressed: () {},
      child: Text(text),
    );
  }

  Widget _buildTimeButton(String text) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black, // replaces 'primary'
        foregroundColor: Colors.white, // replaces 'onPrimary'
        minimumSize: const Size(60, 40),
      ),
      onPressed: () {},
      child: Text(text),
    );
  }

}