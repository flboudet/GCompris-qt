/* GCompris
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
import QtQuick 2.0

QtObject {
    property string imagesPrefix: "qrc:/gcompris/src/activities/categorization/resource/images/alphabets/"
    property variant levels: [
        {
            "name": qsTr("Tenses"),
            "image": imagesPrefix + "alphabets.jpg",
            "content": [
                {
                    "instructions": qsTr("Place the PRESENT TENSE WORDS to the right and others to the left"),
                    "image": "Present Tense",
                    "maxNumberOfGood": 4,
                    "maxNumberOfBad": 3,
                    "prefix": "",
                    "good": ["I go","He plays","I study","We write"],
                    "bad": ["under","I played","we went"]
                },
                {
                    "instructions": qsTr("Place the PRESENT CONTINUOUS WORDS to the right and others to the left"),
                    "image": "Present Continuous Tense",
                    "maxNumberOfGood": 6,
                    "maxNumberOfBad": 6,
                    "prefix": "",
                    "good": ["I am going","He is playing","She is riding","I am loving","They are eating","He is sinking"],
                    "bad": ["among","I live","We see","He saw","miss","She draws"]
                },
                {
                    "instructions": qsTr("Place the PRESENT PERFECT WORDS to the right and others to the left"),
                    "image": "Present Perfect Tense",
                    "maxNumberOfGood": 6,
                    "maxNumberOfBad": 6,
                    "prefix": "",
                    "good": ["He has gone","She has eaten","He has done","I have eaten","He has shown","He has slept"],
                    "bad": ["I studying","between","He sits","stand","I am dreaming","above"]
                },
                {
                    "instructions": qsTr("Place the PAST TENSE WORDS to the right and others to the left"),
                    "image": "Past Tense",
                    "maxNumberOfGood": 6,
                    "maxNumberOfBad": 6,
                    "prefix": "",
                    "good": ["He went","I played","I did","He runs","I loved","She drank"],
                    "bad": ["under","I play","go","He loves","on","and"]
                },
                {
                    "instructions": qsTr("Place the PAST CONTINUOUS WORDS to the right and others to the left"),
                    "image": "Past Continuous Tense",
                    "maxNumberOfGood": 6,
                    "maxNumberOfBad": 6,
                    "prefix": "",
                    "good": ["We were going","I was playing","He was doing","He was running","I was drinking","I was eating"],
                    "bad": ["roam","fix","brought","washed","wash","sell"]
                }
            ]
        }
    ]
}
