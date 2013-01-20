import bb.cascades 1.0

NavigationPane {
    id: nav
    Page {
        Container {
            layout: DockLayout {
            }
            Button {
                text: "Push"
                horizontalAlignment: HorizontalAlignment.Center
                verticalAlignment: VerticalAlignment.Center
                onClicked: {
                    var newPage = newPageFactory.createObject()
                    nav.push(newPage)
                    console.log("push!!!")
                }
            }
        }
        attachedObjects: [
            ComponentDefinition {
                id: newPageFactory
                Page {
                    Container {
                        Label {
                            text: "Hello push!"
                        }
                        Button {
                            onClicked: {
                                var newPage = newPageFactory.createObject()
                                nav.push(newPage)
                            }
                        }
                    }
                }
            }
        ]
    }
}
