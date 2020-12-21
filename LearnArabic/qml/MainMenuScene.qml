import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12
import QtQuick 2.11
import "../qml/common"


SceneBase {
    id: mainMenuScene

    signal paintingPressed

    signal letterSongsPressed

    signal learnWordsPressed

    signal letterForPicturePressed

////////////////////////Background
    Image {
        id: background
        transformOrigin: Item.Center
        anchors.fill: parent.gameWindowAnchorItem
        source: "../assets/background6.jpg"
        fillMode: Image.PreserveAspectCrop

        Rectangle{      //transparent white30%
        anchors.fill: parent
        color: "#4DFFFFFF"
        }
    }
///////////////sun
    Image {
        id: sun
        width: 100
        height: 100
        source: "../assets/sun.png"
        x: 400
    }
    NumberAnimation {
            running: true             // Start automatically
            loops: Animation.Infinite // Repeat endless (unless stopped)
            target: sun             // The animated item id
            property: "rotation"      // The animated property
            from: 0                   // Start value. If not defined, the current value is used
            to: 360                   // End value
            duration: 3000            // Duration of the animation

          }
////////////////////////////WelcomeLogo
    Image {
        id: welcome
        width: 300
        height: 80
        source: "../assets/welcome.png"
        x: 10
        y: 10
    }
    NumberAnimation {
            running: true             // Start automatically
            //loops: Animation.alwaysRunToEnd // Repeat endless (unless stopped)
            target: welcome             // The animated item id
            property: "rotation"      // The animated property
            from: 0                   // Start value. If not defined, the current value is used
            to: 360                   // End value
            duration: 500            // Duration of the animation

          }
/////////////////////////////////////Painting
    Rectangle{
        id: rectangle
        width: 100
        height: 100
        color: "transparent"
        x: 400
        y: 170

        MouseArea {
             id: mouseArea
             anchors.fill: parent
             hoverEnabled: true
             onClicked: paintingPressed()

           }

        Image {
            id: painting
            anchors.fill: parent
            source: "../assets/painting.png"
        }

        Text{
            id:paintingT
            x: 0
            y: 106
            text: "Write & Paint"
            font.bold: true
            font.italic: true
        }

        SequentialAnimation {
            SequentialAnimation {
                    ScaleAnimator {
                        target: rectangle
                        from: 0.5
                        to: 1
                        easing.type: Easing.OutBounce;
                        duration: 1500
                }
            }
            PauseAnimation { duration: 500 }
            running: true
            //loops: Animation.alwaysRunToEnd
        }
        ColorAnimation {
                 id: animation
                 running: true
                 target: paintingT         // The animated item id
                 loops: Animation.Infinite
                 property: "color"         // The animated property
                 from: "black"
                 to: "red"             // Beautiful blue color
                 duration: 2000            // Duration of the animation

               }
    }
/////////////////////////////////////singing
    Rectangle{
        id: rectangle2
        width: 100
        height: 100
        color: "transparent"
        x: 270
        y: 140

        MouseArea {
             id: mouseArea2
             anchors.fill: parent
             hoverEnabled: true
             onClicked: letterSongsPressed()

           }

        Image {
            id: singing
            anchors.fill: parent
            source: "../assets/sing.png"
        }

        Text{
            id:singingT
            x: 0
            y: 106
            text: "Letters songs"
            font.bold: true
            font.italic: true
        }

        SequentialAnimation {
            SequentialAnimation {
                    ScaleAnimator {
                        target: rectangle2
                        from: 0.5
                        to: 1
                        easing.type: Easing.OutBounce;
                        duration: 1500
                }
            }
            PauseAnimation { duration: 500 }
            running: true
            //loops: Animation.alwaysRunToEnd
        }
        ColorAnimation {
                 id: animation2
                 running: true
                 target: singingT         // The animated item id
                 loops: Animation.Infinite
                 property: "color"         // The animated property
                 from: "black"
                 to: "red"             // Beautiful blue color
                 duration: 2000            // Duration of the animation

               }
    }
/////////////////////////////learnwords
    Rectangle{
        id: rectangle3
        width: 100
        height: 100
        color: "transparent"
        x: 150
        y: 180

        MouseArea {
             id: mouseArea3
             anchors.fill: parent
             hoverEnabled: true
             onClicked: learnWordsPressed()

           }

        Image {
            id: learnWords
            anchors.fill: parent
            source: "../assets/learnWords.png"
        }

        Text{
            id:learnWordsT
            x: 0
            y: 106
            text: "Learn Words"
            font.bold: true
            font.italic: true
        }

        SequentialAnimation {
            SequentialAnimation {
                    ScaleAnimator {
                        target: rectangle3
                        from: 0.5
                        to: 1
                        easing.type: Easing.OutBounce;
                        duration: 1500
                }
            }
            PauseAnimation { duration: 500 }
            running: true
            //loops: Animation.alwaysRunToEnd
        }
        ColorAnimation {
                 id: animation3
                 running: true
                 target: learnWordsT         // The animated item id
                 loops: Animation.Infinite
                 property: "color"         // The animated property
                 from: "black"
                 to: "red"             // Beautiful blue color
                 duration: 2000            // Duration of the animation

               }
    }
///////////////////////////////////////////letterforpicture
    Rectangle{
        id: rectangle4
        width: 100
        height: 100
        color: "transparent"
        x: 0
        y: 130

        MouseArea {
             id: mouseArea4
             anchors.fill: parent
             hoverEnabled: true
             onClicked: letterForPicturePressed()

           }

        Image {
            id: letterForPicture
            anchors.fill: parent
            source: "../assets/letterForPicture.png"
        }

        Text{
            id:letterForPictureT
            x: 0
            y: 106
            text: "Letter for picture"
            font.bold: true
            font.italic: true
        }

        SequentialAnimation {
            SequentialAnimation {
                    ScaleAnimator {
                        target: rectangle4
                        from: 0.5
                        to: 1
                        easing.type: Easing.OutBounce;
                        duration: 1500
                }
            }
            PauseAnimation { duration: 500 }
            running: true
            //loops: Animation.alwaysRunToEnd
        }
        ColorAnimation {
                 id: animation4
                 running: true
                 target: letterForPictureT         // The animated item id
                 loops: Animation.Infinite
                 property: "color"         // The animated property
                 from: "black"
                 to: "red"             // Beautiful blue color
                 duration: 2000            // Duration of the animation

               }
    }
//////////////////////////////////////



}
