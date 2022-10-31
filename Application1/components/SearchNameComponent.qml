import QtQuick 2.0

Item {
    id: container
    width: 400
    height: 20

    property string searchName: ""

    Text {
        id: nameToSearch
        font.pixelSize: 20
        text: "Search Name: "
    }

    Rectangle {
        id: background
        anchors.left: nameToSearch.right
        width: 350
        height: 30
        color: "white"
        border.color: "#278afc"
        border.width: 1
        radius: 5
    }

    TextInput {
        id: searchItem
        anchors.left: nameToSearch.right
        text: ""
        width: 350
        font.pixelSize: 20
        //cursorVisible: true
        onTextChanged: searchName = text
    }
}
