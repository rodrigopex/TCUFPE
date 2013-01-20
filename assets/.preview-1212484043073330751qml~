import bb.cascades 1.0

Container {
    property bool show: true
    id: stage
    visible: show
    layout: DockLayout {
    }
    background: Color.create(0, 0, 0, 0.3)
    Container {
        horizontalAlignment: HorizontalAlignment.Center
        verticalAlignment: VerticalAlignment.Center
        ActivityIndicator {
            running: show
            preferredWidth: 200
        }
        Label {
            text: "Loading..."
            textStyle {
                color: Color.create("#fafafa")
                fontWeight: FontWeight.Bold
            }
        }
    }
}
