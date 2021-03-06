var rl_k_1 = new Class(
{

Extends: MultipleChoicePad,

	initialize: function(application)
	{
       		this.parent(application);

		this.setScoreNeeded(2);
	},

	createNumQuestion: function()
        {
                //question
                this.mNumQuestion = new Shape(200,100,120,95,this,"","","");
                this.mShapeArray.push(this.mNumQuestion);
                this.mNumQuestion.mCollidable = false;
                this.mNumQuestion.mCollisionOn = false;
        },

        showCorrectAnswerEnter: function()
        {
                this.parent();

                this.mShapeArray[1].setSize(200,100);
		this.mShapeArray[1].mMesh.innerHTML = '' + this.mQuiz.getQuestion().getQuestion() + ' ' + this.mQuiz.getQuestion().getAnswer();
        },

	createQuestions: function()
        {
 		this.parent();

		this.mQuiz.resetQuestionArray();
		
		//
		question = new Question('The frog was green. What color was the frog?', 'green');
                this.mQuiz.mQuestionArray.push(question);
		question.mAnswerPool.push('red');
		question.mAnswerPool.push('frog');
		question.mAnswerPool.push('color');
		question.mShapeArray.push(this.mShapeArray[parseInt(this.mTotalGuiBars + this.mTotalInputBars)]);
	
		//
		question = new Question('The boy had a red ball. What color was the ball?', 'red');
                this.mQuiz.mQuestionArray.push(question);
		question.mAnswerPool.push('red');
		question.mAnswerPool.push('boy');
		question.mAnswerPool.push('ball');
		question.mShapeArray.push(this.mShapeArray[parseInt(this.mTotalGuiBars + this.mTotalInputBars)]);
		
		//
		question = new Question('The girl went home. Who went home?', 'girl');
                this.mQuiz.mQuestionArray.push(question);
		question.mAnswerPool.push('girl');
		question.mAnswerPool.push('went');
		question.mAnswerPool.push('home');
                question.mShapeArray.push(this.mShapeArray[parseInt(this.mTotalGuiBars + this.mTotalInputBars + 1)]);

		//buffer
                //this.mQuiz.mQuestionArray.push(new Question('buf','buf'));

                //random
                this.mQuiz.randomize(10);
	},

	createWorld: function()
        {
                this.parent();

		//1
                this.mShapeArray.push(new Shape(250,25,150,400,this,"AUDIO","",""));

		//for new browsers
		this.mShapeArray[parseInt(this.mTotalGuiBars + this.mTotalInputBars)].mMesh.controls = true;
		this.mShapeArray[parseInt(this.mTotalGuiBars + this.mTotalInputBars)].mMesh.src="/audio/spring.mp3";
	
		//for old browsers	
		this.mShapeArray[parseInt(this.mTotalGuiBars + this.mTotalInputBars)].mMesh.setAttribute('href', '/audio/spring.mp3');
                this.mShapeArray[parseInt(this.mTotalGuiBars + this.mTotalInputBars)].mMesh.innerHTML = "Play Question";


		//2
                this.mShapeArray.push(new Shape(250,25,150,400,this,"AUDIO","",""));

		//for new browsers
		this.mShapeArray[parseInt(this.mTotalGuiBars + this.mTotalInputBars + 1)].mMesh.controls = true;
		this.mShapeArray[parseInt(this.mTotalGuiBars + this.mTotalInputBars + 1)].mMesh.src="/audio/canon.mp3";
	
		//for old browsers	
		this.mShapeArray[parseInt(this.mTotalGuiBars + this.mTotalInputBars + 1)].mMesh.setAttribute('href', '/audio/canon.mp3');
                this.mShapeArray[parseInt(this.mTotalGuiBars + this.mTotalInputBars + 1)].mMesh.innerHTML = "Play Question";

	}
});
