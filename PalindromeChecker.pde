public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
if(onlyLetters(noSpaces(word.toLowerCase())).equals(reverse(word))){
  return true;
}else {
  return false;
}
}
public String noSpaces(String sWord){
  String result = new String();
  for(int i = 0; i < sWord.length(); i++)
     if(!sWord.substring(i,i+1).equals(" "))
       result=result + sWord.substring(i,i+1);
  return result;
}



public String reverse(String str)
{
  String strii= new String();
  for(int i=str.length()-1;i>-1;i--){
    strii+=str.substring(i,i+1);
  }
 
 return onlyLetters(noSpaces(strii.toLowerCase()));

}
public String onlyLetters(String sString){
  String str="";
    for(int i=0;i<sString.length();i++){
    if(Character.isLetter(sString.charAt(i))){
      str+=sString.charAt(i);
    }
  }
  return str;
}

