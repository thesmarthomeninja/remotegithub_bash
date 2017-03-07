# Running Github code remotely

In this example, I'm demostrating how you would run code on a remote server without actually setting up version control on a specific file.

Here you would make all of your changes to a `shell script` and still be able to excute the remote file stored on github.

This is by no means a complete example and there probably are some modifications you would want to make, like encrypting your file for example.

Tools used:

1. [`bash`](https://www.gnu.org/software/bash/) - To run the scripts
2. [`jq`](https://stedolan.github.io/jq/) - To process the results
3. [`sed`](http://www.grymoire.com/Unix/Sed.html) - To clean up results
4. [`Github Contents API`](https://developer.github.com/v3/repos/contents/) - To call the contents of your script.
