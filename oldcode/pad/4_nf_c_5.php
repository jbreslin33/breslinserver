var g4_nf_c_5 = new Class(
{

Extends: NumberPad,

	initialize: function(application)
	{
       		this.parent(application);
                this.mDecimalAnswer = 0;
		
	},

	showCorrectAnswerEnter: function()
        {
		this.parent();
                //this.mShapeArray[1].setPosition(200,200);
		this.mShapeArray[1].setSize(250,100);
        },

	firstTimeExecute: function()
        {
		
             if (this.mUserAnswer != '')
	     {

		var str = '';
		var res = '';
		var whole;
		var frac;
		var res2;
		var decimal;

		frac = '' + this.mUserAnswer;
		res2 = frac.split("/");

		if (res2.length == 1)
		{
			res2[1] = '1';
		}

		decimal = 1.0 * (res2[0] * 1.0)/(res2[1] * 1.0);
		this.mUserAnswer = decimal * 1.0;

		str = this.mQuiz.getQuestion().mAnswerArray[0];
		res2 = str.split("/");

		if (res2.length == 1)
		{
			res2[1] = '1';
		}

		decimal = 1.0 * res2[0]/res2[1];
		this.mDecimalAnswer = decimal * 1.0;
	     }
	     var correct = false;
                //if you have an answer...
                if (this.mUserAnswer != '')
                {
			if (this.mQuiz == 0)
			{
				return;
			}
			for (i=0; i < this.mQuiz.getQuestion().mAnswerArray.length; i++)
			{
				//console.log('user: ' + this.mUserAnswer);
				//console.log('decimal: ' + this.mDecimalAnswer);

                        	if (this.mUserAnswer == this.mDecimalAnswer)
				{
					correct = true;
                               		this.mStateMachine.changeState(this.mCORRECT_ANSWER);
				}
			}

			if (correct == false)
			{
                                this.mStateMachine.changeState(this.mSHOW_CORRECT_ANSWER);
                        }
			
			if (this.mFirstTimeAnswer == false)
			{
				this.mFirstTimeAnswer = true;
				this.mApplication.sendLevelAttempt();
			}
                }
	},

	createNumQuestion: function()
        {
                //question
                this.mNumQuestion = new Shape(170,50,195,95,this,"","","");
                this.mShapeArray.push(this.mNumQuestion);
                this.mNumQuestion.mCollidable = false;
                this.mNumQuestion.mCollisionOn = false;
        },
  

	createQuestions: function()
        {
 		this.parent();

		//this.mCorrectAnswerThresholdTime = 1000;

		var varA = 0;
		var varB = 0;
		var varC = 0;
		var varD = 0;
		var varN = 0;


		var start = 0;
		var end = 0;
		var rand = 0;

		var question;
		var answer;
		var diff = 0;
		
		this.mQuiz.resetQuestionArray();
			

		 for (s = 0; s < this.mScoreNeeded; s++)
		 {		

			varA = 1 + Math.floor(Math.random()*9);
			max = 99 - (10 * varA);
			varB = 1 + Math.floor(Math.random()*max);

			varC = varA + '/' + '10';
			varD = varB + '/' + '100';;
			varN = (varA * 10) + varB;
			answer = '' + varN + '/' + '100';

			question = new Question('' + varC + ' + ' +  varD + ' =', '' + answer);

		 	//console.log(answerTotal);
			
                	this.mQuiz.mQuestionArray.push(question);

                                       
                 }
			

		//buffer
                this.mQuiz.mQuestionArray.push(new Question('buf','buf'));

                //random
               // this.mQuiz.randomize(30);
	}
});
