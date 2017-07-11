#include<stdio.h>
#include <stdlib.h>
struct node
{
	char *token;
	struct node *next;
};
struct node *head=NULL;
void main()
{
	char a[10]={};
	head=malloc(10);
	head->next=NULL;
	while(1)
	{		
		printf("enter token :");
		scanf("%s",&a);
		struct node *temp;
		temp=malloc(sizeof(a));
		temp->token=a;
		if(head->next==NULL)
		{
			temp->next=NULL;			
		}
		else
		{
			temp->next=head->next;
		}
		head->next=temp;

		temp=head;
		while(temp->next!=NULL)
		{
			temp=temp->next;
			printf("%s",temp->token);
		}
	}
}
