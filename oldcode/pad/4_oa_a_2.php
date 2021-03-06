var g4_oa_a_2 = new Class(
{

Extends: MultipleChoicePad,

	initialize: function(application)
	{
       		this.parent(application);

		this.mCircles = new Circles(this);
    		this.mRaphael = Raphael(10, 35, 760, 405);
	},
        
	createNumQuestion: function()
        {
		this.parent();
                this.mNumQuestion.setSize(650,200);
                this.mNumQuestion.setPosition(350,140);
        },

	createInput: function()
	{
		this.parent();
		this.mButtonA.setPosition(105,200);
		this.mButtonB.setPosition(385,200);
		this.mButtonC.setPosition(660,200);
	},

        //showCorrectAnswer
        showCorrectAnswerEnter: function()
        {
                this.parent();
                this.mShapeArray[1].setSize(650,200);
                this.mShapeArray[1].setPosition(350,140);
                this.mShapeArray[9].setSize(75,75);
                this.mShapeArray[9].setPosition(75,175);
        },
	makeType1: function()
        {
		question = '';
                var a = 0;
                var b = 0;
                var c = 0;
                var d = 0;
                var e = 0;
                var f = 0;

                while ((a * b) == (c * d) || (a * b) == (e * f))
                {
                        a = Math.floor((Math.random()*8)+2);
                        b = Math.floor((Math.random()*8)+2);
                        c = Math.floor((Math.random()*8)+2);
                        d = Math.floor((Math.random()*8)+2);
                        e = Math.floor((Math.random()*8)+2);
                        f = Math.floor((Math.random()*8)+2);
                }
                randomChoice = Math.floor(Math.random()*2);

		if (randomChoice == 0)
		{
                	question = new Question('A soccer league had ' + a + ' teams. There were ' + b + ' players on each team. ' + a + 'x' + b + ' represents this as an expression. How would we best represent this expression in a picture?', 'A');
		}
		if (randomChoice == 1)
		{
                	question = new Question('A teacher put the kids desks in ' + a + ' rows with ' + b + ' desks in each row. ' + a + 'x' + b + ' represents this as an expression. How would we best represent this expression in a picture?', 'A');
		}
		if (randomChoice == 2)
		{
                	question = new Question('Jim scored ' + a + ' points. He had ' + b + ' times as many points as Steve. ' + a + 'x' + b + ' represents this as an expression. How would we best represent this expression in a picture?', 'A');
		}

                var correctLetterNumber = Math.floor(Math.random()*3);
                if (correctLetterNumber == 0)
                {
                        question.setAnswer('A',0);
                        this.mCircles.includeCircles(question,'A',a,b);
                        this.mCircles.includeCircles(question,'B',c,d);
                        this.mCircles.includeCircles(question,'C',e,f);

                }
                if (correctLetterNumber == 1)
                {
                        question.setAnswer('B',0);
                        this.mCircles.includeCircles(question,'A',c,d);
                        this.mCircles.includeCircles(question,'B',a,b);
                        this.mCircles.includeCircles(question,'C',e,f);
                }
                if (correctLetterNumber == 2)
                {
                        question.setAnswer('C',0);
                        this.mCircles.includeCircles(question,'A',c,d);
                        this.mCircles.includeCircles(question,'B',e,f);
                        this.mCircles.includeCircles(question,'C',a,b);
                }
                question.mAnswerPool.push('A');
                question.mAnswerPool.push('B');
                question.mAnswerPool.push('C');
		question.mType = 1;
                this.mQuiz.mQuestionArray.push(question);
        },

	makeType2: function()
	{
		question = '';
                
		a = Math.floor((Math.random()*8)+2);
                b = Math.floor((Math.random()*8)+2);
                
		randomChoice = Math.floor(Math.random()*2);

		if (randomChoice == 0)
		{
			question = new Question('Mike had ' + a + ' buckets. He had ' + b + ' fish in each bucket. We could write the expression: ' + a + 'x' + b + ' to represent this. Which of these expressions also represent the situation?',b + 'x' + a);
                }
		if (randomChoice == 1)
		{
			question = new Question('A school had ' + a + ' class rooms. It had ' + b + ' students in each class. We could write the expression: ' + a + 'x' + b + ' to represent this. Which of these expressions also represent the situation?',b + 'x' + a);
                }

                question.mAnswerPool.push('' + question.getAnswer());
                question.mAnswerPool.push('' + b + '+' + a);
                question.mAnswerPool.push('' + b + '-' + a);

		question.mRandomChoices = true;
		question.mType = 2;
		this.mQuiz.mQuestionArray.push(question);
	},		

	makeType3: function()
	{
                a = Math.floor((Math.random()*8)+2);
                b = Math.floor((Math.random()*8)+2);
		x = parseInt(a * b);
		
		randomChoice = Math.floor(Math.random()*2);

		if (randomChoice == 0)
		{
                	question = new Question('Ava and Fred played soccer. Fred scored ' + a + ' goals. Ava scored ' + b + ' times as many goals as Fred. Which equation would represent this situation?',a + 'x' + b + '=' + x);
               	} 
		if (randomChoice == 1)
		{
                	question = new Question('Zach and Brent both love fruit. Brent loves it more. In the last 7 days Zach ate ' + a + ' pieces of fruit. Brent ate ' + b + ' times as many pieces of fruit as Zach. Which equation would represent this situation?',a + 'x' + b + '=' + x);
               	} 

		question.mAnswerPool.push(question.getAnswer());
                question.mAnswerPool.push(b + '-' + a + '=' + parseInt(b+a));
                question.mAnswerPool.push(x + '+' + b + '=' + parseInt(x+b));
		question.mRandomChoices = true;
		question.mType = 3;
                this.mQuiz.mQuestionArray.push(question);
	},	
 
	makeType4: function()
        {
                a = Math.floor((Math.random()*8)+2);
                b = Math.floor((Math.random()*8)+2);
                x = parseInt(a * b);

                randomChoice = Math.floor(Math.random()*2);
		randomChoice = 1;

                if (randomChoice == 0)
                {
                        question = new Question('Lisnett and Zabrina played a game. Lisnett scored ' + x + ' points. Which is ' + a + ' times as many points as Zabrina scored. Which equation would represent how many points Zabrina scored?',x + '/' + a + '=' + b);
                }
                if (randomChoice == 1)
                {
                        question = new Question('In a hot dog eating contest Fred ate ' + x + ' hot dogs. Which is ' + a + ' times as many hot dogs as Jason ate. Which equation would represent how many hot dogs Jason ate?',x + '/' + a + '=' + b);
                }

                question.mAnswerPool.push(question.getAnswer());
                question.mAnswerPool.push(x + '+' + a + '=' + parseInt(x+a));
                question.mAnswerPool.push(x + '-' + a + '=' + parseInt(x-a));
                question.mRandomChoices = true;
		question.mType = 4;
                this.mQuiz.mQuestionArray.push(question);
        },
	
	makeType5: function()
        {
                randomChoice = Math.floor(Math.random()*2);
		randomChoice = 1;

                if (randomChoice == 0)
                {
                        question = new Question('Which of the following is an example of multiplicative comparison?','Becky has 5 times as many points as Ralph');
                	question.mAnswerPool.push(question.getAnswer());
                	question.mAnswerPool.push('Becky has 5 more points than Ralph');
                	question.mAnswerPool.push('Beck has 5 less points than Ralph');
                }
                if (randomChoice == 1)
                {
                        question = new Question('Which of the following is an example of multiplicative comparison?','Mike caught 5 times as many fish as Jim');
                	question.mAnswerPool.push(question.getAnswer());
                	question.mAnswerPool.push('Mike caught 4 more fish than Jim');
                	question.mAnswerPool.push('Mike caught 4 less fish than Jim');
                }

                question.mRandomChoices = true;
		question.mType = 5;
                this.mQuiz.mQuestionArray.push(question);
        },

        makeType6: function()
        {
                a = Math.floor((Math.random()*8)+2);
                b = Math.floor((Math.random()*8)+2);
                x = parseInt(a * b);

                randomChoice = Math.floor(Math.random()*2);
                randomChoice = 1;

                if (randomChoice == 0)
                {
                        question = new Question('A gym bag has soccerballs and basketballs in it. There are ' + x + ' soccerballs in the bag, which is ' + a + ' times as the amount of basketballs in the bag. How many basketballs are in the bag?',b);
                }
                if (randomChoice == 1)
                {
                        question = new Question('Allen and Sammy were reading the same book. Allen had read ' + x + ' pages of the book, which is ' + a + ' times the amount of pages that Sammy had read. How many pages did Sammy read?',b);
                }
                question.mAnswerPool.push(question.getAnswer());
                question.mAnswerPool.push(parseInt(x+a));
                question.mAnswerPool.push(parseInt(x-a));
                question.mRandomChoices = true;
		question.mType = 6;
                this.mQuiz.mQuestionArray.push(question);
        },
/*	
	makeType7: function()
        {
                randomChoice = Math.floor(Math.random()*2);
		randomChoice = 0;

                if (randomChoice == 0)
                {
                        question = new Question('Judy tries to solve a story problem: A pack of game cards costs 5 times as much as 1 card. If one card costs $1.50, how much does a pack of cards cost? Judy trys to solve the problem this way: 5 + $1.50 = $6.50','Judy is incorrect. She found the sum');
                	question.mAnswerPool.push(question.getAnswer());
                	question.mAnswerPool.push('Judy is correct. She found the sum');
                	question.mAnswerPool.push('Judy is correct. She found the difference');
                }

                question.mRandomChoices = true;
		question.mType = 7;
                this.mQuiz.mQuestionArray.push(question);
        },
*/
        makeType8: function()
        {
                a = Math.floor((Math.random()*99)+2);
                b = Math.floor((Math.random()*8)+2);
                x = parseInt(a * b);

                randomChoice = Math.floor(Math.random()*2);

                if (randomChoice == 0)
                {
                        question = new Question('Mr Nucera had ' + a + ' gym bags. Each gym bag had ' + b + ' dodgeballs in it. How many dodgeballs did Mr. Nucera have total?',x);
                }
                if (randomChoice == 1)
                {
                        question = new Question('A group of ' + b + ' friends each had a Halloween bag. If each bag contained ' + a + ' treats how many treats did the kids have total?',x);
                }
                question.mAnswerPool.push(question.getAnswer());
                question.mAnswerPool.push(parseInt(a+b));
                question.mAnswerPool.push(parseInt(x-a));
                question.mRandomChoices = true;
		question.mType = 8;
                this.mQuiz.mQuestionArray.push(question);
        },

	makeType9: function()
        {
                a = Math.floor((Math.random()*8)+2);
                b = Math.floor((Math.random()*8)+2);
                x = parseInt(a * b);

                randomChoice = Math.floor(Math.random()*2);

                if (randomChoice == 0)
                {
                        question = new Question('Mr Dubois had ' + x + ' dodgeballs. He had made ' + a + ' teams. If Mr. Dubois wants to give each team the same amount of dodgeballs to start with than how many dodgeballs should he distribute to each team?',b);
                }
                if (randomChoice == 1) 
                {
                        question = new Question('Santa Claus had ' + x + ' toys. He has to deliver the toys to ' + a + ' very good kids. If Santa wants to give each kid the same amount of toys how many toys should he give to each kid?',b);
                }
                question.mAnswerPool.push(question.getAnswer());
                question.mAnswerPool.push(parseInt(x-a));
                question.mAnswerPool.push(parseInt(x+a));
                question.mRandomChoices = true;
		question.mType = 9;
                this.mQuiz.mQuestionArray.push(question);
        },
   	
	makeType10: function()
        {
                a = Math.floor((Math.random()*8)+2);
                b = Math.floor((Math.random()*97)+2);
                x = parseInt(a * b);

                randomChoice = Math.floor(Math.random()*2);
		randomChoice = 1;

                if (randomChoice == 0)
                {
                        question = new Question('Mr Dubois had ' + x + ' dodgeballs. He had made ' + a + ' teams. If Mr. Dubois wants to give each team the same amount of dodgeballs to start with than how many dodgeballs should he distribute to each team?',b);
                }
                if (randomChoice == 1)
                {
                        question = new Question('Santa Claus had ' + x + ' toys. He has to deliver the toys to ' + a + ' very good kids. If Santa wants to give each kid the same amount of toys how many toys should he give to each kid?',b);
                }
                question.mAnswerPool.push(question.getAnswer());
                question.mAnswerPool.push(parseInt(x-a));
                question.mAnswerPool.push(parseInt(x+a));
                question.mRandomChoices = true;
		question.mType = 10;
                this.mQuiz.mQuestionArray.push(question);
        },

	createQuestions: function()
        {
		this.parent();
		
		this.setScoreNeeded(this.mApplication.mLevel);
	
		//just the question array reset
		this.mQuiz.resetQuestionArray();
		this.mQuiz.resetQuestionPoolArray();

		this.makeType1();
		this.makeType2();
		this.makeType3();
		this.makeType4();
		this.makeType5();
		this.makeType6();
		this.makeType8();
		this.makeType9();
		this.makeType10();
		//this.makeType7);

		//buffer
                this.mQuiz.mQuestionArray.push(new Question('buf','buf'));
		
		//random	
		this.mQuiz.randomize(10);
	},

	createWorld: function()
	{
		this.parent();

		this.mCircles.createWorld();
	}
});
