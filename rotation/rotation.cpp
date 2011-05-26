#include "rotation.h"

//player,client,shape,animation combo
#include "../client/client.h"
#include "../player/player.h"
#include "../shape/ogreShape.h"
#include "../animation/ogreAnimation.h"

//rotation states
#include "rotationStateMachine.h"
#include "rotationStates.h"

//key defines prob should be changed to a variable if possible
#define KEY_UP					1
#define KEY_DOWN				2
#define KEY_LEFT				4
#define KEY_RIGHT				8

Rotation::Rotation(Player* player)
{
	mPlayer = player;

	mRotInterpLimitHigh = 6.0; //how far away from server till we try to catch up
	mRotInterpLimitLow  = 4.0; //how close to server till we are in sync
	mRotInterpIncrease  = 1.20f; //rot factor used to catchup to server
    mRotInterpDecrease  = 0.80f; //rot factor used to allow server to catchup to client

	//rotation
	mServerRotOld  = Ogre::Vector3::ZERO;
	mServerRotNew  = Ogre::Vector3::ZERO;
	mDegreesToServer = 0.0;

	//rotation states
	mRotationStateMachine = new RotationStateMachine(this);    //setup the state machine
	mRotationStateMachine->setCurrentState      (Normal_Rotation::Instance());
	mRotationStateMachine->setPreviousState     (Normal_Rotation::Instance());
	mRotationStateMachine->setGlobalState       (NULL);
	//mRotationStateMachine->changeState        (Normal_Rotation::Instance());

}

Rotation::~Rotation()
{
}

void Rotation::processTick()
{
	mServerRotOld  = Ogre::Vector3::ZERO;
    mServerRotNew  = Ogre::Vector3::ZERO;

    mServerRotOld.x = mPlayer->mServerFrame.mRotOld.x;
    mServerRotOld.z = mPlayer->mServerFrame.mRotOld.z;

    mServerRotNew.x = mPlayer->mServerFrame.mRot.x;
    mServerRotNew.z = mPlayer->mServerFrame.mRot.z;

    mServerRotNew.normalise();
    mServerRotOld.normalise();

    //calculate how far off we are from server
    Quaternion toServer = mPlayer->getSceneNode()->getOrientation().zAxis().getRotationTo(mServerRotNew,Vector3::UNIT_Y);

    // convert to degrees
    mDegreesToServer = toServer.getYaw().valueDegrees();

    //calculate server rotation from last tick to new one
	Quaternion serverRot = mPlayer->mServerPlayer->getSceneNode()->getOrientation().zAxis().getRotationTo(mServerRotNew, Vector3::UNIT_Y);

    // convert to degrees
    mServerRotSpeed = serverRot.getYaw().valueDegrees();

    if(abs(mServerRotSpeed) < 0.01)
	{
		mServerRotSpeed = 0.0;
	}
    
	//LogString("mPlayer->mServerRotSpeed %f", mPlayer->mServerRotSpeed);

    // yaw server guy to new rot
    mPlayer->mServerPlayer->getSceneNode()->yaw(Degree(mServerRotSpeed));

	mRotationStateMachine->update();
}

void Rotation::interpolateTick(float renderTime)
{
    float rotSpeed = mPlayer->mCommand.mRotSpeed * renderTime;
	mPlayer->getSceneNode()->yaw(Degree(rotSpeed));

	Ogre::Vector3 serverRotNew  = Ogre::Vector3::ZERO;

	serverRotNew.x = mPlayer->mServerFrame.mRot.x;
	serverRotNew.z = mPlayer->mServerFrame.mRot.z;

	serverRotNew.normalise();

	//calculate how far off we are from server
    Quaternion toServer = mPlayer->getSceneNode()->getOrientation().zAxis().getRotationTo(serverRotNew,Vector3::UNIT_Y);

	// convert to degrees
	Real mDegreesToServer = toServer.getYaw().valueDegrees();

	// are we back in sync
	if(abs(mDegreesToServer) < mRotInterpLimitLow)
	{
       mPlayer->mCommand.mCatchupRot = false;
	}

	if (mServerRotSpeed == 0.0 && mPlayer->mCommand.mCatchupRot == false)
	{
       mPlayer->mCommand.mRotSpeed = 0.0;
	}
}

