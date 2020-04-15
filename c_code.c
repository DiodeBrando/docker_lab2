#include<stdio.h>
int main(void) {
	int array[10]={9, 12, 12, 15, 17, 18, 99, 100, 169, 155};
	int even (int num);
	int odd (int num);
	int i;
	 for ( i = 0; i < 10; i++ ) {
	 	
	 	if ( array[i]%2 == 0 )
      printf("%d is an even number, now it's %d\n", array[i], even(array[i]));
   else
      printf("%d is an odd number now it's %d\n", array[i], odd(array[i]));
	 }
	 return 0;
}
int even (int num) {
	num=num<<1;
	return num;
}
int odd (int num) {
	num=num>>1;
	return num;
}
