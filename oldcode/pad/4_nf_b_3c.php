var g4_nf_b_3c = new Class(
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

			//console.log('' + this.mUserAnswer);

			str = '' + this.mUserAnswer;
			res = str.split(" ");

			if (res.length == 1)
			{
				str = res[0].split("/");

				if(str.length == 2)
				   res[0] = 1.0 * (str[0] * 1.0)/(str[1] * 1.0);

				res[1] = '0/1';

				
			}
			whole = res[0] * 1.0;
			frac = res[1];
			res2 = frac.split("/");

			if (res2.length == 1)
			{
				res2[1] = '1';
			}

			decimal = 1.0 * (res2[0] * 1.0)/(res2[1] * 1.0);
			this.mUserAnswer = (whole + decimal) * 1.0;
			console.log('whole:' + whole);
			console.log('decimal:' + decimal);
			console.log(this.mUserAnswer);

			str = this.mQuiz.getQuestion().mAnswerArray[0];
			res = str.split(" ");

			if (res.length == 1)
			{
				res[1] = '999/888';
			}
			whole = res[0] * 1.0;
			frac = res[1];
			res2 = frac.split("/");
			decimal = res2[0]/res2[1];
			this.mDecimalAnswer = (whole + decimal) * 1.0;
			
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

		    rand = Math.floor((Math.random()*2));

	            if(rand == 0)
		    {

			// get bottom number
			varB = 4 + Math.floor(Math.random()*9);

			// get top number
			max = Math.floor(varB/2);
			varA = 1 + Math.floor((Math.random()*(max-1)));

			varC = 1 + Math.floor((Math.random()*max));
			varD = varB;

			answerFrac = varA + varC;
			//answerFrac = '' + answerFrac + '/' + varD;
			answerFracString = '' + answerFrac + '/' + varD;
			answerFrac = answerFrac/varD;
			

			wholeA = 1 + Math.floor(Math.random()*9);
			wholeB = 1 + Math.floor(Math.random()*9);

			answerWhole = wholeA + wholeB;

			//answerTotal = '' + answerWhole + ' ' + answerFrac;
			answerTotal = answerWhole + answerFrac;
			this.mDecimalAnswer = answerTotal;
			answerTotalString = '' + answerWhole + ' ' + answerFracString;

			answer1 = answerTotal;

			mixA = '' + wholeA + ' ' + varA + '/' +  '' + varB;
			mixB = '' + wholeB + ' ' + varC + '/' +  '' + varD;

			question = new Question('' + mixA + ' + ' +  mixB + ' =', '' + answerTotalString);

		     }
		     else
		     {

			// get bottom number
			varB = 4 + Math.floor(Math.random()*9);

			// get top number
			max = varB;

			varC = 1 + Math.floor((Math.random()*(max-1)));
			varA = varC + 1 + Math.floor((Math.random()*(max - varC - 1)));
			varD = varB;

			answerFrac = varA - varC;
			//answerFrac = '' + answerFrac + '/' + varD;
			answerFracString = '' + answerFrac + '/' + varD;
			answerFrac = answerFrac/varD;
			
			wholeB = 1 + Math.floor(Math.random()*9);
			wholeA = wholeB + 1 + Math.floor(Math.random()*(9 - wholeB));

			answerWhole = wholeA - wholeB;

			//answerTotal = '' + answerWhole + ' ' + answerFrac;
			answerTotal = answerWhole + answerFrac;
			this.mDecimalAnswer = answerTotal;
			answerTotalString = '' + answerWhole + ' ' + answerFracString;

			answer1 = answerTotal;

			mixA = '' + wholeA + ' ' + varA + '/' +  '' + varB;
			mixB = '' + wholeB + ' ' + varC + '/' +  '' + varD;

			question = new Question('' + mixA + ' - ' +  mixB + ' =', '' + answerTotalString);


		     }
			//console.log(answerTotal);
			

                	this.mQuiz.mQuestionArray.push(question);

                                       
                 }
			

		//buffer
                this.mQuiz.mQuestionArray.push(new Question('buf','buf'));

                //random
               // this.mQuiz.randomize(30);
	}
});