# PSH-credBox
PowerShell to pop an error message and prompt for credentials.  I found this useful where a user was a local admin, but UAC was set to 'always notify'.  With the password you can do something like psexec to get SYSTEM or check for password re-use elsewhere.

## "Features"
* Wrapped into a function, so it can be loaded into memory and invoked at will.
* Automatically grabs environment domain and username.
* Loops infinitely if user clicks 'cancel' or 'x'.
* Some vague attempt at verifying whether the password entered is likely to be legit (currently based on length).

## Todo
* Add proper PowerShell .SYNOPSIS and nice things like that.
* Add a password complexity check, to reject a random 'lskfhklsdjf' keyboard mash.  Maybe something that actually validates the creds?
* Make the output prettier.