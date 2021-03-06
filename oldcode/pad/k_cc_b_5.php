var k_cc_b_5 = new Class(
{

Extends: NumberPad,

	initialize: function(application)
	{
       		this.parent(application);
		this.setScoreNeeded(10);
	},

	//questions
	createQuestions: function()
        {
		this.parent();
          
		//just the question array reset
                this.mQuiz.resetQuestionArray();

		for (i = 0; i < this.mScoreNeeded; i++)
		{
			var numberToCount = 0;	
			if (this.mApplication.mLevel < 5)
			{	
				var numberToCount = Math.floor((Math.random()*20));	
			}
			else
			{
				var numberToCount = Math.floor((Math.random()*10));	
			}
					
			var question = new Question('How Many?', '' + numberToCount);
                        
			for (s = 0; s < parseInt(numberToCount); s++)
                        {
                                question.mShapeArray.push(this.mShapeArray[parseInt(s + this.mTotalGuiBars + this.mTotalInputBars)]);
			}
			this.mQuiz.mQuestionArray.push(question);
		}
	},
	
	createWorld: function()
        {
		this.parent();

		//scattered
		if (this.mApplication.mLevel < 5)
		{
			this.mShapeArray.push(new Shape(50,50,25,50,this,"/images/bus/kid.png","",""));
                	this.mShapeArray.push(new Shape(50,50,25,100,this,"/images/bus/kid.png","",""));
                	this.mShapeArray.push(new Shape(50,50,25,150,this,"/images/bus/kid.png","",""));
                	this.mShapeArray.push(new Shape(50,50,25,200,this,"/images/bus/kid.png","",""));
                	this.mShapeArray.push(new Shape(50,50,25,250,this,"/images/bus/kid.png","",""));

                	this.mShapeArray.push(new Shape(50,50,75,50,this,"/images/bus/kid.png","",""));
                	this.mShapeArray.push(new Shape(50,50,75,100,this,"/images/bus/kid.png","",""));
                	this.mShapeArray.push(new Shape(50,50,75,150,this,"/images/bus/kid.png","",""));
                	this.mShapeArray.push(new Shape(50,50,75,200,this,"/images/bus/kid.png","",""));
                	this.mShapeArray.push(new Shape(50,50,75,250,this,"/images/bus/kid.png","",""));

                	this.mShapeArray.push(new Shape(50,50,125,50,this,"/images/bus/kid.png","",""));
                	this.mShapeArray.push(new Shape(50,50,125,100,this,"/images/bus/kid.png","",""));
                	this.mShapeArray.push(new Shape(50,50,125,150,this,"/images/bus/kid.png","",""));
                	this.mShapeArray.push(new Shape(50,50,125,200,this,"/images/bus/kid.png","",""));
                	this.mShapeArray.push(new Shape(50,50,125,250,this,"/images/bus/kid.png","",""));

                	this.mShapeArray.push(new Shape(50,50,175,50,this,"/images/bus/kid.png","",""));
                	this.mShapeArray.push(new Shape(50,50,175,100,this,"/images/bus/kid.png","",""));
                	this.mShapeArray.push(new Shape(50,50,175,150,this,"/images/bus/kid.png","",""));
                	this.mShapeArray.push(new Shape(50,50,175,200,this,"/images/bus/kid.png","",""));
                	this.mShapeArray.push(new Shape(50,50,175,250,this,"/images/bus/kid.png","",""));
		
			//make them rectangular			
			for (i = 0; i < this.mShapeArray.length; i++)
                        {
                                if (i < 5)
                                {
                                        this.mShapeArray[parseInt(i + this.mTotalGuiBars + this.mTotalInputBars)].setPosition(parseInt(i * 50 + 50), 50)
                                }
                                if (i >= 5 && i < 11)
                                {
                                        this.mShapeArray[parseInt(i + this.mTotalGuiBars + this.mTotalInputBars)].setPosition(50,parseInt(i * 50 - 135))
                                }
                                if (i >= 11 && i < 15)
                                {
                                        this.mShapeArray[parseInt(i + this.mTotalGuiBars + this.mTotalInputBars)].setPosition(parseInt(i * 50 - 450 ), 365)
                                }
                                if (i >= 15 && i < 20)
                                {
                                        this.mShapeArray[parseInt(i + this.mTotalGuiBars + this.mTotalInputBars)].setPosition(250,parseInt(i * 50 - 635))
                                }
                        }
		}
		
		else
		{
               		//scattered	
			this.mShapeArray.push(new Shape(50,50,25,50,this,"/images/bus/kid.png","",""));
                	this.mShapeArray.push(new Shape(50,50,25,100,this,"/images/bus/kid.png","",""));
                	this.mShapeArray.push(new Shape(50,50,25,150,this,"/images/bus/kid.png","",""));
                	this.mShapeArray.push(new Shape(50,50,25,200,this,"/images/bus/kid.png","",""));
                	this.mShapeArray.push(new Shape(50,50,25,250,this,"/images/bus/kid.png","",""));

                	this.mShapeArray.push(new Shape(50,50,75,50,this,"/images/bus/kid.png","",""));
                	this.mShapeArray.push(new Shape(50,50,75,100,this,"/images/bus/kid.png","",""));
                	this.mShapeArray.push(new Shape(50,50,75,150,this,"/images/bus/kid.png","",""));
                	this.mShapeArray.push(new Shape(50,50,75,200,this,"/images/bus/kid.png","",""));
                	this.mShapeArray.push(new Shape(50,50,75,250,this,"/images/bus/kid.png","",""));

			this.mShapeArray[parseInt(0 + this.mTotalGuiBars + this.mTotalInputBars)].setPosition (150,350);
                        this.mShapeArray[parseInt(1 + this.mTotalGuiBars + this.mTotalInputBars)].setPosition (250,400);
                        this.mShapeArray[parseInt(2 + this.mTotalGuiBars + this.mTotalInputBars)].setPosition (200,250);
                        this.mShapeArray[parseInt(3 + this.mTotalGuiBars + this.mTotalInputBars)].setPosition (150,150);
                        this.mShapeArray[parseInt(4 + this.mTotalGuiBars + this.mTotalInputBars)].setPosition (050,050);
                        this.mShapeArray[parseInt(5 + this.mTotalGuiBars + this.mTotalInputBars)].setPosition (150,050);
                        this.mShapeArray[parseInt(6 + this.mTotalGuiBars + this.mTotalInputBars)].setPosition (250,150);
                        this.mShapeArray[parseInt(7 + this.mTotalGuiBars + this.mTotalInputBars)].setPosition (200,400);
                        this.mShapeArray[parseInt(8 + this.mTotalGuiBars + this.mTotalInputBars)].setPosition (100,350);
                        this.mShapeArray[parseInt(9 + this.mTotalGuiBars + this.mTotalInputBars)].setPosition (100,100);
		} 
	}
});
