
int succ(int x);

struct exports {
	int (*succ)(int);
};

extern struct exports module;
