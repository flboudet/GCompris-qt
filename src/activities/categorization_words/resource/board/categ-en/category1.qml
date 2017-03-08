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
            "categoryLesson": qsTr("Hello"),
            "content": [
                {
                    "instructions": qsTr("Place the SIMPLE PRESENT TENSE to the right and others to the left"),
                    "image": "Present Tense",
                    "maxNumberOfGood": 5,
                    "maxNumberOfBad": 7,
                    "prefix": "",
                    "good": ["I wake up.","We play basketball.","The cinema closes at 7pm.","We take a taxi to work.","He gets up early on Mondays."],
                    "bad": ["He woke up.","I am going.","George was studying.","They went to the party","I am  not playing","We did our homework.","He is learning French."]
                }, 
                {
                    "instructions": qsTr("Place the SIMPLE PRESENT TENSE to the right and others to the left"),
                    "image": "Present Tense",
                    "maxNumberOfGood": 5,
                    "maxNumberOfBad": 4,
                    "prefix": "",
                    "good": ["I like pizza.","When do you wake up?","She lives in India.","I don't believe in witches.","We go for swimming everyday."],
                    "bad": ["She bought a new dress.","We went to the church.","Jim completed my work.","It is raining."]
                },  
                {
                    "instructions": qsTr("Place the SIMPLE PRESENT TENSE to the right and others to the left"),
                    "image": "Present Tense",
                    "maxNumberOfGood": 3,
                    "maxNumberOfBad": 3,
                    "prefix": "",
                    "good": ["I drink milk daily.","Sun rises in the east.","I go for walk every morning."],
                    "bad": ["We won the match.","I am listening music.","We cooked the meal"]
                },
                {
                    "instructions": qsTr("Place the PRESENT CONTINUOUS WORDS to the right and others to the left"),
                    "image": "Present Continuous Tense",
                    "maxNumberOfGood": 6,
                    "maxNumberOfBad": 6,
                    "prefix": "",
                    "good": ["I am going","He is playing","She is riding","I am loving","They are eating","He is sinking"],
                    "bad": ["I went for a walk.","We play football.","She saw him.","Roger was busy.","Tim was the winner.","We ate the meal."]
                },
                {
                    "instructions": qsTr("Place the PRESENT CONTINUOUS WORDS to the right and others to the left"),
                    "image": "Present Continuous Tense",
                    "maxNumberOfGood": 5,
                    "maxNumberOfBad": 4,
                    "prefix": "",
                    "good": ["I am going to the market.","It is raining.","They are studying.","We are playing for 2 hours.","I am leaving work"],
                    "bad": ["I have lost my keys.","She went shopping","I will help you.","This is my cat."]
                },
                {
                    "instructions": qsTr("Place the PRESENT CONTINUOUS WORDS to the right and others to the left"),
                    "image": "Present Continuous Tense",
                    "maxNumberOfGood": 3,
                    "maxNumberOfBad": 3,
                    "prefix": "",
                    "good": ["They are sleeping","He is always laughing.","What are you doing?"],
                    "bad": ["He had been playing since morning.","It was a good day.","I love to read."]
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
                    "instructions": qsTr("Place the PRESENT PERFECT WORDS to the right and others to the left"),
                    "image": "Present Perfect Tense",
                    "maxNumberOfGood": 6,
                    "maxNumberOfBad": 6,
                    "prefix": "",
                    "good": ["He has gone","She has eaten","He has done","I have eaten","He has shown","He has slept"],
                    "bad": ["I studying","between","He sits","stand","I am dreaming","above"]
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
