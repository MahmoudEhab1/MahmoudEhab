import QtQuick 2.0
import Felgo 3.0
import "../common"


SceneBase {
    id: letterSongsScene



////////////////////////////////BackgroundImage
    Image {
        id: background
        transformOrigin: Item.Center
        anchors.fill: parent.gameWindowAnchorItem
        source: "../scenes/assets/background6.jpg"
        fillMode: Image.PreserveAspectCrop

        Rectangle{      //transparent white30%
        anchors.fill: parent
        color: "#9DFFFFFF"
        }
//////////////////////////////////////////////lettersImage
        Image {
            id: letters
            anchors.centerIn: parent
            source: "../scenes/assets/letters.png"
            width: 400
            height: 315

        }

//////////////////////////////////////////////backButton
    }

    // back button to leave scene
     MenuButton {
       text: "Back"
       anchors.right: letterSongsScene.gameWindowAnchorItem.right
       anchors.rightMargin: 10
       anchors.top: letterSongsScene.gameWindowAnchorItem.top
       anchors.topMargin: 10
       onClicked: backButtonPressed()
     }
}
