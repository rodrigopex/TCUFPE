import bb.cascades 1.0

TabbedPane {
    showTabsOnActionBar: false
    Menu.definition: MenuDefinition {
        settingsAction: SettingsActionItem {
            onTriggered: {
                console.log("settings")
            }
        }
    }
    Tab {
        title: "Tab1"
        imageSource: "images/overflow.png"
        Tab1 {
        }
    }
    Tab {
        title: "Tab2"
        Tab2 {
        }
    }
    Tab {
        title: "Tab3"
        Page {
            Button {
                onClicked: {
                    var sheet = settingSheetFactory.createObject()
                    sheet.open()
                }
            }
            attachedObjects: [
                ComponentDefinition {
                    id: settingSheetFactory
                    source: "SettingsSheet.qml"
                }
            ]
        }
    }
    Tab {
        title: "Tab4"
        Tab4 {
        }
    }
    Tab {
        title: "Tab5"
        Page {
        }
    }
}
