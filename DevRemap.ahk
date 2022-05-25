#NoEnv
#InstallKeybdHook
; A Buffal0x script - DevRemap
; Keybinds to make repetitive tasks much easier
; Feel free to modify it so it suits you. AHK is pretty easy to learn. There are e.g AHK's Key list and there are tons of help by people on different forums, just Google it and you'll probably find what you're looking for.
; Key list = https://www.autohotkey.com/docs/KeyList.htm

phpVar1 = <?php echo $X;?>
phpvar2 =  <?php echo $X; ?>
phpVar3 = $X = "";

; Toggle on and off suspend hotkeys
LCtrl & F2::suspend

; Reloads the script
F2::
reload

LCtrl & Numpad8::
Send , %phpVar1%
return

LCtrl & Numpad7::
Send , %phpVar2%
reload

LCtrl & Numpad9::
Send , %phpVar3%
return

LCtrl & Numpad1::
Send , {U+007B}+{A_Space}{U+007D}
return

OnError("LogError")
%cause% := error

LogError(exception) {
    FileAppend % "Error on line " exception.Line ": " exception.Message "`n"
        , /Desktop/errorlog.txt
    return true
}