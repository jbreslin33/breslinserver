var g4_oa_a_3 = new Class(
{

Extends: MultipleChoicePad,

	initialize: function(application)
	{
       		this.parent(application);

		this.setScoreNeeded(15);
	},

        createInput: function()
        {
                this.parent();
                this.mButtonA.setPosition(135,290);
                this.mButtonB.setPosition(385,290);
                this.mButtonC.setPosition(635,290);
                
		this.mButtonA.setSize(240,220);
		this.mButtonB.setSize(240,220);
		this.mButtonC.setSize(240,220);
        },

        createNumQuestion: function()
        {
                this.parent();
                this.mNumQuestion.setSize(650,200);
                this.mNumQuestion.setPosition(350,140);
        },

	//showCorrectAnswer
        showCorrectAnswerEnter: function()
        {
                this.parent();

                this.mShapeArray[1].setSize(650,200);
   		this.mShapeArray[1].setPosition(350,140);
        },

	makeTypeA: function()
	{
		question = '';
		randomChoice = Math.floor(Math.random()*2);
		if (randomChoice == 0)
		{	
			question = new Question('There are 9 blue pencils in a desk drawer. There are 8 more red pencils than blue pencils, and there are twice as many green pencils as red pencils. How many pencils are there altogether?','Find the number of red pencils: 9+8=17. Find the number of green pencils: 2x17=34. Find the total number of pencils: 9+17+34=60.'); 
 			question.mAnswerPool.push('Find the number of red pencils: 9+8=17. Find the number of green pencils: 2+7=9. Find the total number of pencils: 9+17+9=35.');
               		question.mAnswerPool.push('Find the number green pencils: 9+8=17. Find the number of red pencils: 2x8=16. Find the total number of pencils: 9+17+16=42.');
                	question.mAnswerPool.push('Find the number of red pencils: 9+8=17. Find the number of green pencils: 2x17=34. Find the total number of pencils: 9+17+34=60.');
		}
		if (randomChoice == 1)
		{	
			question = new Question('There are 9 blue fish in a tank. There are 8 more red fish than blue fish, and there are twice as many green fish as red fish. How many fish are there altogether?','Find the number of red fish: 9+8=17. Find the number of green fish: 2x17=34. Find the total number of fish: 9+17+34=60.'); 
 			question.mAnswerPool.push('Find the number of red fish: 9+8=17. Find the number of green fish: 2+7=9. Find the total number of fish: 9+17+9=35.');
               		question.mAnswerPool.push('Find the number green fish: 9+8=17. Find the number of red fish: 2x8=16. Find the total number of fish: 9+17+16=42.');
                	question.mAnswerPool.push('Find the number of red fish: 9+8=17. Find the number of green fish: 2x17=34. Find the total number of fish: 9+17+34=60.');
		}
                this.mQuiz.mQuestionArray.push(question);
		question.mRandomChoices = true;
	},	

	makeTypeB: function()
	{
		randomChoice = Math.floor(Math.random()*2);
		randomChoice = 0;
		question = '';
		if (randomChoice == 0)
		{	
			question = new Question('There were 115 people at a party. There were 5 times as many people as there were men. There were twice as many women as men. The remaining people at the party were children. How many children at the party? What step cannot be used to solve the problem?','115-23=92 children');
			question.mAnswerPool.push('115-23=92 children');
			question.mAnswerPool.push('115/5=23 children');
			question.mAnswerPool.push('23x2=46 children');
		}
                this.mQuiz.mQuestionArray.push(question);
		question.mRandomChoices = true;
	},

	makeTypeC: function()
	{
		randomChoice = Math.floor(Math.random()*2);
		randomChoice = 0;
		question = '';
		if (randomChoice == 0)
		{	
			question = new Question('Mr. Roache has 24 math students. He divides the class equally into groups of 3 for an assignment. There are 9 ipads in the classroom. Are there enough ipads for each group to use one?','Yes, there will be enough for each group to have one with one ipad left over.');
			question.mAnswerPool.push('Yes, there will be enough for each group to have one with one ipad left over.');
			question.mAnswerPool.push('No, Mr. Roache needs one more ipad.');
			question.mAnswerPool.push('Yes, there will be enough for each group to have one with two unused ipads left over.');
		}
                this.mQuiz.mQuestionArray.push(question);
		question.mRandomChoices = true;
	},
	
	makeTypeD: function()
	{
		question = '';
                b = Math.floor(Math.random()*8)+2;
                c = Math.floor(Math.random()*8)+2;
		a = (b * c * 12) + Math.floor(Math.random()*3);
		x = parseInt( a - (b * c * 12)  );
		
		randomChoice = Math.floor(Math.random()*2);

		if (randomChoice == 0)
		{	
			question = new Question('A teacher had ' + a + ' stickers. She gave each student ' + b + ' stickers. If there are ' + c + ' dozen students in the class, will there be any stickers left over?','Yes');
		}
		if (randomChoice == 1)
		{	
			question = new Question('A girl brought ' + a + ' cupcakes to her birthday party. She gave each kid at her party ' + b + ' cupcakes. If there are ' + c + ' dozen kids at her party, will there be any cupcakes left over?','Yes');
		}

		if (x == a)	 
		{
			question.setAnswer('No',0);
		}
		question.mAnswerPool.push('Yes');
		question.mAnswerPool.push('No');
                this.mQuiz.mQuestionArray.push(question);
		question.mRandomChoices = true;
	},
    
	makeTypeE: function()
        {
                question = '';

                a = Math.floor(Math.random()*8)+2;
                b = Math.floor(Math.random()*8)+2;
                c = Math.floor(Math.random()*8)+2;
                d = Math.floor(Math.random()*8)+2;
		x = parseInt(a + (a * b) + c - d);

                randomChoice = Math.floor(Math.random()*2);

                if (randomChoice == 0)
                {
                        question = new Question('John had ' + a + ' footballs. His coach gave him ' + b + ' times that amount after practice. Then he found ' + c + ' more in his backyard. He gave ' + d + ' footballs to his friend. How many footballs does John have left?',x);
                }
                if (randomChoice == 1)
                {
                        question = new Question('Steve had ' + a + ' blocks. His parent gave him ' + b + ' times that amount. Then he found ' + c + ' more while walking around. He gave ' + d + ' blocks to his friend. How many blocks does Steve have left?',x);
		}
                question.mAnswerPool.push(x);
                question.mAnswerPool.push(x - (Math.floor(Math.random()*5)+1));
                question.mAnswerPool.push(x + (Math.floor(Math.random()*5)+1));
                this.mQuiz.mQuestionArray.push(question);
                question.mRandomChoices = true;
        },

        makeTypeF: function()
        {
                question = '';

                b = Math.floor(Math.random()*8)+2;
                c = Math.floor(Math.random()*8)+2;
                d = Math.floor(Math.random()*8)+2;
                e = Math.floor(Math.random()*8)+2;
                a = (Math.floor(Math.random()*8)+2) + ( (b * c) + d + (e * c) );
                x = parseInt( a - ( (b * c) + d + (e * c) ) );

                randomChoice = Math.floor(Math.random()*2);

                if (randomChoice == 0)
                {
                        question = new Question('Holly had ' + a + '$ to spend at a toy store. She bought ' + b + ' balls that cost ' + c + '$ each and a board game for ' + d + '$. She also spent ' + e + ' times as much on a video game as on one ball. How much does Holly have left to spend?',x + '$');
                }
                if (randomChoice == 1)
                {
                        question = new Question('Dave had ' + a + '$ to spend at the clothes store . He bought ' + b + ' shirts that cost ' + c + '$ each and a belt for ' + d + '$. He also spent ' + e + ' times as much on a tie as on one shirt. How much does Dave have left to spend?',x + '$');
                }
                question.mAnswerPool.push(x + '$');
		minusX = x - (Math.floor(Math.random()*8)+1);	
		if (minusX < 1)
		{
			minusX = x-1;
		}
                question.mAnswerPool.push(minusX + '$');
                question.mAnswerPool.push(x + (Math.floor(Math.random()*8)+1) + '$');
                this.mQuiz.mQuestionArray.push(question);
                question.mRandomChoices = true;
        },
  
	makeTypeG: function()
        {
                question = '';

		a = 0;
		b = 0;
		c = 0;
		d = 0;
		e = 0;
		x = 100;
		
		while (x > 10 || x < -10)
		{
                	a = Math.floor(Math.random()*15)+2;
                	b = Math.floor(Math.random()*15)+2;
                	c = Math.floor(Math.random()*15)+2;
                	d = Math.floor(Math.random()*8)+2;
                	e = Math.floor(Math.random()*8)+2;
			x = parseInt( (a + b + c) - (d * e) );
		}

                randomChoice = Math.floor(Math.random()*2);

                if (randomChoice == 0)
                {
                        question = new Question('Carly saved ' + a + '$ in September. She saved ' + b + '$ in October. She saved ' + c + '$ in November. Carly wants to buy video games that cost ' + d + '$ each. Did she save enough money to buy ' + e + ' video games?','Yes');
                }
                if (randomChoice == 1)
                {
                        question = new Question('Brad saved ' + a + '$ on Tuesday. He saved ' + b + '$ on Wednesday. He saved ' + c + '$ on Thursday. Brad wants to buy game cards that cost ' + d + '$ each. Did he save enough money to buy ' + e + ' game cards?','Yes');
                }
		if (x < 0)
		{
			question.setAnswer('No',0);
		}
                question.mAnswerPool.push('Yes');
                question.mAnswerPool.push('No');
                this.mQuiz.mQuestionArray.push(question);
                question.mRandomChoices = true;
        },

       	makeTypeH: function()
        {
                question = '';

                a = Math.floor(Math.random()*15)+2;
                b = Math.floor(Math.random()*15)+2;
                c = Math.floor(Math.random()*5)+2;
                d = Math.floor(Math.random()*5)+7;

		x = parseInt( (a * c) + (b * d) ); 
                e = parseInt( x - (Math.floor(Math.random()*8)-4));

                randomChoice = Math.floor(Math.random()*2);

                if (randomChoice == 0)
                {
                        question = new Question('A group of ' + a + ' children and ' + b + ' adults are going to the zoo. Child tickets cost ' + c + '$, and adult tickets cost ' + d + '$. Is ' + e + '$ enough to pay for everyone?','Yes');
                }
                if (randomChoice == 1)
                {
                        question = new Question('A group of ' + a + ' children and ' + b + ' adults are going to the movies. Child tickets cost ' + c + '$, and adult tickets cost ' + d + '$. Is ' + e + '$ enough to pay for everyone?','Yes');
                }
                if (e < x)
                {
                        question.setAnswer('No',0);
                }
                question.mAnswerPool.push('Yes');
                question.mAnswerPool.push('No');
                this.mQuiz.mQuestionArray.push(question);
                question.mRandomChoices = true;
        },

     	makeTypeI: function()
        {
                question = '';

		//total classrooms
                a = Math.floor(Math.random()*5)+10;

		//desks per class
                c = Math.floor(Math.random()*10)+20;

		//random number of empty seats...	
		x = Math.floor((Math.random()*5)+1);  

		//total students equals classes * (desks per room - empty seats per room)
		b = parseInt(a * (c - x));

                randomChoice = Math.floor(Math.random()*2);
	
                if (randomChoice == 0)
                {
                        question = new Question('A school has ' + a + ' classrooms and ' + b + ' students in the whole school. Each classroom has ' + c + ' desks. If there are the same number of students in each classroom how many empty desks will be left in each classroom if all the students get their own desk?',x);
                }
                if (randomChoice == 1)
                {
                        question = new Question('For a school trip there  ' + a + ' buses and ' + b + ' students going on the trip. Each bus has ' + c + ' seats. If there are the same number of students on each bus how many empty seats will be left on each bus if all the students get their own seat?',x);
                }
                question.mAnswerPool.push(x);
		poolB = 0;
		poolC = 0;
		while (x == poolB || x == poolC || poolB == poolC)	
		{
			poolB = Math.floor((Math.random()*5)+1); 
			poolC = Math.floor((Math.random()*5)+1); 
		}
                question.mAnswerPool.push(poolB);
                question.mAnswerPool.push(poolC);
                this.mQuiz.mQuestionArray.push(question);
                question.mRandomChoices = true;
        },
 
	makeTypeJ: function()
        {
                question = '';
		
		//get the containers and slots
                b = Math.floor(Math.random()*10)+7;
                c = Math.floor(Math.random()*10)+20;

                //random number of emptys per container...
                x = Math.floor((Math.random()*20)+1);

		//tally total objects retroactively
		a = parseInt( (b * c) + x );

                randomChoice = Math.floor(Math.random()*2);

                if (randomChoice == 0)
                {
                        question = new Question('Ed has ' + a + ' toy cars. He puts them into cases that hold ' + b + ' cars each. After he fills up ' + c + ' cases, how many cars are not in a case yet?',x);
                }
                if (randomChoice == 1)
                {
                        question = new Question('A class has ' + a + ' ipads. They put them into carts that hold ' + b + ' ipads each. After they fill up ' + c + ' carts, how many ipads are not in a cart yet?',x);
                }
                if (randomChoice == 2)
                {
                        question = new Question('There are ' + a + ' campers at a camp. Each camper recieves ' + b + ' packs of food at the begining of camp. If there are a total of ' + c + ' packs of food in the camp to begin with. How many packs of food will be left over once all the campers recieve their ' + b + ' packs of food each?',x);
                }
                if (randomChoice == 3)
                {
                        question = new Question('There are ' + a + ' kids at an arcade party. Each kid recieves ' + b + ' coins to play video games at the begining of the party. If there are a total of ' + c + ' coins to hand out to begin with. How many coins will be left over once all the kids recieve their ' + b + ' coins?',x);
                }
                if (randomChoice == 4)
                {
                        question = new Question('Emma was getting ready in case the lights go out during the coming storm. She had ' + a + ' candles total. She wants to put ' + b + ' candles in each of the ' + c + ' rooms of her house. How many candles will Emma have left over extra for backup?',x);
                }
                if (randomChoice == 5)
                {
                        question = new Question('Coach Allan had ' + a + ' plastic cones for his soccer players to practice with total. Hhe wants to give ' + b + ' conses to each player to practice with. He has ' + c + ' players on his team. How many cones will will Allan have left over after distibuting them out?',x);
                }
                if (randomChoice == 6)
               	{ 
                        question = new Question('Dave has ' + a + ' decks of game cards. Each deck has ' + b + ' cards in it. He is playing with his ' + c + ' friends and wants to divide of the cards so that everyone has the same amount. If he does this how many cards will be left over?',x);
                }
                question.mAnswerPool.push(x);
                poolB = 0;
                poolC = 0;
                while (x == poolB || x == poolC || poolB == poolC)
                {
                        poolB = Math.floor((Math.random()*20)+1);
                        poolC = Math.floor((Math.random()*20)+1);
                }
                question.mAnswerPool.push(poolB);
                question.mAnswerPool.push(poolC);
                this.mQuiz.mQuestionArray.push(question);
                question.mRandomChoices = true;
        },

	makeTypeK: function()
        {
                question = '';

                //total classrooms
                a = Math.floor(Math.random()*4)+4;
                b = Math.floor(Math.random()*5)+10;
                c = Math.floor(Math.random()*5)+10;
                d = Math.floor(Math.random()*3)+2;

                randomChoice = Math.floor(Math.random()*2);
		randomChoice = 0;
	
		v = '';		

                if (randomChoice == 0)
                {
			v = 'T';
                        question = new Question('Nate practices soccer ' + a + ' days a week. Each day he first practices juggling a ball for ' + b + ' minutes then he practices dribbling for ' + c + ' minutes. He does this a total of ' + d + ' times each day of the week that he practices. What equation can be used to find how much time he spends practicing per week?','' + v + '=' + d + '(' + b + '+' + c + ')' + 'x' + a);
                }

                question.mAnswerPool.push('' + v + '=' + d + '(' + b + '+' + c + ')' + 'x' + a);
                question.mAnswerPool.push('' + v + '=' + d + '(' + b + 'x' + c + ')' + 'x' + a);
                question.mAnswerPool.push('' + v + '=' + a + '(' + b + '+' + c + ')' + '+' + d);
                this.mQuiz.mQuestionArray.push(question);
                question.mRandomChoices = true;
        },

 
	makeTypeL: function()
        {
                question = '';

                //total classrooms
                a = Math.floor(Math.random()*4)+4;
                b = Math.floor(Math.random()*5)+10;
                c = Math.floor(Math.random()*5)+10;
                d = Math.floor(Math.random()*3)+2;

                randomChoice = Math.floor(Math.random()*2);
                randomChoice = 0;

                v = '';

                if (randomChoice == 0)
                {
                        v = 'T';
                        question = new Question('On feeding days at the pet store Laura feeds a treat to ' + a + ' cages with ' + b + ' hamsters in each cage. Each hamster gets ' + c + ' treats a day. She does this ' + d + ' days a week. What equation can be used to find how many treats total Laura gives out per week?','' + v + '=' + c + '(' + a + 'x' + b + ')' + 'x' + d);

                }

                question.mAnswerPool.push('' + v + '=' + c + '(' + a + 'x' + b + ')' + 'x' + d);
                question.mAnswerPool.push('' + v + '=' + a + '(' + b + '+' + c + ')' + 'x' + d);
                question.mAnswerPool.push('' + v + '=' + d + '(' + b + '+' + c + ')' + '-' + a);
                this.mQuiz.mQuestionArray.push(question);
                question.mRandomChoices = true;
        },
   
	makeTypeM: function()
        {
                question = '';

                a = Math.floor(Math.random()*99)+1;
                b = Math.floor(Math.random()*99)+1;
                c = Math.floor(Math.random()*99)+1;
		x = parseInt(a + b + c);

                randomChoice = Math.floor(Math.random()*2);

                if (randomChoice == 0)
                {
                        question = new Question('Lucy played three basketball games. She scored ' + a + ' points in the first game. ' + b + ' points in the second game and ' + c + ' points in the third game. How many points did she score total?',x);
                }
                if (randomChoice == 1)
                {
                        question = new Question('Leanny sold boxes of cookies for three days. She sold ' + a + ' boxes the first day. She sold ' + b + ' boxes the second day and ' + c + ' boxes the third day. How many boxes did she sell total?',x);
                }

		poolB = 0;
		poolC = 0;
		while (x == poolB || x == poolC || poolB == poolC)
		{
			poolB = Math.floor(Math.random()*10)-5; 	
			poolC = Math.floor(Math.random()*10)-5; 	
			poolB = poolB + x;
			poolC = poolC + x;
		}
                question.mAnswerPool.push(x);
                question.mAnswerPool.push(poolB);
                question.mAnswerPool.push(poolC);

                this.mQuiz.mQuestionArray.push(question);
                question.mRandomChoices = true;
        },

	makeTypeN: function()
        {
                question = '';

                b = Math.floor(Math.random()*300)+1;
                c = Math.floor(Math.random()*300)+1;
                x = Math.floor(Math.random()*300)+1;
                a = parseInt(x + b + c);

                randomChoice = Math.floor(Math.random()*2);

                if (randomChoice == 0)
                {
                        question = new Question('Sean ran a total of ' + a + ' meters in three days. He ran ' + b + ' meters the first day. He ran ' + c + ' meters the second day. How many meters did he run the third day?',x);
                }
                if (randomChoice == 1)
                {
                        question = new Question('Leanny sold boxes of cookies for three days. She sold a total of ' + a + ' boxes. She sold ' + b + ' boxes the first day and ' + c + ' boxes the second day. How many boxes did she sell the third day?',x);
                }

                poolB = 0;
                poolC = 0;
                while (x == poolB || x == poolC || poolB == poolC)
                {
                        poolB = Math.floor(Math.random()*10)-5;
                        poolC = Math.floor(Math.random()*10)-5;
                        poolB = poolB + x;
                        poolC = poolC + x;
                }
                question.mAnswerPool.push(x);
                question.mAnswerPool.push(poolB);
                question.mAnswerPool.push(poolC);

                this.mQuiz.mQuestionArray.push(question);
                question.mRandomChoices = true;
        },
     
	makeTypeO: function()
        {
                question = '';

                a = Math.floor(Math.random()*8)+2;
                b = Math.floor(Math.random()*298)+2;
                c = Math.floor(Math.random()*8)+2;
                x = parseInt(a * b * c);

                randomChoice = Math.floor(Math.random()*2);

                if (randomChoice == 0)
                {
                        question = new Question('John ordered baseball cards from the internet. The cards come in boxes. In each box there is ' + a + ' packs of baseball cards. Each pack has ' + b + ' cards in it. If John orders ' + c + ' boxes of cards how many cards will he receive?',x);
                }
                if (randomChoice == 1)
                {
                        question = new Question('Steve bought blocks. The blocks come in crates. In each crate there is ' + a + ' packs of blocks. Each pack has ' + b + ' blocks in it. If Steve orders ' + c + ' crates of blocks how many blocks will he have total?',x);
                }

                poolB = 0;
                poolC = 0;
                while (x == poolB || x == poolC || poolB == poolC)
                {
                        poolB = parseInt(a + b + c);
                        poolC = parseInt( (a + c) * b);
                }
                question.mAnswerPool.push(x);
                question.mAnswerPool.push(poolB);
                question.mAnswerPool.push(poolC);

                this.mQuiz.mQuestionArray.push(question);
                question.mRandomChoices = true;
        },

	createQuestions: function()
        {
 		this.parent();

                this.mQuiz.resetQuestionArray();
		
		this.makeTypeO();	
		this.makeTypeN();	
		this.makeTypeM();	

		this.makeTypeL();	
		this.makeTypeK();	
		this.makeTypeJ();	

		this.makeTypeI();	
		this.makeTypeH();	
		this.makeTypeG();	

		this.makeTypeF();	
		this.makeTypeE();	
		this.makeTypeD();	

		this.makeTypeC();	
		this.makeTypeB();	
		this.makeTypeA();	

		this.mQuiz.randomize(10);

		this.mQuiz.mQuestionArray.push(new Question('buf','buf'));
	}
});
