
public class extend3a817013 {
  public static void main(String arg[]){
	new A(5);new A(5,"5");
	B b=new B(6,6);
    b.B.A(5,6,7);b.B.A(5);b.A(5);b.A(5,5,5);
  }
}
class A{
  static{
      System.out.print("Hellow ");
  }
  A(){
	  
  }
  A(int a){
      System.out.print("12");
  }
  A(int a,int b){
	  this(5);
      System.out.print("34");
  }
  A(int... a){
	  this(3,2);
      System.out.print("56");
  }
  A(int a,String b){
      this(12,23,34);
      System.out.println("78");
  }
  void A(int a){
      System.out.print("90");
  }
  void A(int... a){
      System.out.print("01");
  }
}
class B extends A{
  static{ 
      System.out.print("World ");
  }
  A B =new A();
  B(){}
  B(int a){
	  super(4);
	 System.out.print("11");
  }
  B(int a,int b){
	  this(4);
      System.out.println("22");
  }
  B(int ... a){
      System.out.print("33");
  }
  B(int a,String b){
      System.out.print("44");
  }
  void A(int a){
	  
      System.out.print("55");
  }
  void A(int ...a){
	  
      System.out.print("66");
  }
}
