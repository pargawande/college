#include<iostream>
using namespace std;
int no_of_pred;
int no_of_arg[10];
int i,j;
char nouse;
string predicate[10];
string argument[10][10];


void unify();
void display();
void chk_arg_pred();

 int main()
   {
   char ch;
   do{

 
            cout<<"\t=========PROGRAM FOR UNIFICATION=========\n";
            cout<<"\nEnter Number of Predicates:- [ ]\b\b";
            cin>>no_of_pred;

            for(i=0;i<no_of_pred;i++)
            {
		    cout<<"\nEnter Predicate :-[ ]\b\b"<<i+1;
		    cin>>predicate[i];
		    cout<<predicate[i];
		    cout<<"\n\tEnter No.of Arguments for Predicate:-[ ]\b\b"<<predicate[i];
		    cin>>no_of_arg[i];
	                for(j=0;j<no_of_arg[i];j++)
	                {
	                 cout<<"\n\tEnter argument :( )\b\b"<<j+1;
	                 cin>>argument[i][j];
	                }
            }

            display();
            //chk_arg_pred();
            cout<<"Do you want to continue(y/n): ";
            cin>>ch;
       }while(ch=='y');
   }



   void display()
   {
       cout<<"\n\t=======PREDICATES ARE======";
            for(i=0;i<no_of_pred;i++)
            {
             cout<<"\n\t"<<predicate[i]<<"(";
                        for(j=0;j<no_of_arg[i];j++)
                        {
		                cout<<argument[i][j];
		                if(j!=no_of_arg[i]-1)
		                            cout<<",";
                        }
             cout<<")";
            }
   }

   void chk_arg_pred()
   {
   int pred_flag=0;
   int arg_flag=0;

   /*======Checking Prediactes========*/
            for(i=0;i<no_of_pred-1;i++)
            {
                        if(predicate[i]!=predicate[i+1])
                        {
                        cout<<"\nPredicates not same..";
                        cout<<"\nUnification cannot progress!";
                        pred_flag=1;
                        break;
                        }
            }
   /*=====Chking No of Arguments====*/
     if(pred_flag!=1)
     {
            for(i=0;i<no_of_arg[i]-1;i++)
            {
                        if(no_of_arg[i]!=no_of_arg[i+1])
                        {
                        cout<<"\nArguments Not Same..!";
                        arg_flag=1;
                        break;
                        }
            }
     }
            if(arg_flag==0&&pred_flag!=1)
                        unify();

   }
/*==========UNIFY FUNCTION=========*/
   void unify()
   {
            int flag=0;
            for(i=0;i<no_of_pred-1;i++)
            {
                 for(j=0;j<no_of_arg[i];j++)
                 {
                        if(argument[i][j]!=argument[i+1][j])
                        {
                          if(flag==0)
                          cout<<"\n\t======SUBSTITUTION IS======";
                        cout<<"\n\t"<<argument[i+1][j]<<argument[i][j];
                         flag++;
                        }
                }
            }
            if(flag==0)
            {          cout<<"\nArguments are Identical...";
                        cout<<"\nNo need of Substitution\n";
            }
   }











