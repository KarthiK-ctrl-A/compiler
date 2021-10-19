#include<stdio.h>
#include<string.h>
int main()
{
	char gram[20],part1[20],part2[20],modifiedgram[20],newgram[20],tempgram[20];
	int i,j=0,k=0,l=0,pos;
	printf("Enter the production in A->A format");
	gets(gram);
	for(i=0;gram[i]!='|';i++,j++)
		part1[j] = gram[i];
	part1[j] = '\0';
	for(j=++i,i=0;gram[j]!='\0';j++,i++)
	{
		part2[i] = gram[j];
	}
	part2[i] = '\0';
	for(i=0;i<strlen(part1)||i<strlen(part2);i++)
	{
		if(part1[i] == part2[i])
		{
			modifiedgram[k] = part1[i];
			k++;
			pos = i+1;
		}
	}
	for(i=pos,j=0;part1[i]!='\0';i++,j++)
	{
		newgram[j] = part1[i];
	}
	newgram[j++] = '|';
	for(i=pos;part2[i]!='\0';i++,j++)
	{
		newgram[j] = part2[i];
	}
	modifiedgram[k] = 'X';
	modifiedgram[++k] = '\0';
	newgram[j] = '\0';
	printf("\n A->%s",modifiedgram);
	printf("\n X -> %s\n",newgram);

}
