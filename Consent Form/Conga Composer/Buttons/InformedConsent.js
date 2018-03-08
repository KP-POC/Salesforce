/apex/APXTConga4__Conga_Composer
&serverUrl={!API.Partner_Server_URL_80}
&Id={!Account.Id}
&TemplateID=a0Lq0000006yNRD
&DocuSignVisible=1
&DocuSignR1Id=001q000000lyGIo
&DocuSignR1Type=Signer
&DocuSingR1Role=Signer+1
&DocuSignR1RoutingOrder=1

&DocuSignR2TypeId=003q000000hwnGU
&DocuSignR2Role=Signer+2
&DocuSignRoutingOrder=2

&DS7=17
&SF1=1

/*
the parameter &docusignr1id is being passed text, but it is looking for a SF id. 
Do you have a user id or contact id you can pass it? Or even a field like Owner Id? 
You will want to do the same for the second signer too, if it is predefined.
*/
