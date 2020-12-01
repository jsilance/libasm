#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <fcntl.h>
#include <string.h>
#include <errno.h>

extern size_t	ft_strlen(char *str);
extern ssize_t	ft_write(int fd, char *str, size_t len);
extern size_t	ft_read(int fd, char *str, size_t len);
extern char		*ft_strcpy(char *dst, char *srcs);
extern char		*ft_strdup(char *str);
extern int		ft_strcmp(char *s1, char *s2);

int			main(void)
{
	char	a[30];
	char	b[10];
	char	*c;
	char	*str="0123456789testo";
	char	*str1="0123456789testo";
	char	*str2="testo";
	char	*str3="";
	char	*str4="****test4****";
	size_t	size;

	c = NULL;

	printf("String:\t  [%s]\n", str);

	printf("ft_strlen:[%li]\n", ft_strlen(str));
	printf("ft_strlen:[%li]\n\n", strlen(str));

	printf("ft_strcpy:[%s]\n", ft_strcpy(a, str));
	printf("\ta:[%s]\n\n",a);

	printf("ft_strcmp:[%d]\n", ft_strcmp(str2, str3));
	printf("strcmp:[%d]\n\n", strcmp(str2, str3));

	printf("|[%li]****\n", ft_write(42, "bonjouro", 8));
	printf("|[%li]****\n", write(42, "bonjouro", 8));
	printf("| ft_write\n\n|");

	size = 11;
	printf("|ft_read[%li]\n", ft_read(1, b, size));
	write(1, b, size);

	c = ft_strdup(str4);
	printf("\nstr:[%s]\n", c);
	printf("ft_strdup:[%s]\n", c);
	free(c);
	return (0);
}
