import bb.cascades 1.0

Page {
    titleBar: TitleBar {
        title: "List example"
    }
    Container {
        ListView {
            id: list
            dataModel: XmlDataModel {
                source: "models/palette.xml"
            }
            onTriggered: {
                var item = dataModel.data(indexPath)
                console.log(item.title)
            }
            listItemComponents: [
                ListItemComponent {
                    type: "category"
                    Header {
                        title: ListItemData.title
                    }
                },
                ListItemComponent {
                    type: "color"
                    Container {
                        id: cont
                        preferredHeight: 150
                        background: Color.create(ListItemData.hexColor)
                        layout: DockLayout {
                        }
                        contextActions: [
                            ActionSet {
                                actions: [
                                    ActionItem {
                                        title: "Test"
                                    },
                                    ActionItem {
                                        title: "Test2"
                                    }
                                ]
                            }
                        ]
                        ListItem.onActivationChanged: {
                            if (active) {
                                cont.background = Color.create("#0098f0")
                            } else {
                                cont.background = Color.create(ListItemData.hexColor)
                            }
                        }
                        Label {
                            text: ListItemData.title
                            textStyle.color: Color.create(ListItemData.titleColor)
                        }
                        Divider {
                            verticalAlignment: VerticalAlignment.Bottom
                        }
                    }
                }
            ]
        }
    }
}
