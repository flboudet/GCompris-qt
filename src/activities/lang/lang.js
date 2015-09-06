/* GCompris - lang.js
*
* Copyright (C) Siddhesh suthar <siddhesh.it@gmail.com> (Qt Quick port)
*
* Authors:
*   Pascal Georges (pascal.georges1@free.fr) (GTK+ version)
*   Holger Kaelberer <holger.k@elberer.de> (Qt Quick port of imageid)
*   Siddhesh suthar <siddhesh.it@gmail.com> (Qt Quick port)
*   Bruno Coudoin <bruno.coudoin@gcompris.net> (Integration Lang dataset)
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
*/.pragma library
.import QtQuick 2.0 as Quick
.import GCompris 1.0 as GCompris
.import "qrc:/gcompris/src/core/core.js" as Core
.import "qrc:/gcompris/src/activities/lang/lang_api.js" as Lang

var lessonIndex = 0;
var currentSubLevel = 0;
var maxLevel;
var maxSubLevel;
var items;
var baseUrl = "qrc:/gcompris/src/activities/lang/resource/";
var dataset
var lessons
var maxWordInLesson = 3

function init(items_) {
    items = items_
    maxLevel = 0
    maxSubLevel = 0
    lessonIndex = 0
    currentSubLevel = 0
}

function start() {
    lessonIndex = 0;
    currentSubLevel = 0;
    items.imageReview.stop()

    var locale = GCompris.ApplicationInfo.getVoicesLocale(items.locale)
    dataset = Lang.load(items.parser, baseUrl, "words.json",
                        "content-"+ locale +".json")

    // If dataset is empty, we try to load from short locale
    // and if not present again, we switch to default one
    var localeUnderscoreIndex = locale.indexOf('_')
    if(!dataset) {
        var localeShort;
        // We will first look again for locale xx (without _XX if exist)
        if(localeUnderscoreIndex > 0) {
            localeShort = locale.substring(0, localeUnderscoreIndex)
        } else {
            localeShort = locale;
        }
        dataset = Lang.load(items.parser, baseUrl, "words.json",
                            "content-"+localeShort+ ".json")
    }

    // If still dataset is empty then fallback to english
    if(!dataset) {
        // English fallback
        items.background.englishFallback = true
        dataset = Lang.load(items.parser, baseUrl, "words.json", "content-en.json")
    } else {
        items.background.englishFallback = false
    }

    // We have to keep it because we can't access content from the model
    lessons = Lang.getAllLessons(dataset)
    addPropertiesToLessons(lessons)
    maxLevel = lessons.length

    items.menuModel.append(lessons)
    if(items.dialogActivityConfig.dataToSave[items.locale]) {
        savedPropertiesToLessons(items.dialogActivityConfig.dataToSave)
    }
    sortByFavorites();

    items.menuScreen.start()
}

// Insert our specific properties in the lessons
function addPropertiesToLessons(lessons) {
    for (var i in lessons) {
        lessons[i]['wordCount'] = lessons[i].content.length
        lessons[i]['image'] = lessons[i].content[0].image
        lessons[i]['progress'] = 0
        lessons[i]['favorite'] = false
        lessons[i]['lessonIndex'] = i
    }
}

// Return a new json that contains all the properties we have to save
function lessonsToSavedProperties(dataToSave) {
    var locale = GCompris.ApplicationInfo.getVoicesLocale(items.locale)
    var props = {}
    for(var i = 0; i < items.menuModel.count; i++) {
        var lesson = items.menuModel.get(i)
        props[lesson.name] = {
            'favorite': lesson['favorite'],
            'progress': lesson['progress']
        }
    }
    dataToSave[locale] = props
    return dataToSave
}

// Update the lessons based on a previous saving
function savedPropertiesToLessons(dataToSave) {
    var locale = GCompris.ApplicationInfo.getVoicesLocale(items.locale)
    var props = dataToSave[GCompris.ApplicationInfo.getVoicesLocale(items.locale)]
    for(var i = 0; i < items.menuModel.count; i++) {
        var lesson = items.menuModel.get(i)
        if(props[lesson.name]) {
            lesson['favorite'] = props[lesson.name].favorite
            lesson['progress'] = props[lesson.name].progress
        }
    }
}

function stop() {
}

function initLevel(lessonIndex_) {
    lessonIndex = lessonIndex_

    var flatWordList = Lang.getLessonWords(dataset, lessons[lessonIndex]);
    // We have to split the works in chunks of maxWordInLesson
    items.wordList = []
    for (var i = 0; i < flatWordList.length; i++) {
        items.wordList[i] = Core.shuffle(flatWordList.splice(0, maxWordInLesson));
    }
    // TODO complete the last set to have maxWordInLesson items

    maxSubLevel = items.wordList.length;

    items.menuScreen.stop()
    items.imageReview.category = lessons[lessonIndex].name
    items.imageReview.initLevel(Math.floor(items.menuModel.get(lessonIndex)['progress'] / maxWordInLesson))
}

function launchMenuScreen() {
    items.menuScreen.start()
    items.imageReview.stop()
}

function sortByFavorites() {
    for(var i = 0; i < items.menuModel.count; i++) {
        if(items.menuModel.get(i)['favorite'])
            items.menuModel.move(i, 0, 1);
    }
}

function markProgress() {
    // We count progress as a number or image learnt from the lesson start
    items.menuModel.get(lessonIndex)['progress'] += maxWordInLesson
}
