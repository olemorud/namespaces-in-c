
#include <stdio.h>

#include "module.h"

int main()
{
	int x = 4;

#ifdef NAMESPACES
#pragma message "namespaces enabled"
	x = module.succ(x);
	x = module.succ(x);
#else
	x = succ(x);
	x = succ(x);
#endif

	printf("%d\n", x);

	return 0;
}
