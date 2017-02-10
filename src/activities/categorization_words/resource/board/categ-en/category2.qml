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
            "name": qsTr("Nouns"),
            "image": imagesPrefix + "alphabets.jpg",
            "content": [
                {
                    "instructions": qsTr("Place the PROPER NOUNS to the right and others to the left"),
                    "image": "Proper Nouns",
                    "maxNumberOfGood": 6,
                    "maxNumberOfBad": 6,
                    "prefix": "",
                    "good": ["James","California","Thames","Daniel","Christmas","Google"],
                    "bad": ["woman","state","and","under","run","beautiful"]
                },
                {
                    "instructions": qsTr("Place the COMMON NOUNS to the right and others to the left"),
                    "image": "Common Nouns",
                    "maxNumberOfGood": 6,
                    "maxNumberOfBad": 6,
                    "prefix": "",
                    "good": ["river","mountain","monument","man","countries","chair"],
                    "bad": ["Tim","play","between","he","good","fast"]
                },
                {
                    "instructions": qsTr("Place the COUNTABLE NOUNS to the right and others to the left"),
                    "image": "Countable Nouns",
                    "maxNumberOfGood": 6,
                    "maxNumberOfBad": 6,
                    "prefix": "",
                    "good": ["dog","animal","box","litre","bags","orange"],
                    "bad": ["water","slice","sugar","stand","Samuel","above"]
                },
                {
                    "instructions": qsTr("Place the UNCOUNTABLE NOUNS to the right and others to the left"),
                    "image": "Unocuntable nouns",
                    "maxNumberOfGood": 6,
                    "maxNumberOfBad": 6,
                    "prefix": "",
                    "good": ["air","water","tea","cheese","cake","hair"],
                    "bad": ["dive","they","shirt","shoes","pen","slow"]
                },
                {
                    "instructions": qsTr("Place the COLLECTIVE NOUNS to the right and others to the left"),
                    "image": "Collective nouns",
                    "maxNumberOfGood": 6,
                    "maxNumberOfBad": 6,
                    "prefix": "",
                    "good": ["class","herd","jury","team","council","family"],
                    "bad": ["kitten","apple","lock","shine","go","buy"]
                },
                {
                    "instructions": qsTr("Place the ABSTRACT NOUNS to the right and others to the left"),
                    "image": "Abstract nouns",
                    "maxNumberOfGood": 6,
                    "maxNumberOfBad": 6,
                    "prefix": "",
                    "good": ["love","hate","pride","peace","anger","dream"],
                    "bad": ["under","milk","juice","ice-cream","books","meal"]
                },
                {
                    "instructions": qsTr("Place the PROPER NOUNS to the right and COMMON NOUNS to the left"),
                    "image": "Proper Nouns",
                    "maxNumberOfGood": 5,
                    "maxNumberOfBad": 4,
                    "prefix": "",
                    "good": ["mango","Louis","Taj Mahal","Sun","Earth"],
                    "bad": ["doctor","student","institution","restraunt"]
                },
                {
                    "instructions": qsTr("Place the COUNTABLE NOUNS to the right and UNCOUNTABLE NOUNS to the left"),
                    "image": "Proper Nouns",
                    "maxNumberOfGood": 5,
                    "maxNumberOfBad": 5,
                    "prefix": "",
                    "good": ["pen","watch","bottle","glass","key"],
                    "bad": ["stars","flour","rice","milk"]
                },
                {
                    "instructions": qsTr("Place the PROPER NOUNS to the right and COMMON NOUNS to the left"),
                    "image": "Proper Nouns",
                    "maxNumberOfGood": 3,
                    "maxNumberOfBad": 3,
                    "prefix": "",
                    "good": ["Android","Pacific Ocean","Nile river"],
                    "bad": ["teacher","university","soldier"]
                },
                {
                    "instructions": qsTr("Place the COUNTABLE NOUNS to the right and UNCOUNTABLE NOUNS to the left"),
                    "image": "Proper Nouns",
                    "maxNumberOfGood": 2,
                    "maxNumberOfBad": 4,
                    "prefix": "",
                    "good": ["bus","hamburger"],
                    "bad": ["soil","leaves","butter"]
                },
            ]
        }
    ]
}
