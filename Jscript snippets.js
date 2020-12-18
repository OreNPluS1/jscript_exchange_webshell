// Execute a command
var oShell = new ActiveXObject('wscript.shell');
oShell.Run('cmd.exe /c {command} > C:\\\\ProgramData\\\\output.txt');

// Read the output file
var myFileSysObj = new ActiveXObject('Scripting.FileSystemObject');
var myOutputTextStream = myFileSysObj.OpenTextFile('C:\\\\ProgramData\\\\output.txt', 1, true);
var x = '';
while (!myOutputTextStream.AtEndOfStream){
	x += myOutputTextStream.ReadLine() + '\\n';
}
x;
myOutputTextStream.Close();