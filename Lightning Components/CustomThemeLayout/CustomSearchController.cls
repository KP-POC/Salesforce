/*
The searchForIds method takes a String searchText and returns a list of strings representing found IDs. 
*/
public class CustomSearchController {
    @AuraEnabled
    public static List<String> searchForIds(String searchText) {
      return new List<String>{searchText};
    }
}
