
import java.util.*;

public class drink3a817013{
 public static void main(String args[])throws Exception{
	
   Scanner cin=new Scanner(System.in);
   a b=new a();
   
   while(cin.hasNext()) {
    try {
    	
     String[] x=new String[4];
     x=cin.nextLine().split(",");
     switch(x.length) {
     case 4:
      b=new a(x[0],Integer.parseInt(x[1]),x[2],x[3]);
      break;
     case 3:
      b=new a(x[0],Integer.parseInt(x[1]),x[2]);
      break;
     case 2:
      b=new a(x[0],Integer.parseInt(x[1]));
      break;
     case 1:
      b=new a(x[0]);
      break;
     }
     b.tof();
     b.pr();
    }catch(Exception e){
      System.out.println("Reset your input!");
     }
   }
   cin.close();
} 
}

class a{
	
 static {
  System.out.println("a=飲料/b=杯數/c=糖/d=冰");
 }
 
 String a="白開水";
 int b=1;
 String c="正常";
 String d="正常"; 
 
 a(){
  
 }
 a(String a){
  this.a=a;
 }
 a(String a,int b){
  this(a);this.b=b;
 }
 a(String a,int b,String c){
  this(a,b);this.c=c;
 }
 a(String a,int b,String c,String d){
  this(a,b,c);this.d=d;
 }
 
 void pr() {
  System.out.println("你的飲料是:"+a+"  "+b+"杯"+"  "+c+"糖"+"  "+d+"冰");
 }
 
 void tof() throws Exception {
	int k=0;
		 if(b<=0) {
		     k=1;
		  }
		  else if(!(c.equals("微") || c.equals("半") || c.equals("正常") || c.equals("無"))){
			 k=1;
		  }
		  else if(!(d.equals("微") || d.equals("半") || d.equals("正常")|| d=="無")){
			  k=1;
		  }
		if(k==1) {
			throw new Exception();
		}
  
 }
}