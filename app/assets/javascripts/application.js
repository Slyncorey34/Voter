// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
!function(){
  /*
  data = questions
  objs=   questions + fuctions ON questions
  */
  var data =[
    {
      prompt: "abortion?",
      answers: [
        'yes', 'no', 'meh'
      ],
      correctIndex: 1
    },
    {
      prompt: "immigration?",
      answers: [
        'yes', 'no', 'meh'
      ],
      correctIndex: 0
    },
    {
      prompt: "more gun control?",
      answers: [
        'yes', 'no', 'meh'
      ],
      correctIndex: 2
    },
    {  prompt: "higher taxes?",
      answers: [
        'yes', 'no', 'meh'
      ],
      correctIndex: 1
    }
  ];
  // ^^the data model ojbects handle all of the data for the app. in this cse our data are in the form of quiz quesitons where each question has a prompt, a choice of two anwers and one correct answer


  // the question object reps ONE SINGLE  question. it has properties that reflect the data and set of methods to play with that data

function Question(datum){
  this.prompt = datum.prompt;
  this.answers= datum.answers;
  this.correctIndex = datum.correctIndex;
}
Question.prototype.checkAnswer = function(index){
  return index=== this.correctIndex;
}
Question.prototype.forEachAnswer = function(callback, content){
  this.answers.forEach(callback, context);
};

//the quiz object is a collection of question objects. it creates the questions from data, stores the questions AND keeps tracks of what question you're on and how many questions you've answered correctly
function Quiz(data){
  this.numberCorrect = 0;
  this.counter = 0;
  this.questions = [];

  this.addQuestions(data);
}

Quiz.prototype
}








= require jquery
= require jquery_ujs
= require turbolinks
// = require_tree .
