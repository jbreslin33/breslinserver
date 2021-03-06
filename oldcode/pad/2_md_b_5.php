var g2_md_b_5 = new Class(
{

Extends: NumberPad,

	initialize: function(application)
	{
       		this.parent(application);
		this.setScoreNeeded(1);
	},

     	//showCorrectAnswer
        showCorrectAnswerEnter: function()
        {
		this.parent();
                
                this.mShapeArray[1].setSize(700,100);
                this.mShapeArray[1].setPosition(380,80);
       
		//move dont forget 
	        this.mShapeArray[8].setVisibility(false);
	        this.mShapeArray[9].setVisibility(false);
  		this.mShapeArray[1].mMesh.innerHTML = '' + this.mQuiz.getQuestion().getQuestion() + ' ANSWER: ' + this.mQuiz.getQuestion().getAnswer();
        },

        //outOfTime
        outOfTimeEnter: function()
        {
		this.parent();

                this.mShapeArray[0].setPosition(650,170);

                this.mShapeArray[1].setSize(700,100);
                this.mShapeArray[1].setPosition(380,80);
	      
		//move frantic clock 
		this.mShapeArray[8].setPosition(650,300);
        },

    	tip: function()
        {
                if (this.mQuiz.getQuestion().mTipArray.length > 0)
                {
                        //tip header
                        this.mShapeArray[2].setPosition(140,100);
                        this.mShapeArray[2].setSize(200,10);
                        this.mShapeArray[2].setVisibility(true);

                        if (this.mQuiz.getQuestion().mTipArray.length == 1)
                        {
                                this.mShapeArray[2].mMesh.innerHTML = 'Tip:';
                        }
                        else
                        {
                                this.mShapeArray[2].mMesh.innerHTML = 'Tips:';
                        }

                        if (this.mQuiz.getQuestion().mTipArray.length > 0)
                        {
                                this.mShapeArray[3].setPosition(380,150);
                                this.mShapeArray[3].setSize(700,10);
                                this.mShapeArray[3].setVisibility(true);
                                this.mShapeArray[3].mMesh.innerHTML = this.mQuiz.getQuestion().mTipArray[0];
                        }
                        if (this.mQuiz.getQuestion().mTipArray.length > 3)
                        {
                                this.mShapeArray[6].setPosition(380,180);
                        	this.mShapeArray[6].setSize(700,10);
                                this.mShapeArray[6].setVisibility(true);
                                this.mShapeArray[6].mMesh.innerHTML = this.mQuiz.getQuestion().mTipArray[3];
			}
                }
        },

        createNumQuestion: function()
        {
                //question
                this.mNumQuestion = new Shape(200,200,140,140,this,"","","");
                this.mShapeArray.push(this.mNumQuestion);
                this.mNumQuestion.mCollidable = false;
                this.mNumQuestion.mCollisionOn = false;
        },

	createQuestions: function()
        {
                this.parent();

                this.mQuiz.resetQuestionArray();

                if (this.mApplication.mLevel == 1)
                {
			var question = new QuestionWord('','',2,99,2,99,2,99,0,0,'Graham had','feet of string. He bought', 'more feet of string at the toy store. How much string does Graham have now? Write answer in the form: 23 ft','',0);	
			question.setAnswer('' + question.getAnswer() + ' ft',0);
			question.mTipArray[0] = 'Graham had + Graham bought = Graham has';
                        this.mQuiz.mQuestionArray.push(question);
                }

                if (this.mApplication.mLevel == 2)
		{	
			var question = new QuestionWord('','',2,99,2,99,2,99,0,0,'Aubrey had some yarn in a box. She found','feet of yarn in her closet and put it in the box. Now there are', 'inches of yarn in the box. How much yarn in inches were in the box to begin with? Write answer in the form: 23 in','',2);	
			question.setAnswer('' + question.getAnswer() + ' in',0);
			question.mTipArray[0] = 'Aubrey has - Aubrey found = Aubrey had';
                        this.mQuiz.mQuestionArray.push(question);
		}

                if (this.mApplication.mLevel == 3)
		{
       			var question = new QuestionWord('','',2,99,2,99,2,99,0,0,'Anna had','centimeters of a chocolate bar. She gave', 'centimters to here puppy. How much chocolate bar does Anna have now? Write answer in the form: 23 cm','',1);
			question.setAnswer('' + question.getAnswer() + ' cm',0);
			question.mTipArray[0] = 'Anna had - Anna gave to puppy = Anna has now';
                        this.mQuiz.mQuestionArray.push(question);
		}
       		
                if (this.mApplication.mLevel == 4)
		{
			var question = new QuestionWord('','',2,99,2,99,2,99,0,0,'Isaac had','centimeters of candy cane in his pocket. Some of it slipped out through a hole in his pocket. When he got to the playground he only had', 'centimeters of candy cane left in his pocket. How much fell out? Write answer in the form: 23 cm','',1);
			question.setAnswer('' + question.getAnswer() + ' cm',0);
			question.mTipArray[0] = 'Issac had - Issac has left = Issac lost';
                        this.mQuiz.mQuestionArray.push(question);
		}
                
		if (this.mApplication.mLevel == 5)
		{
       			var question = new QuestionWord('','',2,99,2,99,2,99,0,0,'Molly had some ladybug stickers. She gave','inches of the stickers to her sister and kept', 'inches for herself. How many inches of stickers did Molly have to begin with?  Write answer in the form: 23 in','',0);
			question.setAnswer('' + question.getAnswer() + ' in',0);
			question.mTipArray[0] = 'Molly gave to sister + Molly kept for herself = Molly had to begin with';
                        this.mQuiz.mQuestionArray.push(question);
		}
		
		if (this.mApplication.mLevel == 6)
		{
			var question = new QuestionWord('','',2,99,2,99,2,99,0,0,'Kaleb and Ethan were flying a kite. Kaleb brought','yards of kite string and Ethan brought', 'yards of kite string. How much kite string did the boys have total? Write answer in the form: 23 ft','',0);
			question.setAnswer('' + question.getAnswer() + ' ft',0);
			question.mTipArray[0] = 'Kaleb kite string + Ethan kite string = total kite string';
                        this.mQuiz.mQuestionArray.push(question);
		}

		if (this.mApplication.mLevel == 7)
		{
       			var question = new QuestionWord('','',2,99,2,99,2,99,0,0,'Macon and Parker picked up the crayons that spilled onto the floor. They measured the amount of crayon they put back in the box and it came to','centimeters of crayon. Macon measured that he put back', 'centimeters of crayon into the box. How many centimeters of crayons did Parker put in the box?  Write answer in the form: 23 cm','',1);
			question.setAnswer('' + question.getAnswer() + ' cm',0);
			question.mTipArray[0] = 'total crayon length - length Macon put away = length Parker put away';
                        this.mQuiz.mQuestionArray.push(question);
		}

		if (this.mApplication.mLevel == 8)
		{
       			var question = new QuestionWord('','',2,99,2,99,2,99,0,0,'Cole and Maggie worked together to make a train that was','inches long. They broke it into two pieces. One was', 'inches long. How long was the other piece?','',1);
			question.setAnswer('' + question.getAnswer() + ' in',0);
			question.mTipArray[0] = 'train length - one piece = other piece';
                        this.mQuiz.mQuestionArray.push(question);
		}
		
		if (this.mApplication.mLevel == 9)
		{
			var question = new QuestionWord('','',2,99,2,99,2,99,0,0,'Sally and Amy shared colored thread that was in a box. They used all of the thread to make something for art class. Sally used','yards of thread for her project. Amy used', 'yards of thread for her project. How much thread was in the box to begin with?','',0);
			question.setAnswer('' + question.getAnswer() + ' yd',0);
			question.mTipArray[0] = 'Sally thread + Amy thread = total thread';
                        this.mQuiz.mQuestionArray.push(question);
		}
		
		if (this.mApplication.mLevel == 10)
		{
			var question = new QuestionWord('','',2,99,2,99,2,99,0,0,'Skip made a wall of sand on the beach that was','inches long. Jacob knocked down','inches of the wall. How many inches were left standing?','',1);
			question.setAnswer('' + question.getAnswer() + ' in',0);
			question.mTipArray[0] = 'built - knocked down = left';
                        this.mQuiz.mQuestionArray.push(question);
		}
		
		if (this.mApplication.mLevel == 11)
		{
			var question = new QuestionWord('','',2,99,2,99,2,99,0,0,'In the baseball game the kids pitched from','feet away from the batter. They then started pitching','feet closer to the batter. How close are they now?','',1);
			question.setAnswer('' + question.getAnswer() + ' ft',0);
			question.mTipArray[0] = 'original distance - amount moved closer = new distance';
                        this.mQuiz.mQuestionArray.push(question);
		}
		
		if (this.mApplication.mLevel == 12)
		{
			var question = new QuestionWord('','',2,99,2,99,2,99,0,0,'Carson can kick a soccer ball','yards. His litter brother can kick it','yards less. How far can his litter brother kick the soccer ball?','',1);
			question.setAnswer('' + question.getAnswer() + ' yd',0);
			question.mTipArray[0] = 'Carson distance - how many yards less his brother kicks = distance brother kicks';
                        this.mQuiz.mQuestionArray.push(question);
		}
   		//buffer
                this.mQuiz.mQuestionArray.push(new Question('buf','buf'));
	}
});
