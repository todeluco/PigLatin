public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	for(int i = 0; i < sWord.length(); i++){
    	if(sWord.charAt(i) == 'a'){
      		return i;
    	} else if(sWord.charAt(i) == 'e'){
      		return i;
    	} else if(sWord.charAt(i) == 'i'){
      		return i;
    	} else if(sWord.charAt(i) == 'o'){
      		return i;
    	} else if(sWord.charAt(i) == 'u'){
      		return i;
    	}
  	}
  return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1){
		return sWord + "ay";
	} else if(sWord.charAt(0) == 'a'){
		return sWord + "way";
	} else if(sWord.charAt(0) == 'e'){
		return sWord + "way";
	} else if(sWord.charAt(0) == 'i'){
		return sWord + "way";
	} else if(sWord.charAt(0) == 'o'){
		return sWord + "way";
	} else if(sWord.charAt(0) == 'u'){
		return sWord + "way";
	} else if(sWord.charAt(0) == 'q'){
		return (sWord.substring(2) + sWord.substring(0,2)) + "ay";
	} else {
		String firstString = sWord.substring(findFirstVowel(sWord), sWord.length());
		String secondString = sWord.substring(0, findFirstVowel(sWord)) + "ay";
		return firstString + secondString;
	}
}
