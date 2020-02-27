; �ýű�ʹ�� HM VNISEdit �ű��༭���򵼲���

; ��װ�����ʼ���峣��
!define PRODUCT_NAME "Receiver"
!define PRODUCT_VERSION "1.0"
!define PRODUCT_PUBLISHER "Gaopeng Bai, TUL Uni due"
!define PRODUCT_WEB_SITE "http://www.mycompany.com"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\Monitor_receiver.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

SetCompressor lzma

; ------ MUI �ִ����涨�� (1.67 �汾���ϼ���) ------
!include "MUI.nsh"

; MUI Ԥ���峣��
!define MUI_ABORTWARNING
!define MUI_ICON "D:\Technology\Python_project\Logistic\OCR\components\install.ico"
!define MUI_UNICON "D:\Technology\Python_project\Logistic\OCR\components\Uninstall.ico"

; ��ӭҳ��
!insertmacro MUI_PAGE_WELCOME

; ��װĿ¼ѡ��ҳ��
!insertmacro MUI_PAGE_DIRECTORY
; ��װ����ҳ��
!insertmacro MUI_PAGE_INSTFILES
; ��װ���ҳ��
!define MUI_FINISHPAGE_RUN "$INSTDIR\Monitor_receiver.exe"
!insertmacro MUI_PAGE_FINISH

; ��װж�ع���ҳ��
!insertmacro MUI_UNPAGE_INSTFILES

; ��װ�����������������
!insertmacro MUI_LANGUAGE "English"

; ��װԤ�ͷ��ļ�
!insertmacro MUI_RESERVEFILE_INSTALLOPTIONS
; ------ MUI �ִ����涨����� ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "Receiver.exe"
InstallDir "$PROGRAMFILES\Receiver"
InstallDirRegKey HKLM "${PRODUCT_UNINST_KEY}" "UninstallString"
ShowInstDetails show
ShowUnInstDetails show

Section "MainSection" SEC01
  SetOutPath "$INSTDIR"
  SetOverwrite ifnewer
  File "..\..\OCR_Simulator\Monitor_receiver\obj\Release\Monitor_receiver.Properties.Resources.resources"
  CreateDirectory "$SMPROGRAMS\Receiver"
  CreateShortCut "$SMPROGRAMS\Receiver\Receiver.lnk" "$INSTDIR\Monitor_receiver.exe"
  CreateShortCut "$DESKTOP\Receiver.lnk" "$INSTDIR\Monitor_receiver.exe"
  File "..\..\OCR_Simulator\Monitor_receiver\obj\Release\Monitor_receiver.pdb"
  File "..\..\OCR_Simulator\Monitor_receiver\obj\Release\Monitor_receiver.exe"
  File "..\..\OCR_Simulator\Monitor_receiver\obj\Release\Monitor_receiver.csprojAssemblyReference.cache"
  File "..\..\OCR_Simulator\Monitor_receiver\obj\Release\Monitor_receiver.csproj.GenerateResource.cache"
  File "..\..\OCR_Simulator\Monitor_receiver\obj\Release\Monitor_receiver.csproj.FileListAbsolute.txt"
  File "..\..\OCR_Simulator\Monitor_receiver\obj\Release\Monitor_receiver.Client.resources"
  File "..\..\OCR_Simulator\Monitor_receiver\obj\Release\DesignTimeResolveAssemblyReferencesInput.cache"
  File "..\..\OCR_Simulator\Monitor_receiver\obj\Release\DesignTimeResolveAssemblyReferences.cache"
  File /r "..\..\OCR_Simulator\Monitor_receiver\obj\Release\*.*"
SectionEnd

Section -AdditionalIcons
  WriteIniStr "$INSTDIR\${PRODUCT_NAME}.url" "InternetShortcut" "URL" "${PRODUCT_WEB_SITE}"
  CreateShortCut "$SMPROGRAMS\Receiver\Website.lnk" "$INSTDIR\${PRODUCT_NAME}.url"
  CreateShortCut "$SMPROGRAMS\Receiver\Uninstall.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\Monitor_receiver.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\Monitor_receiver.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd

/******************************
 *  �����ǰ�װ�����ж�ز���  *
 ******************************/

Section Uninstall
  Delete "$INSTDIR\${PRODUCT_NAME}.url"
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\DesignTimeResolveAssemblyReferences.cache"
  Delete "$INSTDIR\DesignTimeResolveAssemblyReferencesInput.cache"
  Delete "$INSTDIR\Monitor_receiver.Client.resources"
  Delete "$INSTDIR\Monitor_receiver.csproj.FileListAbsolute.txt"
  Delete "$INSTDIR\Monitor_receiver.csproj.GenerateResource.cache"
  Delete "$INSTDIR\Monitor_receiver.csprojAssemblyReference.cache"
  Delete "$INSTDIR\Monitor_receiver.exe"
  Delete "$INSTDIR\Monitor_receiver.pdb"
  Delete "$INSTDIR\Monitor_receiver.Properties.Resources.resources"

  Delete "$SMPROGRAMS\Receiver\Uninstall.lnk"
  Delete "$SMPROGRAMS\Receiver\Website.lnk"
  Delete "$DESKTOP\Receiver.lnk"
  Delete "$SMPROGRAMS\Receiver\Receiver.lnk"

  RMDir "$SMPROGRAMS\Receiver"

  RMDir /r "$INSTDIR\TempPE"

  RMDir "$INSTDIR"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd

#-- ���� NSIS �ű��༭�������� Function ���α�������� Section ����֮���д���Ա��ⰲװ�������δ��Ԥ֪�����⡣--#

Var UNINSTALL_PROG
Var OLD_VER
Var OLD_PATH

Function .onInit
 ;FindProcDLL::FindProc "MonitorOCR.exe"
  ; Pop $R0
  ; IntCmp $R0 1 0 no_run
  ; MessageBox MB_OKCANCEL|MB_ICONSTOP  "Installer detected ${PRODUCT_NAME} is running��$\r$\n$\r$\nPress ��ok�� reforce close ${PRODUCT_NAME}��continue to install��$\r$\nPress ��cancel�� exist installer��" IDCANCEL Exit
  ; KillProcDLL::KillProc "MonitorOCR.exe"
  ; Sleep 1000
  ; FindProcDLL::FindProc "MonitorOCR.exe"
  ; Pop $R0
  ; IntCmp $R0 1 0 no_run
  ; Exit:
  ; Quit
  ; no_run:

 ClearErrors
 ReadRegStr $UNINSTALL_PROG ${PRODUCT_UNINST_ROOT_KEY} ${PRODUCT_UNINST_KEY} "UninstallString"
 IfErrors done

 ReadRegStr $OLD_VER ${PRODUCT_UNINST_ROOT_KEY} ${PRODUCT_UNINST_KEY} "DisplayVersion"
 MessageBox MB_YESNOCANCEL|MB_ICONQUESTION \
 "Detected this system already installed ${PRODUCT_NAME} $OLD_VER��\
 $\n$\nWhether to uninstall the installed version��" \
 /SD IDYES \
 IDYES uninstall \
  IDNO done
 Abort

uninstall:
 StrCpy $OLD_PATH $UNINSTALL_PROG -10


 ExecWait '"$UNINSTALL_PROG" /S _?=$OLD_PATH' $0
 DetailPrint "uninst.exe returned $0"
 Delete "$UNINSTALL_PROG"
 RMDir $OLD_PATH


done:
FunctionEnd

Function un.onInit
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Are you sure you want uninstall $(^Name)��" IDYES +2
  Abort
FunctionEnd

Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) Uninstall sucessfully��"
FunctionEnd
