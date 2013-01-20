import bb.cascades 1.0

Container {
    property alias bt2Name : click2.text
    signal changeName
    layout: StackLayout {
        orientation: LayoutOrientation.LeftToRight
    }
    function onSlot(name) {
        click2.text = name
    }
    
    horizontalAlignment: HorizontalAlignment.Center
    Button {
        text: "Click"
        visible: true
        opacity: 1.0
        onClicked: {
            togg.checked = ! togg.checked
            console.log("clicked!!!")
            changeName()
        }
    }
    ToggleButton {
        id: togg
        verticalAlignment: VerticalAlignment.Center
    }
    Button {
        id: click2
        enabled: togg.checked
        text: "Click2"
        visible: true
        opacity: 1.0
    }
}
