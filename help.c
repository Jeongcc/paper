 #include <stdio.h>

int zari(int number){
   int count = 0;
   while (number != 0){
       printf("%d\n", number);
      number /= 10;
      count ++;
      }
   return count;
   }

int power1(int n){
   int x = 10;
      if (n == 0)
      return 1;
   return (x * power1(n-1));
}

int main(){
   int i;
   int s;
   scanf("%d %d",&i, &s);
   int z = zari(i);
   if (i < 1 || s == 0){
      printf("error");
      return 0;
   }
   if ( s == z){
      printf("%d", i) ; 
      return 0;
   }
   else {
      if ( s < 0){
         if ( -s <= z){
      s = z+s;                     
         }
         else{
      s = 2*z+s;
         }   
      }
      if ( s >= z) {
         s = s-z;
      }
   printf("%d\n", i / power1(s) + i % power1(s) * power1(z-s));
   }

   return 0;
}