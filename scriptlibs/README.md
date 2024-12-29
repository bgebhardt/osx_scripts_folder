# AppleScript Script Libraries

This README provides instructions on how to create AppleScript script libraries. Script libraries allow you to reuse code across multiple AppleScript scripts, making your code more modular and easier to maintain.

## Creating a Script Library

1. **Open Script Editor**: Launch the Script Editor application on your Mac.

2. **Write Your Script**: Write the AppleScript code that you want to reuse. For example:

    ```applescript
    on greet(name)
        return "Hello, " & name & "!"
    end greet
    ```

3. **Save as Script Library**:
    - Go to `File` > `Export`.
    - In the save dialog, choose `Script` as the file format.
    - Save the file with a `.scpt` extension in the `~/Library/Script Libraries/` directory. For example, save it as `MyLibrary.scpt`.

## Using a Script Library

1. **Reference the Library**: In your AppleScript, use the `use` statement to reference the script library. For example:

    ```applescript
    use script "MyLibrary"

    set greeting to greet("Bryan")
    display dialog greeting
    ```

2. **Run Your Script**: Execute your script in the Script Editor or save and run it as an application.

## Example

Here is a complete example of creating and using a script library:

### Step 1: Create the Library

Save the following script as `~/Library/Script Libraries/MyLibrary.scpt`:

```applescript
on greet(name)
    return "Hello, " & name & "!"
end greet
```

### Step 2: Use the Library

Create a new AppleScript and add the following code:

```applescript
use script "MyLibrary"

set greeting to greet("Bryan")
display dialog greeting
```

Run the script to see the greeting message.

## Additional Resources

For more information on AppleScript and script libraries, refer to the following resources:
- [AppleScript Language Guide](https://developer.apple.com/library/archive/documentation/AppleScript/Conceptual/AppleScriptLangGuide/introduction/ASLR_intro.html)
- [AppleScript Script Libraries](https://developer.apple.com/library/archive/documentation/AppleScript/Conceptual/AppleScriptLangGuide/conceptual/ASLR_script_libraries.html)
- [AppleScript Libraries](https://macosxautomation.com/mavericks/libraries/index.html)
- [AppleScript Libraries: Simple](https://macosxautomation.com/mavericks/libraries/simple.html)
