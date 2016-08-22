#ifndef ENTITY_H
#define ENTITY_H

class BaseEntity
{
private:
int mID;

 static int  mNextValidID;

  //this must be called within the constructor to make sure the ID is set
  //correctly. It verifies that the value passed to the method is greater
  //or equal to the next valid ID, before setting the ID and incrementing
  //the next valid ID
  void setID(int val);

public:

  BaseEntity(int id)
  {
    setID(id);
  }

  virtual ~BaseEntity(){}

  //all entities must implement an update function
  virtual void  update()=0;

  int           getID()const{return mID;}  
};



#endif
