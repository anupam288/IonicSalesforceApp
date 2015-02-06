global with sharing class MyAppContactController {

	public MyAppContactController() {

	}

	@RemoteAction
    global static List<Contact> getContactList() {
        List<Contact> contactList = [SELECT Id, Name 
                   FROM Contact LIMIT 50];
        return contactList;
    }

}