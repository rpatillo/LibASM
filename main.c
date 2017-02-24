/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rpatillo <rpatillo@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/06/14 12:32:27 by rpatillo          #+#    #+#             */
/*   Updated: 2015/06/14 12:32:30 by rpatillo         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#define TEST_IS		//ok
#define TEST_STRLEN	//ok

#define TEST_PUTS	//ok
//#define TEST_PUTSTR	//ok

#define TEST_BZERO	//ok
#define TEST_MEMSET	//ok
#define TEST_MEMCPY	//ok

//#define TEST_STRNEW
#define TEST_STRCPY	//ok
#define TEST_STRDUP	//ok
#define TEST_STRCAT	//ok
#define TEST_STRCLR	//ok

#define TEST_CAT	//ok

#include "libfts.h"
#include <string.h>
#include <stdio.h>
#include <fcntl.h>

int	main(void)
{

#ifdef TEST_IS
	int	is;

	printf("______________________________________ft_is_family\n");

	is = -1;
	while ( ++is < 1000 ) {
		if ( ft_isascii( is ) != 0 ) {
			printf("%3d: ", is);
			if ( ft_isascii( is ) ) printf("isascii ");
			if ( ft_isprint( is ) )
			{
				printf("\033[35misprint --> %c <-- \033[0m", is);
				printf("upper[%c] ", ft_toupper(is));
				printf("lower[%c] ", ft_tolower(is));
			}
//			if ( ft_isgraph( is ) ) printf("isgraph ");
			//		if ( ft_ispunct( is ) ) printf("\033[33mispunct \033[0m");
			//if ( ft_iscntrl( is ) ) printf("\033[32miscntrl \033[0m");
			if ( ft_isspace( is ) ) printf("\033[30;46misspace \033[0m");
			//if ( ft_isblank( is ) ) printf("\033[7misblank \033[0m");
			if ( ft_isalnum( is ) ) printf("\033[36misalnum \033[0m");
			if ( ft_isdigit( is ) ) printf("isdigit ");
			if ( ft_isalpha( is ) ) printf("isalpha ");
			if ( ft_islower( is ) ) printf("islower ");
			if ( ft_isupper( is ) ) printf("isupper ");
//			if ( ft_isxdigit( is ) ) printf("isxdigit ");

			printf("\n");
		}
	}
#endif
#ifdef TEST_STRLEN
	printf("________________________________________ft_strlen\n");


	printf("%3zu: len of \"\"\n", ft_strlen(""));
	printf("%3zu: len of \"c\"\n", ft_strlen("c"));
	printf("%3zu: len of \"cool\"\n", ft_strlen("cool"));
	printf("%3zu: len of \"1234567890\"\n", ft_strlen("1234567890"));
	printf("%3zu: len of \"may strlen be with you\"\n", ft_strlen("may strlen be with you"));
	//printf("len of NULL:%zu\n", ft_strlen(NULL)); //crash!

#endif
#ifdef TEST_PUTS

	printf("________________________________________ft_puts\n");

	int ret_puts;

	ret_puts = ft_puts("--><--");
	printf(" retour: %2d\n", ret_puts);
	ret_puts = ft_puts("-->a<--");
	printf(" retour: %2d\n", ret_puts);
	ret_puts = ft_puts("-->puts me im famous<--");
	printf(" retour: %2d\n", ret_puts);
	ret_puts = ft_puts(NULL);
	printf(" retour: %2d\n", ret_puts);
	//ret_puts = ft_puts(2873456); //crash!!

#endif
#ifdef TEST_PUTSTR

	printf("________________________________________ft_putstr\n");


	ft_putstr("Je ");
	ft_putstr("suis ");
	ft_putstr("un vrai putstr\n");
	ft_putstr("[je n'ai pas de \\n]");
	ft_putstr("[t'inquiete pas j'en ai un avec moi]\n");
	//ft_putstr(NULL); //crash!!

#endif
#ifdef TEST_BZERO

	printf("________________________________________ft_bzero\n");

	char *mzero;

	mzero = (char *)malloc(sizeof(char) * 33);
	if ( !mzero ){ft_puts("error malloc with ft_bzero");exit(0);}
	bzero(mzero, 33);

	mzero = ft_strcpy(mzero, "**********");

	printf("before: -->%s<--\n", mzero);
	ft_bzero(mzero, 1);
	printf("after : -->%s<--\n", mzero);

	free( mzero );

#endif
#ifdef TEST_MEMSET

	printf("_______________________________________ft_memset\n");

	char *mset1;

	mset1 = (char *)malloc(sizeof(char) * 33);
	if ( !mset1 ){ft_puts("error malloc with ft_memset");exit(0);}
	bzero(mset1, 33);

	mset1 = ft_strcpy(mset1, "1234567890");

	printf("before: -->%s<--\n", mset1);
	mset1 = ft_memset(mset1, '*', 6);
	printf("after : -->%s<--\n", mset1);

	free( mset1 );

#endif
#ifdef TEST_MEMCPY
	printf("________________________________________ft_memcpy\n");

	char *mcpy1;

	mcpy1 = (char *)malloc(sizeof(char) * 33);
	if ( !mcpy1 ){ft_puts("error malloc with ft_memcpy");exit(0);}
	bzero(mcpy1, 33);

	mcpy1 = ft_memcpy(mcpy1, "*************", ft_strlen("*************"));
	printf("before: -->%s<--\n", mcpy1);
	mcpy1 = ft_memcpy(mcpy1, "1234567890", ft_strlen("1234567890"));
	printf("after : -->%s<--\n", mcpy1);

	free( mcpy1 );

#endif
#ifdef TEST_STRCPY
	printf("________________________________________ft_strcpy\n");

	char *scpy1;

	scpy1 = (char *)malloc(sizeof(char) * 33);
	if ( !scpy1 ){ft_puts("error malloc with ft_strcpy");exit(0);}
	bzero(scpy1, 33);

	scpy1 = ft_strcpy(scpy1, "*************");
	printf("before: -->%s<--\n", scpy1);
	scpy1 = ft_strcpy(scpy1, "1234567890");
	printf("after : -->%s<--\n", scpy1);

	free( scpy1 );

#endif
#ifdef TEST_STRDUP
	printf("________________________________________ft_strdup\n");

	char *sdup1;
	char *sdup2 = NULL;

	sdup1 = (char *)malloc(sizeof(char) * 33);
	if ( !sdup1 ){ft_puts("error malloc with ft_strdup");exit(0);}
	bzero(sdup1, 33);

	sdup1 = ft_strcpy(sdup1, "1234567890");

	printf("before: -->%s<--\n", sdup2);
	sdup2 = ft_strdup(sdup1);
	printf("after : -->%s<--\n", sdup2);

	free( sdup1 );
	free( sdup2 );

#endif
#ifdef TEST_STRNEW
	printf("________________________________________ft_strnew\n");

	char *snew1;

	snew1 = ft_strnew(33);
	if ( !snew1 ){ft_puts("error malloc with ft_strnew");exit(0);}

	printf("before: -->%s<--\n", snew1);
	snew1 = ft_memcpy(snew1, "1234567890", 4);
	printf("after : -->%s<--\n", snew1);

	free( snew1 );

#endif
#ifdef TEST_STRCAT
	printf("______________________________________ft_strcat\n");

	char *scat1;
	char *scat2;

	scat1 = (char *)malloc(sizeof(char) * 33);
	if ( !scat1 ){ft_puts("error malloc with ft_strcat1");exit(0);}

	scat2 = (char *)malloc(sizeof(char) * 33);
	if ( !scat2 ){ft_puts("error malloc with ft_strcat2");exit(0);}

	scat1 = ft_strcpy(scat1, "PoP");
	scat2 = ft_strcpy(scat2, "1234567890");

	printf("before: %s - %s\n", scat1, scat2);
	ft_strcat(scat1, scat2);
	printf("after : %s - %s\n", scat1, scat2);

	free( scat1 );
	free( scat2 );

#endif
#ifdef TEST_STRCLR
	printf("______________________________________ft_strclr\n");

	char *sclr1;

	sclr1 = (char *)malloc(sizeof(char) * 33);
	if ( !sclr1 ){ft_puts("error malloc with ft_strclr");exit(0);}

	sclr1 = ft_strcpy(sclr1, "1234567890");

	printf("before: -->%s<--\n", sclr1);
	ft_strclr(sclr1);
	printf("after : -->%s<--\n", sclr1);

	free( sclr1 );

#endif
#ifdef TEST_CAT
	printf("________________________________________ft_cat_pos\n");

	int fd_cat;

	fd_cat = open("auteur", O_RDONLY);
	if ( fd_cat < 0 ) {ft_puts("error open in ft_cat");exit(0);}

	ft_cat(fd_cat);
	close(fd_cat);

	printf("________________________________________ft_cat_neg\n");
	ft_cat(-42);

	printf("_______________________________________ft_cat_0\n");
	ft_cat(0);

#endif
	return (0);
}
