import bb.cascades 1.0

Sheet {
    id: settings
    Page {
        id: p
        titleBar: TitleBar {
            title: "Settings"
            dismissAction: ActionItem {
                title: "Cancel"
                onTriggered: {
                    settings.close()
                }
            }
        }
        function setPadding(comp, padding) {
            comp.topPadding = padding
            comp.leftPadding = padding
            comp.rightPadding = padding
        }
        Container {
            Container {
                id: cbCont
                onCreationCompleted: {
                    p.setPadding(cbCont, 15)
                }
                horizontalAlignment: HorizontalAlignment.Fill
                CheckBox {
                    text: "setup"
                }
            }
            Divider {
            }
            Container {
                id: nCont
                layout: StackLayout {
                    orientation: LayoutOrientation.LeftToRight
                }
                onCreationCompleted: {
                    p.setPadding(nCont, 15)
                }
                Container {
                    layout: DockLayout {
                    }
                    verticalAlignment: VerticalAlignment.Fill
                    layoutProperties: StackLayoutProperties {
                        spaceQuota: 50
                    }
                    Label {
                        text: "Name"
                        verticalAlignment: VerticalAlignment.Center
                        horizontalAlignment: HorizontalAlignment.Right
                    }
                }
                TextField {
                    id: nameTF
                    input {
                        submitKey: SubmitKey.Submit
                        onSubmitted: {
                            nameTF.text = _controller.toUpper(nameTF.text)
                        }
                    }
                    layoutProperties: StackLayoutProperties {
                        spaceQuota: 50
                    }
                }
            }
            Button {
                text: "Camera"
                onClicked: {
                    _controller.showCamera()
                }
            }
            ImageView {
                id: picture
                onCreationCompleted: {
                    _controller.newPicture.connect(picture.onNewPicture)
                }
                function onNewPicture(path) {
                    picture.imageSource = "file://" + path
                }
            }
        }
    }
}
