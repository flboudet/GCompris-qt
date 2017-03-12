/* GCompris - PlayRhytm.qml
 *
 * Copyright (C) 2017 Utkarsh Tiwari <iamutkarshtiwari@gmail.com>
 *
 * Authors:
 *   Beth Hadley <bethmhadley@gmail.com> (GTK+ version)
 *   Utkarsh Tiwari <iamutkarshtiwari@gmail.com> (Qt Quick port)
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation; either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with this program; if not, see <http://www.gnu.org/licenses/>.
 */
import QtQuick 2.1
import QtGraphicalEffects 1.0
import QtMultimedia 5.0
import GCompris 1.0

import "../../core"
import "play_rhythm.js" as Activity
import "qrc:/gcompris/src/core/core.js" as Core

ActivityBase {
    id: activity

    onStart: focus = true
    onStop: {}

    pageComponent: Image {
        id: background
        anchors.fill: parent
        source: Activity.url + "background/1.jpg"
        width: activity.width
        height: activity.height

        signal start
        signal stop

        Component.onCompleted: {
            activity.start.connect(start)
            activity.stop.connect(stop)
        }

        // Add here the QML items you need to access in javascript
        QtObject {
            id: items
            property Item main: activity.main
            property alias background: background
            property alias bar: bar
            property alias bonus: bonus
            property GCAudio audioEffects: activity.audioEffects
        }

        onStart: { Activity.start(items) }
        onStop: { Activity.stop() }

        Image {
            id: metronome
            source: Activity.url + "metronome.svg"
            width: trebleClef.width * 1.2
            height: trebleClef.height
            anchors {
                left: parent.left
                verticalCenter: parent.verticalCenter
            }
            MouseArea {
                id: metronomeArea
                enabled: true
                hoverEnabled: true
                anchors.fill: parent
                onClicked: {
                    if (metronomeSound.playbackState == Audio.PlayingState) {
                        metronomeSound.stop()
                    } else {
                        metronomeSound.play()
                    }
                }
            }
            states: State {
                name: "metronomeHover"
                when: metronomeArea.containsMouse
                PropertyChanges {
                    target: metronome
                    scale: 1.1
                }
            }
            Audio {
                id: metronomeSound
                source: Activity.url +"sound/click.wav"
                loops: Audio.Infinite
            }
        }


        Image {
            id: drum
            anchors.horizontalCenter: background.horizontalCenter
            y: background.height / 16
            source: Activity.url + 'drumhead.svg'
            width: background.width / 5
            height: background.height / 8

            MouseArea {
                id: drumArea
                anchors.fill: drum
                enabled: true
                hoverEnabled: true
                onClicked: {
                    items.audioEffects.play(Activity.url + "sound/click.wav");
                    if (!animateBar.running) {
                        animateBar.start();
                    }
                }
            }
            states: State {
                name: "drumHover"
                when: drumArea.containsMouse
                PropertyChanges {
                    target: drum
                    scale: 1.1
                }
            }
        }

        // Label above the notes
        Rectangle {
            id: label
            color: 'white'
            anchors {
                top: drum.bottom
                horizontalCenter: background.horizontalCenter
                topMargin: background.height * 0.05
            }
            height: background.height / 14
            width: background.width / 2
            border {
                width : background.height * 0.01
                color: 'black'
            }
            radius: height * 0.1

            GCText {
                text: qsTr("Beat Count: ")
                color: 'black'
                fontSize: tinySize
                font.weight: Font.DemiBold
                anchors {
                    left: parent.left
                    leftMargin: parent.width * 0.02
                    verticalCenter: parent.verticalCenter
                }
            }
        }


        Item {
            id: notesArea
            anchors.horizontalCenter: background.horizontalCenter
            width: background.width / 2
            height: background.height * 0.28
            y: background.height / 3

            // Horizontal lines
            Repeater {
                model: 5
                Rectangle {
                    id: lines
                    anchors.horizontalCenter: parent.horizontalCenter
                    y: index * (background.height / 18)
                    visible: true
                    color: 'black'
                    width: background.width / 2
                    height: background.height * 0.01
                }
            }
            Image {
                id: trebleClef
                source: Activity.url + 'trebleClef.svg'
                height: background.height * 0.28
                width: background.width * 0.08
                x: 0
                anchors {
                    top: parent.top
                }
            }
            // Vertical bars at the right end
            Repeater {
                id: verticalBars
                model: 2
                Rectangle {
                    width: background.width * (0.01 - (index * 0.004))
                    height: background.height * 0.23
                    x: parent.width - width - ((background.width / 2) * 0.05 * index)
                    anchors.top: parent.top
                    color: 'black'
                    visible: true
                }
            }
            // The movable bar
            Rectangle {
                id: movingBar
                anchors.top: parent.top
                x: trebleClef.width * 1.1
                width: background.width * 0.006
                height: background.height * 0.23
                color: 'black'
                visible: true

                onXChanged: {
                    if (movingBar.x >= verticalBars.itemAt(1).x) {
                        animateBar.stop();
                    }
                }
                PropertyAnimation {
                    id: animateBar
                    target: movingBar
                    properties: "x"
                    from: trebleClef.width * 1.1
                    to: notesArea.width
                    duration: 3000
                    easing.type: Easing.Linear
                    loops: 1
                }

            }

            // Notes setup
            Repeater {
                id: notes
                model: Activity.noteCount
                Image {
                    id: note
                    height: background.height * 0.17
                    width: background.width * 0.04
                    y: parent.height / 2.5
                    x: (parent.width * (1 / 3)) + ((parent.width / 6) * index)
                    source: Activity.url + "halfNote.svg"
                    ColorOverlay {
                        anchors.fill: note
                        source: note
                        color: "#ff0000"
                    }

                    // Highlight Image
                    Image {
                        id: highlight
                        z: +1
                        source: Activity.url + Activity.highlighter[0] + ".svg"
                        width: note.width
                        height: note.height * 0.4
                        anchors.bottom: note.bottom
                        visible: movingBar.x > note.x ? true : false
                    }
                }
            }
        }

        DialogHelp {
            id: dialogHelp
            onClose: home()
        }

        Bar {
            id: bar
            content: BarEnumContent { value: help | home | level }
            onHelpClicked: {
                displayDialog(dialogHelp)
            }
            onPreviousLevelClicked: Activity.previousLevel()
            onNextLevelClicked: Activity.nextLevel()
            onHomeClicked: activity.home()
        }

        Bonus {
            id: bonus
            Component.onCompleted: win.connect(Activity.nextLevel)
        }
    }

}
