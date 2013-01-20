import bb.cascades 1.0

Container {
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
    layout: DockLayout {
    }
    background: Color.create(ListItemData.hexColor)
    preferredHeight: 150
    Label {
        text: ListItemData.title
        textStyle.color: Color.create(ListItemData.titleColor)
    }
    Divider {
        verticalAlignment: VerticalAlignment.Bottom
    }
}
