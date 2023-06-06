
#include "module.h"

inline int succ(int x)
{
	return x+1;
}

struct exports module = {
	.succ = succ,
};

