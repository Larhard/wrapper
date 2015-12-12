#include <stdio.h>
#include <sys/stat.h>
#include <unistd.h>

char* program_name;

void print_usage(void)
{
	printf("usage: %s\n", program_name);
}

int main(int argc, char *argv[])
{
	program_name = argv[0];

	int res;

	if (argc != 1) {
		print_usage();
		return 1;
	}

	execl(COMMAND, NULL);

	perror("error");
	return 1;
}
