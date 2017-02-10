/* GCompris - Zone.qml
 *
 * Copyright (C) 2016 Divyam Madaan <divyam3897@gmail.com>
 *
 * Authors:
 *   Divyam Madaan <divyam3897@gmail.com>
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
import GCompris 1.0

import "../../core"
import "categorization.js" as Activity

Flow {
    id: zoneFlow
    width: parent.width/3
    height: parent.height
    property alias repeater: repeater
    property alias model: zoneModel

    ListModel {
        id: zoneModel
    }

    Repeater {
        id: repeater
        model: zoneModel
        Item {
            id: item
            width: middleScreen.width*0.32
            height: categoryBackground.height * 0.2
            opacity: 1
            Rectangle {
                id: wordBox
                color: "black"
                visible: type =="words" ? true : false
                width: middleScreen.width*0.28
                height: categoryBackground.height * 0.15
                z: 3
                radius: 10
                border.width: 2
                gradient: Gradient {
                    GradientStop { position: 0.0; color: "#000" }
                    GradientStop { position: 0.9; color: "#666" }
                    GradientStop { position: 1.0; color: "#AAA" }
                }
                GCText {
                    id: wordBoxText
                    text: name
                    anchors.fill: parent
                    anchors.bottom: parent.bottom
                    fontSizeMode: Text.Fit
                    wrapMode: Text.Wrap
                    z: 3
                    color: "white"
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }
                DragList {
                    id: wordDrag
                    anchors.fill: parent
                }
            }
            Image {
                id: image
                width: middleScreen.width*0.28
                height: categoryBackground.height * 0.15
                source: (type == "images") ? name : ''
                visible: type =="words" ? false : true
                DragList {
                    id: imageDrag
                    anchors.fill: parent
                }
            }
        }
    }
}

