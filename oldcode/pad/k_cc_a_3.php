var k_cc_a_3 = new Class(
{

Extends: NumberPad,

	initialize: function(application)
	{
       		this.parent(application);

		this.setScoreNeeded(10);
	},

	createQuestions: function()
        {
		this.parent();
		
		var totalCount = 0;

		while (totalCount < parseInt(this.mScoreNeeded * 7) || totalCount > parseInt(this.mScoreNeeded * 13))
		{	
			//reset vars and arrays
			totalCount = 0;

			//just the question array reset
			this.mQuiz.resetQuestionArray();

			//loop thru and make potential questions
			for (s = 0; s < this.mScoreNeeded; s++)
			{	
				//random number to count from 0-20
				var objectsToCount = Math.floor((Math.random()*21));		

				var question = new Question('How many kids?', '' + objectsToCount);
				for (i = 0; i < objectsToCount; i++)
				{
					question.mShapeArray.push(this.mShapeArray[parseInt(i + this.mTotalGuiBars + this.mTotalInputBars)]);
				}
				this.mQuiz.mQuestionArray.push(question);

				totalCount = parseInt(totalCount + objectsToCount);
			}
		}
	},

	createWorld: function()
	{
		this.parent();

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
	}
});
