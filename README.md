# TextFormField-Customization

<h1>TextFormField</h1>

<h4>CReate custom textformfiel to enter your detils</h4>




 EditTextField(
                                              readOnly: true,
                                              controller: email_controller,
                                              onChanged: (String? val) {
                                                setState(() {
                                                  _email = val;
                                                  awsUserBox.put(
                                                      AWS_EMAIl, _email);
                                                });
                                              },
                                              hintText: "Please enter email id",
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    const SnackBar(
                                                        content: Text(
                                                      'Please enter email id.',
                                                      style: TextStyle(
                                                          color: white,
                                                          fontSize:
                                                              TEXT_SIZE_15),
                                                    )),
                                                  );
                                                  return;
                                                } else if (!_allBackEnds
                                                    .isEmail(value)) {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    const SnackBar(
                                                        content: Text(
                                                      'Enter valid email id',
                                                      style: TextStyle(
                                                          color: white,
                                                          fontSize:
                                                              TEXT_SIZE_15),
                                                    )),
                                                  );
                                                  return;
                                                }

                                                return null;
                                              },
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                              textInputAction:
                                                  TextInputAction.next,
                                              visibility: true,
                                              etLeftMarginBox: etLEFT,
                                              etRightMarginBox: etRIGHT,
                                              etTopMarginBox: etTOP,
                                              etBottomMarginBox: etBOTTOM,
                                              etLeftMarginText: etLeftText,
                                              etRightMarginText: etRightText,
                                            )
