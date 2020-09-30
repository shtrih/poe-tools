#include-once

#include <Date.au3>

Global Const $LOG_LEVEL_INFO = 'info'
Global Const $LOG_LEVEL_DEBUG = 'debug'

If Not IsDeclared('DEBUG') Then
   Global Const $DEBUG = $CmdLine[0] ? $CmdLine[1] = 'debug' : False
EndIf

Func Log_($data, $logLevel = $LOG_LEVEL_INFO)
   If $logLevel = $LOG_LEVEL_DEBUG And Not $DEBUG Then
      Return
   EndIf

   $data = _Now() & ' - ' & '[' & $logLevel & '] ' & $data

;~    $FileName = @ScriptDir & '\' & @ScriptName & '.log'
;~    $hFile = FileOpen($FileName, 1)
;~    If $hFile <> -1 Then
;~ 	 FileWriteLine($hFile, $data)
;~ 	 FileClose($hFile)
;~    EndIf

   ConsoleWrite($data & @CRLF)
EndFunc
