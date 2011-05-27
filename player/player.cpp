#include "player.h"

#include "../move/move.h"
#include "../rotation/rotation.h"

Player::Player(Client* client, std::string name, Vector3D* position, Ogre::SceneManager* mSceneMgr, std::string mesh, bool clientSide) : Move(this), Rotation(this), OgreShape(name,position,mSceneMgr,mesh,clientSide)
{
	mClient = client;
	//id
	mIndex  = 0;
   	mName = name;
	mProcessedFrame = 0;
	mServerPlayer = NULL;

	mKeyDirection = Vector3::ZERO;
    mGoalDirection = Vector3::ZERO;
}

Player::~Player()
{
}







