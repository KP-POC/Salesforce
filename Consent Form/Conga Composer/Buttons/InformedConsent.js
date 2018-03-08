/apex/APXTConga4__Conga_Composer
&serverUrl={!API.Partner_Server_URL_370}
&Id={!Account.Id}
&TemplateID=a0Lq0000006yPzw
&DocuSignVisible=1
&DocuSignR1Id={!Contact.Id}
&DocuSignR1Type=Signer
&DocuSingR1Role=Signer+1
&DocuSignR1RoutingOrder=1

&DocuSignR2TypeId={!Account.Id}
&DocuSignR2Role=Signer+2
&DocuSignRoutingOrder=2

&DS7=17
&SF1=1


/apex/APXTConga4__Conga_Composer?SolMgr=1
&serverUrl={!API.Partner_Server_URL_370}
&Id={!Account.Id}

&TemplateId=a0Lq0000006yPzw

&DocuSignR1ID={!Account.OwnerId}


/*
Attached file = 00Pq0000007JZv2
Conga template id = a0Lq0000006yPzw


the parameter &docusignr1id is being passed text, but it is looking for a SF id. 
Do you have a user id or contact id you can pass it? Or even a field like Owner Id? 
You will want to do the same for the second signer too, if it is predefined.


The name can only contain underscores and alphanumeric characters. 
It must begin with a letter and be unique, and must not include spaces, 
end with an underscore, or contain two consecutive underscores. 

*/
