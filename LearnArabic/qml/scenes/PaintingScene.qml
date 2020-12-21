import QtQuick 2.0
import Felgo 3.0
import "../common"

SceneBase {
    id:paintingScene

    Text {
        id: textt
        text: qsTr("Hello")
    }

    Image {
        id: background
        transformOrigin: Item.Center
        anchors.fill: parent.gameWindowAnchorItem
        source: "../scenes/assets/background6.jpg"
        fillMode: Image.PreserveAspectCrop

        Rectangle{      //transparent white30%
        anchors.fill: parent
        color: "#4DFFFFFF"
        }
    }

    // back button to leave scene
     MenuButton {
       text: "Back"
       anchors.right: paintingScene.gameWindowAnchorItem.right
       anchors.rightMargin: 10
       anchors.top: paintingScene.gameWindowAnchorItem.top
       anchors.topMargin: 10
       onClicked: backButtonPressed()
     }
}
