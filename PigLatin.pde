import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
	int result = -1;
	for (int i = 0; i <  sWord.length(); i++)
	{
    	if ((sWord.charAt(i) == 'a') || (sWord.charAt(i) == 'e') || (sWord.charAt(i) == 'i') || (sWord.charAt(i) == 'o') || (sWord.charAt(i) == 'u'))
    	{
      		result =  i;
    		break;
    	}
	}
	return result;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else if(findFirstVowel(sWord) == 0)
	{
		return sWord + "way";
	}
	else if (sWord.charAt(0) == 'q' && sWord.charAt(1) == 'u')
	{
		return sWord.substring(2, sWord.length()) + "quay";
	}
	else if (findFirstVowel(sWord) != 0)
	{
		return sWord.substring(1, sWord.length()) + sWord.charAt(0)+ "ay";
	}
	else 
	{
		return "ERROR!";
	}
}
