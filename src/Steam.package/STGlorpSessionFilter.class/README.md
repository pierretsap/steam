I'm a filter which manage the glorp session.
When a request is about to be executed I create a new glorp session and managing the login and logout.

    Instance Variables
	application:		<steamApplicationComponent>
			
It doesn't work in our case because to be able to modify or manipulate an existing objet in the database the same session needed to be used to read and update the object.