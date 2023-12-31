import 'package:flutter/material.dart';

import 'my_colors.dart';

class OtpForm extends StatelessWidget {
  OtpForm({
    super.key,
    required this.isLightTheme,
    required this.toggleTheme,
  });

  final bool isLightTheme;
  final void Function() toggleTheme;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final MyColors myColors = Theme.of(context).extension<MyColors>()!;

    return SafeArea(
      child: Scaffold(
        backgroundColor: myColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: myColors.appbarColor,
          leading: IconButton(
            onPressed: () {
              _formKey.currentState?.reset();
            },
            icon: const Icon(Icons.arrow_back),
          ),
          actions: [
            IconButton(
              onPressed: () {
                toggleTheme();
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  FocusScope.of(context).nextFocus();
                });
              },
              icon: Icon(isLightTheme ? Icons.nightlight : Icons.sunny),
            ),
          ],
        ),
        body: Column(children: [
          const SizedBox(
            height: 140,
          ),
          Text(
            'Enter Your Code',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: Form(
                key: _formKey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 60,
                      height: 100,
                      child: Center(
                        child: TextFormField(
                          autofocus: true,
                          keyboardAppearance: isLightTheme ? Brightness.light : Brightness.dark,
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onTapOutside: (_) {
                            FocusScope.of(context).unfocus();
                          },
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            counterText: '',
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.zero,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      height: 80,
                      child: Center(
                        child: TextFormField(
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onTapOutside: (_) {
                            FocusScope.of(context).unfocus();
                          },
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            counterText: '',
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.zero,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      height: 80,
                      child: Center(
                        child: TextFormField(
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onTapOutside: (_) {
                            FocusScope.of(context).unfocus();
                          },
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            counterText: '',
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.zero,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      height: 80,
                      child: Center(
                        child: TextFormField(
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              FocusScope.of(context).unfocus();
                            }
                          },
                          onTapOutside: (_) {
                            FocusScope.of(context).unfocus();
                          },
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            counterText: '',
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.zero,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: [
              Flexible(
                fit: FlexFit.tight,
                child: FilledButton.tonal(
                  onPressed: () {
                    _formKey.currentState?.reset();
                  },
                  style: FilledButton.styleFrom(
                      backgroundColor: myColors.resendColor),
                  child: const Text('Resend'),
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                child: FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
                      backgroundColor: myColors.confirmColor),
                  child: const Text('Confirm'),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
