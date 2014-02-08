@isTest
public with sharing class TypeaheadTest {

  private static testMethod void testQuery() {
    list<Account> aa = new list<Account>{
      new Account(Name='Test Account'),
      new Account(Name='Another Account', BillingCity='Test City'),
      new Account(Name='Third Account')
    };
    insert aa;
    
      // crazy, but you have to fake this
      list<Id> fixedSearchResults= new list<Id>{aa[0].id, aa[1].id};
      Test.setFixedSearchResults(fixedSearchResults);

    Test.startTest();
    list<sObject> accts = Typeahead.searchRecords( 'test', 'Account', null, null, null, null, null );
    Test.stopTest();

    system.assertEquals(2, accts.size());
    system.assertEquals('Another Account', accts[0].get('Name'));
    system.assertEquals('Test Account', accts[1].get('Name'));
  }

}