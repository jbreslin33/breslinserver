#include "ogreShape.h"

#include "../animation/ogreAnimation.h"
#include "../math/vector3D.h"

#define CHAR_HEIGHT 5          // height of character's center of mass above ground

//constructor for client side ogre shape
OgreShape::OgreShape(std::string name, Vector3D* position, Ogre::SceneManager* sceneManager, std::string mesh, bool clientSide) : Shape(name,position),
OgreAnimation()
{
	mSceneManager = sceneManager;
	mClientSide   = clientSide;
	
	if (mClientSide)
	{
		//let's set our member variables to those passed in for use...

		mMeshName     = mesh;
		mChildSceneNode    = mSceneManager->getRootSceneNode()->createChildSceneNode();

		// put character in starting spawn spot
		mChildSceneNode->translate(position->x,position->y,position->z, Node::TS_LOCAL);

		// create entity and attach mesh to it
		mEntity = mSceneManager->createEntity(mShapeName, mMeshName);
		mChildSceneNode->attachObject(mEntity);


		setupAnimations(mEntity);
		//create an animation instance and pass our entity in
		//mOgreAnimation = new OgreAnimation(mEntity);
	}
	else
	{
		//mSceneManager = root->createSceneManager(Ogre::ST_GENERIC);
	
		// create main model
		mChildSceneNode = mSceneManager->getRootSceneNode()->createChildSceneNode(Vector3::UNIT_Y * CHAR_HEIGHT);
	}
}

OgreShape::~OgreShape()
{
}

