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
            "name": qsTr("Pronouns"),
            "image": imagesPrefix + "alphabets.jpg",
            "content": [
                {
                    "instructions": qsTr("Place the PERSONAL PRONOUNS to the right and others to the left"),
                    "image": "Personal Pronouns",
                    "maxNumberOfGood": 6,
                    "maxNumberOfBad": 6,
                    "prefix": "",
                    "good": ["I study maths.","We play football","Its raining.","They speak English.","She is eating.","You were sleeping."],
                    "bad": ["Who was reading?","Daniel was playing.","George went outside.","Do it yourself.","The blue car.","Some milk is left."]
                },
                {
                    "instructions": qsTr("Place the PERSONAL PRONOUNS to the right and others to the left"),
                    "image": "Personal Pronouns",
                    "maxNumberOfGood": 5,
                    "maxNumberOfBad": 4,
                    "prefix": "",
                    "good": ["It's getting late.","He loves football","I am writing.","We were laughing.","They didn't play."],
                    "bad": ["Whose pen is it?","John went.","The door was open.","Who went to school yesterday?"]
                },
                {
                    "instructions": qsTr("Place the PERSONAL PRONOUNS to the right and others to the left"),
                    "image": "Personal Pronouns",
                    "maxNumberOfGood": 3,
                    "maxNumberOfBad": 3,
                    "prefix": "",
                    "good": ["It's snowing","Do you need help?","Have you seem him today?"],
                    "bad": ["When is the meeting?","His work was complete.","Where's the pencil"]
                },
                {
                    "instructions": qsTr("Place the REFLEXIVE PRONOUNS to the right and others to the left"),
                    "image": "Reflexive Proouns",
                    "maxNumberOfGood": 6,
                    "maxNumberOfBad": 6,
                    "prefix": "",
                    "good": ["She did the work herself","Can you talk to him yourself?","The door opened itself","I made the food myself","You should do your work yourself","I saw myself in the mirror."],
                    "bad": ["Who cooked the food?","They were laughing.","John played.","I read a book.","She bought fruits.","A wondeful old clock."]
                },
                {
                    "instructions": qsTr("Place the REFLEXIVE PRONOUNS to the right and others to the left"),
                    "image": "Reflexive Pronouns",
                    "maxNumberOfGood": 5,
                    "maxNumberOfBad": 4,
                    "prefix": "",
                    "good": ["We painted the wall ourselves","Do your work yourself.","The door opened itself.","She saved herself.","They looked after themselves."],
                    "bad": ["I have some friends.","Would you like some bread.","She ate all apples.","He did his job."]
                },
                {
                    "instructions": qsTr("Place the REFLEXIVE PRONOUNS to the right and others to the left"),
                    "image": "Reflexive Pronouns",
                    "maxNumberOfGood": 3,
                    "maxNumberOfBad": 3,
                    "prefix": "",
                    "good": ["We blamed ourselves.","Did you hurt herself.","They looked after themselves."],
                    "bad": ["He writes properly.","He didn't drink milk.","We studied maths."]
                },
                {
                    "instructions": qsTr("Place the POSSESIVE PRONOUNS to the right and others to the left"),
                    "image": "Possesive Pronouns",
                    "maxNumberOfGood": 6,
                    "maxNumberOfBad": 6,
                    "prefix": "",
                    "good": ["This is her birthday.","Its your ball.","This is my cat.","She bought her a dress.","He lost his watch.","The black dress is mine."],
                    "bad": ["He writes properly."]
                },
                {
                    "instructions": qsTr("Place the POSSESIVE PRONOUNS to the right and others to the left"),
                    "image": "Possesive Pronouns",
                    "maxNumberOfGood": 5,
                    "maxNumberOfBad": 4,
                    "prefix": "",
                    "good": ["The bag is theirs.","I liked his singing.","Susan is a friend of mine.","His name was Alex.","Their eyes were paining."],
                    "bad": ["He writes poems.","They play volleyball.","We cooked meal.","Its raining"]
                },
                {
                    "instructions": qsTr("Place the POSSESIVE PRONOUNS to the right and others to the left"),
                    "image": "Possesive Pronouns",
                    "maxNumberOfGood": 3,
                    "maxNumberOfBad": 3,
                    "prefix": "",
                    "good": ["He took his pen.","The dog wagged his tail.","My car is bigger."],
                    "bad": ["He loves nature.","They played well.","George is singing."]
                },
                {
                    "instructions": qsTr("Place the DEMONSTRATIVE PRONOUNS to the right and others to the left"),
                    "image": "Demonstrative Pronouns",
                    "maxNumberOfGood": 6,
                    "maxNumberOfBad": 6,
                    "prefix": "",
                    "good": ["This tastes good.","That is beautiful.","That book is good.","I'll buy these.","Is this yours?","That is incorrect."],
                    "bad": ["He was running.","I drank milk.","They complained.","We did well.","I did the work myself.","He brushes his teeth."]
                },
                {
                    "instructions": qsTr("Place the DEMONSTRATIVE PRONOUNS to the right and others to the left"),
                    "image": "Demonstrative Pronouns",
                    "maxNumberOfGood": 5,
                    "maxNumberOfBad": 4,
                    "prefix": "",
                    "good": ["I wanted that.","Is that Jim?","I own those.","Did you see this?","I read this book."],
                    "bad": ["He swims.","Ben writes beautifully.","They won the match.","We scored well in exams."]
                },
                {
                    "instructions": qsTr("Place the DEMONSTRATIVE PRONOUNS to the right and others to the left"),
                    "image": "Demonstrative Pronouns",
                    "maxNumberOfGood": 3,
                    "maxNumberOfBad": 3,
                    "prefix": "",
                    "good": ["These are blue pens.","This is an apple.","Those were my fruits."],
                    "bad": ["They went home.","The red pen was mine.","I am sleeping."]
                },
                {
                    "instructions": qsTr("Place the INDEFINITE PRONOUNS to the right and others to the left"),
                    "image": "Indefinite Pronouns",
                    "maxNumberOfGood": 6,
                    "maxNumberOfBad": 6,
                    "prefix": "",
                    "good": ["Somebody ate my sandwich.","None is interested.","Everyone played football.","Either choice has its advantages.","I don't know any of the answers.","Everything happens for a reason."],
                    "bad": ["He lost his dog.","Jone likes listening music.","She is a dancer.","He speaks good English.","Mom has went to market.","I am cooking food."]
                },
                {
                    "instructions": qsTr("Place the INDEFINITE PRONOUNS to the right and others to the left"),
                    "image": "Indefinite Pronouns",
                    "maxNumberOfGood": 5,
                    "maxNumberOfBad": 4,
                    "prefix": "",
                    "good": ["Everybody enjoyed the concert.","Nobody came.","Anyone can play this game.","Very few came for the class.","All were late for the party."],
                    "bad": ["Sun rises from east.","I drive car.","They lost their keys","He loves red color."]
                },
                {
                    "instructions": qsTr("Place the INDEFINITE PRONOUNS to the right and others to the left"),
                    "image": "Indefinite Pronouns",
                    "maxNumberOfGood": 3,
                    "maxNumberOfBad": 3,
                    "prefix": "",
                    "good": ["Everyone enjoyed the food.","Is anyone available today?","Few came to the wedding."],
                    "bad": ["They won the contest.","An apple a day keeps doctor away.","We went on holidays."]
                },
                {
                    "instructions": qsTr("Place the RELATIVE PRONOUNS to the right and others to the left"),
                    "image": "Relative pronouns",
                    "maxNumberOfGood": 6,
                    "maxNumberOfBad": 6,
                    "prefix": "",
                    "good": ["The car which I drive is old","who","That's the dog who doesn't like me.","The man who I saw was a thief.","These are some books which I love.","This is the place where I ate lunch."],
                    "bad": ["These are not my shoes.","Did you hear her poem?","Jim works slow.","I didn't go to the party.","I love pizza.","This is my computer."]
                },
                {
                    "instructions": qsTr("Place the RELATIVE PRONOUNS to the right and others to the left"),
                    "image": "Relative pronouns",
                    "maxNumberOfGood": 5,
                    "maxNumberOfBad": 4,
                    "prefix": "",
                    "good": ["The car which hit me was yellow.","The car that I drive is old.","This is the cake that I baked.","I will open whichever package arrives fast.","The person who called me is my best friend."],
                    "bad": ["His shoes are dirty.","He drives slow.","I complted my work myself.","The class passed the test."]
                },
                {
                    "instructions": qsTr("Place the RELATIVE PRONOUNS to the right and others to the left"),
                    "image": "Relative pronouns",
                    "maxNumberOfGood": 3,
                    "maxNumberOfBad": 3,
                    "prefix": "",
                    "good": ["Katie, who is very kind is my friend","Whoever spilled the milk will have to clean it."],
                    "bad": ["It was sunny.","She went to the doctor.","That's my umbrella.","I bought a new dog."]
                },
                {
                    "instructions": qsTr("Place the INTERROGATIVE PRONOUNS to the right and others to the left"),
                    "image": "Interrogative Pronouns",
                    "maxNumberOfGood": 5,
                    "maxNumberOfBad": 7,
                    "prefix": "",
                    "good": ["Who will design the logo?","Whose pen is it?","What will you do there?","Whom did you ask the details?","Which place is it?"],
                    "bad": ["I play guitar.","They like watching movies.","He topped the class.","Sun sets in the west.","Exercises keep fit.","Phil is a good boy.","Diana is my best friend."]
                },
                {
                    "instructions": qsTr("Place the INTERROGATIVE PRONOUNS to the right and others to the left"),
                    "image": "Interrogative Pronouns",
                    "maxNumberOfGood": 5,
                    "maxNumberOfBad": 4,
                    "prefix": "",
                    "good": ["Which is your favorite color?","Whose pen is this?","What is your name?","What are you talking about?","Whose camera is this?"],
                    "bad": ["I play alone.","This is my book.","They played well.","I am going."]
                },
                {
                    "instructions": qsTr("Place the INTERROGATIVE PRONOUNS to the right and others to the left"),
                    "image": "Interrogative Pronouns",
                    "maxNumberOfGood": 5,
                    "maxNumberOfBad": 7,
                    "prefix": "",
                    "good": ["Who won the race?","Whom shall we ask?","Which of these do you prefer?"],
                    "bad": ["He went to the stadium.","Do you play?","She is dancing."]
                }
            ]
        }
    ]
}

