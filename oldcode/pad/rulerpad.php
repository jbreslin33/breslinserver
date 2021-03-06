var RulerPad = new Class(
{

Extends: Pad,

	initialize: function(application)
	{
       		this.parent(application);
	},

        showQuestion: function()
        {
              	//set all shapes invisible to start semi-clean
                for (i = 0; i < this.mShapeArray.length; i++)
                {
                        this.mShapeArray[i].setVisibility(false);
                }

                if (this.mApplication.mGame.mQuiz)
                {
                        if (this.mApplication.mGame.mQuiz.getQuestion())
                        {
                                this.mQuiz.getQuestion().showShapes();
                                this.mQuiz.getQuestion().setChoices();
                                this.mNumQuestion.mMesh.innerHTML = this.mQuiz.getQuestion().getQuestion();
                        }
                }
               
		//show input pad 
		for (i = this.mTotalGuiBars; i < parseInt(this.mTotalGuiBars + this.mTotalInputBars); i++)
                {
                        this.mShapeArray[i].setVisibility(true);
                }
		
		if (this.mNumAnswer)
		{
                	this.mNumAnswer.mMesh.focus();
		}
        },

        inputKeyHit: function(e)
        {
                if (e.key == 'enter')
                {
                        APPLICATION.mGame.mUserAnswer = APPLICATION.mGame.mNumAnswer.mMesh.value;
                }
        },

        numPadHit: function()
        {
                if (this.innerHTML == 'Enter')
                {
                        APPLICATION.mGame.mUserAnswer = APPLICATION.mGame.mNumAnswer.mMesh.value;
                }
                else
                {
                        APPLICATION.mGame.mNumAnswer.mMesh.value = APPLICATION.mGame.mNumAnswer.mMesh.value + '' + this.innerHTML;
                }
        },

	createWorld: function()
        {
		this.parent();

		this.createInput();
	},
        
	createNumQuestion: function()
        {
                //question
                this.mNumQuestion = new Shape(200,150,120,100,this,"","","");
                this.mShapeArray.push(this.mNumQuestion);
                this.mNumQuestion.mCollidable = false;
                this.mNumQuestion.mCollisionOn = false;
        },

	createInput: function()
	{
                //question
                this.createNumQuestion();

                //answer
                this.mNumAnswer = new Shape(100,25,100,150,this,"INPUT","","");
                this.mNumAnswer.mMesh.value = '';
                this.mNumAnswer.mMesh.addEvent('keypress',this.inputKeyHit);
                this.mShapeArray.push(this.mNumAnswer);

                //7
                this.mNumSeven = new Shape(50,50,50,200,this,"BUTTON","","");
                this.mNumSeven.mMesh.innerHTML = '7';
                this.mNumSeven.mMesh.addEvent('click',this.numPadHit);
                this.mShapeArray.push(this.mNumSeven);

                //8
                this.mNumEight = new Shape(50,50,100,200,this,"BUTTON","","");
                this.mNumEight.mMesh.innerHTML = '8';
                this.mNumEight.mMesh.addEvent('click',this.numPadHit);
                this.mShapeArray.push(this.mNumEight);

                //9
                this.mNumNine = new Shape(50,50,150,200,this,"BUTTON","","");
                this.mNumNine.mMesh.innerHTML = '9';
                this.mNumNine.mMesh.addEvent('click',this.numPadHit);
                this.mShapeArray.push(this.mNumNine);

                //4
                this.mNumFour = new Shape(50,50,50,250,this,"BUTTON","","");
                this.mNumFour.mMesh.innerHTML = '4';
                this.mNumFour.mMesh.addEvent('click',this.numPadHit);
                this.mShapeArray.push(this.mNumFour);

                //5
                this.mNumFive = new Shape(50,50,100,250,this,"BUTTON","","");
                this.mNumFive.mMesh.innerHTML = '5';
                this.mNumFive.mMesh.addEvent('click',this.numPadHit);
                this.mShapeArray.push(this.mNumFive);

                //6
                this.mNumSix = new Shape(50,50,150,250,this,"BUTTON","","");
                this.mNumSix.mMesh.innerHTML = '6';
                this.mNumSix.mMesh.addEvent('click',this.numPadHit);
                this.mShapeArray.push(this.mNumSix);

                //1
                this.mNumOne = new Shape(50,50,50,300,this,"BUTTON","","");
                this.mNumOne.mMesh.innerHTML = '1';
                this.mNumOne.mMesh.addEvent('click',this.numPadHit);
                this.mShapeArray.push(this.mNumOne);

                //2
                this.mNumTwo = new Shape(50,50,100,300,this,"BUTTON","","");
                this.mNumTwo.mMesh.innerHTML = '2';
                this.mNumTwo.mMesh.addEvent('click',this.numPadHit);
                this.mShapeArray.push(this.mNumTwo);

                //3
                this.mNumThree = new Shape(50,50,150,300,this,"BUTTON","","");
                this.mNumThree.mMesh.innerHTML = '3';
                this.mNumThree.mMesh.addEvent('click',this.numPadHit);
                this.mShapeArray.push(this.mNumThree);

                //0
                this.mNumZero = new Shape(100,50,75,350,this,"BUTTON","","");
                this.mNumZero.mMesh.innerHTML = '0';
                this.mNumZero.mMesh.addEvent('click',this.numPadHit);
                this.mShapeArray.push(this.mNumZero);

                //.
                this.mNumDecimal = new Shape(50,50,150,350,this,"BUTTON","","");
                this.mNumDecimal.mMesh.innerHTML = '.';
                this.mNumDecimal.mMesh.addEvent('click',this.numPadHit);
                this.mShapeArray.push(this.mNumDecimal);

                //enter
                this.mNumEnter = new Shape(50,100,200,325,this,"BUTTON","","");
                this.mNumEnter.mMesh.innerHTML = 'Enter';
                this.mNumEnter.mMesh.addEvent('click',this.numPadHit);
                this.mShapeArray.push(this.mNumEnter);

		this.mTotalInputBars = this.mShapeArray.length - this.mTotalGuiBars;

                //set all pad shapes invisible to start semi-clean
                for (i = this.mTotalGuiBars; i < this.mShapeArray.length; i++)
                {
                        this.mShapeArray[i].setVisibility(false);
                        this.mShapeArray[i].mCollidable = false;
                        this.mShapeArray[i].mCollisionOn = false;
                }
        }
});
