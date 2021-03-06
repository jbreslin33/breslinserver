var g2_g_a_3 = new Class(
{

Extends: MultipleChoicePad,

	initialize: function(application)
	{
       		this.parent(application);
		this.setScoreNeeded(24);

    		this.mRaphael = Raphael(10, 35, 760, 405);
	},
	
        //showCorrectAnswer
        showCorrectAnswerEnter: function()
        {
                this.parent();

                this.mShapeArray[1].setPosition(100,80);
        },
//Partition circles and rectangles into two and four equal shares, describe the shares using the words halves, fourths, and quarters, and use the phrases half of, fourth of, and quarter of. Describe the whole as two of, or four of the shares. Understand for these examples that decomposing into more equal shares creates smaller shares.
	createQuestions: function()
        {
		this.parent();
		
		//just the question array reset
		this.mQuiz.resetQuestionArray();
		this.mQuiz.resetQuestionPoolArray();
  
              	var question = new Question('Describe this?','ZERO HALVES');
                question.mAnswerPool[0] = 'ZERO HALVES';
                question.mAnswerPool[1] = 'ONE HALF';
                question.mAnswerPool[2] = 'TWO HALVES';
                this.mQuiz.mQuestionArray.push(question);
                question.mShapeArray.push(this.mShapeArray[parseInt(0 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(1 + this.mTotalGuiBars + this.mTotalInputBars)]);
 
		var question = new Question('Describe this?','HALF OF');
                question.mAnswerPool[0] = 'ZERO OF TWO';
                question.mAnswerPool[1] = 'TWO HALVES';
                question.mAnswerPool[2] = 'FOUR FOURTHS';
		this.mQuiz.mQuestionArray.push(question);
		question.mShapeArray.push(this.mShapeArray[parseInt(2 + this.mTotalGuiBars + this.mTotalInputBars)]);
		question.mShapeArray.push(this.mShapeArray[parseInt(3 + this.mTotalGuiBars + this.mTotalInputBars)]);
           	
		var question = new Question('Describe this?','TWO HALVES');
                question.mAnswerPool[0] = 'ZERO OF TWO';
                question.mAnswerPool[1] = 'ONE HALF';
                question.mAnswerPool[2] = 'TWO THIRDS';
                this.mQuiz.mQuestionArray.push(question);
                question.mShapeArray.push(this.mShapeArray[parseInt(4 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(5 + this.mTotalGuiBars + this.mTotalInputBars)]);
		
		var question = new Question('Describe this?','ZERO FOURTHS');
                question.mAnswerPool[0] = 'ONE HALF';
                question.mAnswerPool[1] = '2 HALVES';
                question.mAnswerPool[2] = 'TWO OF FOUR';
                question.mAnswerPool[3] = 'THREE OF FOUR';
                question.mAnswerPool[4] = 'FOUR OF FOUR';
		this.mQuiz.mQuestionArray.push(question);
		question.mShapeArray.push(this.mShapeArray[parseInt(6 + this.mTotalGuiBars + this.mTotalInputBars)]);
		question.mShapeArray.push(this.mShapeArray[parseInt(7 + this.mTotalGuiBars + this.mTotalInputBars)]);
		question.mShapeArray.push(this.mShapeArray[parseInt(8 + this.mTotalGuiBars + this.mTotalInputBars)]);
		question.mShapeArray.push(this.mShapeArray[parseInt(9 + this.mTotalGuiBars + this.mTotalInputBars)]);
           
		var question = new Question('Describe this?','ONE FOURTH');
                question.mAnswerPool[0] = 'ZERO OF FOUR';
                question.mAnswerPool[1] = '2 FOURTHS';
                question.mAnswerPool[2] = 'ONE THIRD';
                question.mAnswerPool[3] = '1 HALF';
                question.mAnswerPool[4] = 'FOUR OF FOUR';
                this.mQuiz.mQuestionArray.push(question);
		question.mShapeArray.push(this.mShapeArray[parseInt(10 + this.mTotalGuiBars + this.mTotalInputBars)]);
		question.mShapeArray.push(this.mShapeArray[parseInt(11 + this.mTotalGuiBars + this.mTotalInputBars)]);
		question.mShapeArray.push(this.mShapeArray[parseInt(12 + this.mTotalGuiBars + this.mTotalInputBars)]);
		question.mShapeArray.push(this.mShapeArray[parseInt(13 + this.mTotalGuiBars + this.mTotalInputBars)]);
	
		var question = new Question('Describe this?','TWO FOURTHS');
                question.mAnswerPool[0] = 'ZERO OF FOUR';
                question.mAnswerPool[1] = 'ONE OF FOUR';
                question.mAnswerPool[2] = '3 FOURTHS';
                question.mAnswerPool[3] = 'THREE OF FOUR';
                question.mAnswerPool[4] = 'FOUR OF FOUR';
                this.mQuiz.mQuestionArray.push(question);
                question.mShapeArray.push(this.mShapeArray[parseInt(14 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(15 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(16 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(17 + this.mTotalGuiBars + this.mTotalInputBars)]);

	        var question = new Question('Describe this?','THREE FOURTHS');
                question.mAnswerPool[0] = 'ZERO OF FOUR';
                question.mAnswerPool[1] = 'ONE OF FOUR';
                question.mAnswerPool[2] = 'TWO OF FOUR';
                question.mAnswerPool[3] = 'THREE HALVES';
                question.mAnswerPool[4] = 'FOUR OF FOUR';
                this.mQuiz.mQuestionArray.push(question);
                question.mShapeArray.push(this.mShapeArray[parseInt(18 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(19 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(20 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(21 + this.mTotalGuiBars + this.mTotalInputBars)]);

              	var question = new Question('Describe this?','FOUR FOURTHS');
                question.mAnswerPool[0] = 'ZERO OF FOUR';
                question.mAnswerPool[1] = 'ONE OF FOUR';
                question.mAnswerPool[2] = 'TWO OF FOUR';
                question.mAnswerPool[3] = 'THREE OF FOUR';
                question.mAnswerPool[4] = 'FOUR HALVES';
                this.mQuiz.mQuestionArray.push(question);
                question.mShapeArray.push(this.mShapeArray[parseInt(22 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(23 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(24 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(25 + this.mTotalGuiBars + this.mTotalInputBars)]);

		//arcs
           	var question = new Question('Describe this?','ZERO HALVES');
                question.mAnswerPool[0] = 'ZERO FOURTHS';
                question.mAnswerPool[1] = 'ONE OF TWO';
                question.mAnswerPool[2] = 'TWO OF TWO';
                this.mQuiz.mQuestionArray.push(question);
                question.mShapeArray.push(this.mShapeArray[parseInt(26 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(27 + this.mTotalGuiBars + this.mTotalInputBars)]);

           	var question = new Question('Describe this?','ONE HALF');
                question.mAnswerPool[0] = 'ZERO OF TWO';
                question.mAnswerPool[1] = 'ONE THIRD';
                question.mAnswerPool[2] = 'TWO OF TWO';
                this.mQuiz.mQuestionArray.push(question);
                question.mShapeArray.push(this.mShapeArray[parseInt(28 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(29 + this.mTotalGuiBars + this.mTotalInputBars)]);

           	var question = new Question('Describe this?','TWO HALVES');
                question.mAnswerPool[0] = 'ZERO OF TWO';
                question.mAnswerPool[1] = 'ONE OF TWO';
                question.mAnswerPool[2] = 'TWO FOURTHS';
                this.mQuiz.mQuestionArray.push(question);
                question.mShapeArray.push(this.mShapeArray[parseInt(30 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(31 + this.mTotalGuiBars + this.mTotalInputBars)]);

                var question = new Question('Describe this?','ZERO FOURTHS');
                question.mAnswerPool[0] = 'ZERO HALVES';
                question.mAnswerPool[1] = 'ONE OF FOUR';
                question.mAnswerPool[2] = 'TWO OF FOUR';
                question.mAnswerPool[2] = 'THREE OF FOUR';
                question.mAnswerPool[2] = 'FOUR OF FOUR';
                this.mQuiz.mQuestionArray.push(question);
                question.mShapeArray.push(this.mShapeArray[parseInt(32 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(33 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(34 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(35 + this.mTotalGuiBars + this.mTotalInputBars)]);

              	var question = new Question('Describe this?','ONE FOURTH');
                question.mAnswerPool[0] = 'ZERO OF FOUR';
                question.mAnswerPool[1] = 'ONE THIRD';
                question.mAnswerPool[2] = 'TWO OF FOUR';
                question.mAnswerPool[2] = 'THREE OF FOUR';
                question.mAnswerPool[2] = 'FOUR OF FOUR';
                this.mQuiz.mQuestionArray.push(question);
                question.mShapeArray.push(this.mShapeArray[parseInt(36 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(37 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(38 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(39 + this.mTotalGuiBars + this.mTotalInputBars)]);

              	var question = new Question('Describe this?','TWO FOURTHS');
                question.mAnswerPool[0] = 'ZERO OF FOUR';
                question.mAnswerPool[1] = 'ONE OF FOUR';
                question.mAnswerPool[2] = 'TWO THIRDS';
                question.mAnswerPool[2] = 'THREE OF FOUR';
                question.mAnswerPool[2] = 'FOUR OF FOUR';
                this.mQuiz.mQuestionArray.push(question);
                question.mShapeArray.push(this.mShapeArray[parseInt(40 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(41 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(42 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(43 + this.mTotalGuiBars + this.mTotalInputBars)]);

              	var question = new Question('Describe this?','THREE FOURTHS');
                question.mAnswerPool[0] = 'ZERO OF FOUR';
                question.mAnswerPool[1] = 'ONE OF FOUR';
                question.mAnswerPool[2] = 'TWO OF FOUR';
                question.mAnswerPool[2] = 'THREE THIRDS';
                question.mAnswerPool[2] = 'FOUR OF FOUR';
                this.mQuiz.mQuestionArray.push(question);
                question.mShapeArray.push(this.mShapeArray[parseInt(44 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(45 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(46 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(47 + this.mTotalGuiBars + this.mTotalInputBars)]);

              	var question = new Question('Describe this?','FOUR FOURTHS');
                question.mAnswerPool[0] = 'ZERO OF FOUR';
                question.mAnswerPool[1] = 'ONE OF FOUR';
                question.mAnswerPool[2] = 'TWO OF FOUR';
                question.mAnswerPool[2] = 'THREE OF FOUR';
                question.mAnswerPool[2] = 'FOUR THIRDS';
                this.mQuiz.mQuestionArray.push(question);
                question.mShapeArray.push(this.mShapeArray[parseInt(48 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(49 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(50 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(51 + this.mTotalGuiBars + this.mTotalInputBars)]);

		//not done
                var question = new Question('Describe this?','1 HALF');
                question.mAnswerPool[0] = '1 QUARTER';
                question.mAnswerPool[1] = '1 HALF';
                question.mAnswerPool[2] = '1 FOURTH';
                this.mQuiz.mQuestionArray.push(question);
                question.mShapeArray.push(this.mShapeArray[parseInt(52 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(53 + this.mTotalGuiBars + this.mTotalInputBars)]);
         
		var question = new Question('Describe this?','1 HALF');
                question.mAnswerPool[0] = '1 QUARTER';
                question.mAnswerPool[1] = '1 HALF';
                question.mAnswerPool[2] = '1 FOURTH';
                this.mQuiz.mQuestionArray.push(question);
                question.mShapeArray.push(this.mShapeArray[parseInt(54 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(55 + this.mTotalGuiBars + this.mTotalInputBars)]);

		var question = new Question('Describe this?','1 FOURTH');
                question.mAnswerPool[0] = '2 QUARTERS';
                question.mAnswerPool[1] = '1 THIRD';
                question.mAnswerPool[2] = '3 FOURTHS';
                this.mQuiz.mQuestionArray.push(question);
                question.mShapeArray.push(this.mShapeArray[parseInt(56 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(57 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(58 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(59 + this.mTotalGuiBars + this.mTotalInputBars)]);

	        var question = new Question('Describe this?','1 FOURTH');
                question.mAnswerPool[0] = '1 THIRD';
                question.mAnswerPool[1] = '1 HALF';
                question.mAnswerPool[2] = '3 FOURTHS';
                this.mQuiz.mQuestionArray.push(question);
                question.mShapeArray.push(this.mShapeArray[parseInt(60 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(61 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(62 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(63 + this.mTotalGuiBars + this.mTotalInputBars)]);

            	var question = new Question('Describe this?','1 HALF');
                question.mAnswerPool[0] = '1 QUARTER';
                question.mAnswerPool[1] = '1 HALF';
                question.mAnswerPool[2] = '1 FOURTH';
                this.mQuiz.mQuestionArray.push(question);
                question.mShapeArray.push(this.mShapeArray[parseInt(64 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(65 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(66 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(67 + this.mTotalGuiBars + this.mTotalInputBars)]);

                var question = new Question('Describe this?','1 HALF');
                question.mAnswerPool[0] = '1 QUARTER';
                question.mAnswerPool[1] = '1 HALF';
                question.mAnswerPool[2] = '1 FOURTH';
                this.mQuiz.mQuestionArray.push(question);
                question.mShapeArray.push(this.mShapeArray[parseInt(68 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(69 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(70 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(71 + this.mTotalGuiBars + this.mTotalInputBars)]);

	        var question = new Question('Describe this?','3 FOURTHS');
                question.mAnswerPool[0] = '1 QUARTER';
                question.mAnswerPool[1] = '3 HALVES';
                question.mAnswerPool[2] = '1 FOURTH';
                this.mQuiz.mQuestionArray.push(question);
                question.mShapeArray.push(this.mShapeArray[parseInt(72 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(73 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(74 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(75 + this.mTotalGuiBars + this.mTotalInputBars)]);

                var question = new Question('Describe this?','3 FOURTHS');
                question.mAnswerPool[0] = '1 QUARTER';
                question.mAnswerPool[1] = '3 HALVES';
                question.mAnswerPool[2] = '1 FOURTH';
                this.mQuiz.mQuestionArray.push(question);
                question.mShapeArray.push(this.mShapeArray[parseInt(72 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(73 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(74 + this.mTotalGuiBars + this.mTotalInputBars)]);
                question.mShapeArray.push(this.mShapeArray[parseInt(75 + this.mTotalGuiBars + this.mTotalInputBars)]);

               	//buffer
                this.mQuiz.mQuestionArray.push(new Question('buf','buf'));

		this.mQuiz.randomize(10);
	},

	createWorld: function()
	{
		this.parent();

		this.mShapeArray.push(new Rectangle(50,50,50,200,this,this.mRaphael,0,0,.5,"#19070B",1,false));
		this.mShapeArray.push(new Rectangle(50,50,100,200,this,this.mRaphael,0,0,.5,"#19070B",1,false));

		this.mShapeArray.push(new Rectangle(50,50,50,200,this,this.mRaphael,0,0,.5,"#19070B",1,false));
		this.mShapeArray.push(new Rectangle(50,50,100,200,this,this.mRaphael,.75,.75,.75,"#19070B",1,false));
		
		this.mShapeArray.push(new Rectangle(50,50,50,200,this,this.mRaphael,.75,.75,.75,"#19070B",1,false));
		this.mShapeArray.push(new Rectangle(50,50,100,200,this,this.mRaphael,.75,.75,.75,"#19070B",1,false));
		
		this.mShapeArray.push(new Rectangle(50,50,50,200,this,this.mRaphael,0,0,.5,"#19070B",1,false));
		this.mShapeArray.push(new Rectangle(50,50,100,200,this,this.mRaphael,0,0,.5,"#19070B",1,false));
		this.mShapeArray.push(new Rectangle(50,50,150,200,this,this.mRaphael,0,0,.5,"#19070B",1,false));
		this.mShapeArray.push(new Rectangle(50,50,200,200,this,this.mRaphael,0,0,.5,"#19070B",1,false));
		
		this.mShapeArray.push(new Rectangle(50,50,50,200,this,this.mRaphael,.75,.75,.75,"#19070B",1,false));
		this.mShapeArray.push(new Rectangle(50,50,100,200,this,this.mRaphael,0,0,.5,"#19070B",1,false));
		this.mShapeArray.push(new Rectangle(50,50,150,200,this,this.mRaphael,0,0,.5,"#19070B",1,false));
		this.mShapeArray.push(new Rectangle(50,50,200,200,this,this.mRaphael,0,0,.5,"#19070B",1,false));
		
		this.mShapeArray.push(new Rectangle(50,50,50,200,this,this.mRaphael,.75,.75,.75,"#19070B",1,false));
		this.mShapeArray.push(new Rectangle(50,50,100,200,this,this.mRaphael,.75,.75,.75,"#19070B",1,false));
		this.mShapeArray.push(new Rectangle(50,50,150,200,this,this.mRaphael,0,0,.5,"#19070B",1,false));
		this.mShapeArray.push(new Rectangle(50,50,200,200,this,this.mRaphael,0,0,.5,"#19070B",1,false));
		
		this.mShapeArray.push(new Rectangle(50,50,50,200,this,this.mRaphael,.75,.75,.75,"#19070B",1,false));
		this.mShapeArray.push(new Rectangle(50,50,100,200,this,this.mRaphael,.75,.75,.75,"#19070B",1,false));
		this.mShapeArray.push(new Rectangle(50,50,150,200,this,this.mRaphael,.75,.75,.75,"#19070B",1,false));
		this.mShapeArray.push(new Rectangle(50,50,200,200,this,this.mRaphael,0,0,.5,"#19070B",1,false));
		
		this.mShapeArray.push(new Rectangle(50,50,50,200,this,this.mRaphael,.75,.75,.75,"#19070B",1,false));
		this.mShapeArray.push(new Rectangle(50,50,100,200,this,this.mRaphael,.75,.75,.75,"#19070B",1,false));
		this.mShapeArray.push(new Rectangle(50,50,150,200,this,this.mRaphael,.75,.75,.75,"#19070B",1,false));
		this.mShapeArray.push(new Rectangle(50,50,200,200,this,this.mRaphael,.75,.75,.75,"#19070B",1,false));
		
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,0,Math.PI,0,0,.5,"#19070B",1,false));
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,Math.PI,Math.PI*2,0,0,.5,"#19070B",1,false));
		
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,0,Math.PI,0,0,.5,"#19070B",1,false));
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,Math.PI,Math.PI*2,0.8,1,1,"#19070B",1,false));
		
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,0,Math.PI,0.8,1,1,"#19070B",1,false));
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,Math.PI,Math.PI*2,0.8,1,1,"#19070B",1,false));
		
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,0,Math.PI/2,0,0,.5,"#19070B",1,false));
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,Math.PI/2,Math.PI,0,0,.5,"#19070B",1,false));
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,Math.PI,Math.PI + Math.PI/2,0,0,.5,"#19070B",1,false));
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,Math.PI + Math.PI/2,Math.PI*2,0,0,.5,"#19070B",1,false));
		
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,0,Math.PI/2,.75,.75,.75,"#19070B",1,false));
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,Math.PI/2,Math.PI,0,0,.5,"#19070B",1,false));
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,Math.PI,Math.PI + Math.PI/2,0,0,.5,"#19070B",1,false));
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,Math.PI + Math.PI/2,Math.PI*2,0,0,.5,"#19070B",1,false));
		
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,0,Math.PI/2,.75,.75,.75,"#19070B",1,false));
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,Math.PI/2,Math.PI,.75,.75,.75,"#19070B",1,false));
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,Math.PI,Math.PI + Math.PI/2,0,0,.5,"#19070B",1,false));
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,Math.PI + Math.PI/2,Math.PI*2,0,0,.5,"#19070B",1,false));
		
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,0,Math.PI/2,.75,.75,.75,"#19070B",1,false));
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,Math.PI/2,Math.PI,.75,.75,.75,"#19070B",1,false));
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,Math.PI,Math.PI + Math.PI/2,.75,.75,.75,"#19070B",1,false));
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,Math.PI + Math.PI/2,Math.PI*2,0,0,.5,"#19070B",1,false));
		
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,0,Math.PI/2,.75,.75,.75,"#19070B",1,false));
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,Math.PI/2,Math.PI,.75,.75,.75,"#19070B",1,false));
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,Math.PI,Math.PI + Math.PI/2,.75,.75,.75,"#19070B",1,false));
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,Math.PI + Math.PI/2,Math.PI*2,.75,.75,.75,"#19070B",1,false));
		
		this.mShapeArray.push(new Rectangle(50,50,50,200,this,this.mRaphael,0,0,.5,"#19070B",1,false));
		this.mShapeArray.push(new Rectangle(50,50,100,200,this,this.mRaphael,.75,.75,.75,"#19070B",1,false));
		
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,0,Math.PI,0,0,.5,"#19070B",1,false));
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,Math.PI,Math.PI*2,0.8,1,1,"#19070B",1,false));
		
		this.mShapeArray.push(new Rectangle(50,50,50,200,this,this.mRaphael,.75,.75,.75,"#19070B",1,false));
		this.mShapeArray.push(new Rectangle(50,50,100,200,this,this.mRaphael,0,0,.5,"#19070B",1,false));
		this.mShapeArray.push(new Rectangle(50,50,150,200,this,this.mRaphael,0,0,.5,"#19070B",1,false));
		this.mShapeArray.push(new Rectangle(50,50,200,200,this,this.mRaphael,0,0,.5,"#19070B",1,false));
		
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,0,Math.PI/2,.75,.75,.75,"#19070B",1,false));
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,Math.PI/2,Math.PI,0,0,.5,"#19070B",1,false));
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,Math.PI,Math.PI + Math.PI/2,0,0,.5,"#19070B",1,false));
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,Math.PI + Math.PI/2,Math.PI*2,0,0,.5,"#19070B",1,false));

	        this.mShapeArray.push(new Rectangle(50,50,50,200,this,this.mRaphael,.75,.75,.75,"#19070B",1,false));
                this.mShapeArray.push(new Rectangle(50,50,100,200,this,this.mRaphael,.75,.75,.75,"#19070B",1,false));
                this.mShapeArray.push(new Rectangle(50,50,150,200,this,this.mRaphael,0,0,.5,"#19070B",1,false));
                this.mShapeArray.push(new Rectangle(50,50,200,200,this,this.mRaphael,0,0,.5,"#19070B",1,false));

		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,0,Math.PI/2,.75,.75,.75,"#19070B",1,false));
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,Math.PI/2,Math.PI,.75,.75,.75,"#19070B",1,false));
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,Math.PI,Math.PI + Math.PI/2,0,0,.5,"#19070B",1,false));
		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,Math.PI + Math.PI/2,Math.PI*2,0,0,.5,"#19070B",1,false));

	        this.mShapeArray.push(new Rectangle(50,50,50,200,this,this.mRaphael,.75,.75,.75,"#19070B",1,false));
                this.mShapeArray.push(new Rectangle(50,50,100,200,this,this.mRaphael,.75,.75,.75,"#19070B",1,false));
                this.mShapeArray.push(new Rectangle(50,50,150,200,this,this.mRaphael,.75,.75,.75,"#19070B",1,false));
                this.mShapeArray.push(new Rectangle(50,50,200,200,this,this.mRaphael,0,0,.5,"#19070B",1,false));

 		this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,0,Math.PI/2,.75,.75,.75,"#19070B",1,false));
                this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,Math.PI/2,Math.PI,.75,.75,.75,"#19070B",1,false));
                this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,Math.PI,Math.PI + Math.PI/2,.75,.75,.75,"#19070B",1,false));
                this.mShapeArray.push(new Arc(this,this.mRaphael,200,200,50,Math.PI + Math.PI/2,Math.PI*2,0,0,.5,"#19070B",1,false));
	
	}
});
