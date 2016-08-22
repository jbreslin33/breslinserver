#ifndef ENTITY_H
#define ENTITY_H

class BaseEntity
{
public:

BaseEntity()
{
}

virtual ~BaseEntity(){}

//all entities must implement an update function
virtual void  update()=0;

};

#endif
