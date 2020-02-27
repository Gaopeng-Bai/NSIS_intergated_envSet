; 该脚本使用 HM VNISEdit 脚本编辑器向导产生

; 安装程序初始定义常量
!define PRODUCT_NAME "MonitorOCR"
!define PRODUCT_VERSION "1.5"
!define PRODUCT_PUBLISHER "Gaopeng Bai, TUL Uni Due"
!define PRODUCT_WEB_SITE "http://www.mycompany.com"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\OCR_main.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

SetCompressor lzma

; ------ MUI 现代界面定义 (1.67 版本以上兼容) ------
!include "MUI.nsh"

; MUI 预定义常量
!define MUI_ABORTWARNING
!define MUI_ICON "D:\Technology\Python_project\Logistic\OCR\components\install.ico"
!define MUI_UNICON "D:\Technology\Python_project\Logistic\OCR\components\Uninstall.ico"

; 欢迎页面
!insertmacro MUI_PAGE_WELCOME

; 组件选择页面
!insertmacro MUI_PAGE_COMPONENTS
; 安装目录选择页面
!insertmacro MUI_PAGE_DIRECTORY
; 安装过程页面
!insertmacro MUI_PAGE_INSTFILES
; 安装完成页面
!define MUI_FINISHPAGE_RUN "$INSTDIR\OCR_main.exe"
!insertmacro MUI_PAGE_FINISH

; 安装卸载过程页面
!insertmacro MUI_UNPAGE_INSTFILES

; 安装界面包含的语言设置
!insertmacro MUI_LANGUAGE "English"

; 安装预释放文件
!insertmacro MUI_RESERVEFILE_INSTALLOPTIONS
; ------ MUI 现代界面定义结束 ------


Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "MonitorOCR.exe"
InstallDir "$PROGRAMFILES\MonitorOCR"
InstallDirRegKey HKLM "${PRODUCT_UNINST_KEY}" "UninstallString"
ShowInstDetails show
ShowUnInstDetails show
BGGradient 0000FF 000000

Section "MainSection" SEC01
  SetOutPath "$INSTDIR"
  SetOverwrite ifnewer
  File "..\..\opencv_video_qt\dist\OCR_main\win32wnet.pyd"
  CreateDirectory "$SMPROGRAMS\MonitorOCR"
  CreateShortCut "$SMPROGRAMS\MonitorOCR\MonitorOCR.lnk" "$INSTDIR\OCR_main.exe"
  CreateShortCut "$DESKTOP\MonitorOCR.lnk" "$INSTDIR\OCR_main.exe"
  File "..\..\opencv_video_qt\dist\OCR_main\win32ui.pyd"
  File "..\..\opencv_video_qt\dist\OCR_main\win32trace.pyd"
  File "..\..\opencv_video_qt\dist\OCR_main\win32pdh.pyd"
  File "..\..\opencv_video_qt\dist\OCR_main\win32evtlog.pyd"
  File "..\..\opencv_video_qt\dist\OCR_main\win32event.pyd"
  File "..\..\opencv_video_qt\dist\OCR_main\win32clipboard.pyd"
  File "..\..\opencv_video_qt\dist\OCR_main\win32api.pyd"
  File "..\..\opencv_video_qt\dist\OCR_main\VCRUNTIME140.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\VCOMP120.DLL"
  File "..\..\opencv_video_qt\dist\OCR_main\unicodedata.pyd"
  File "..\..\opencv_video_qt\dist\OCR_main\ucrtbase.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\tk86t.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\tcl86t.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\sqlite3.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\select.pyd"
  File "..\..\opencv_video_qt\dist\OCR_main\Qt5Widgets.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\Qt5WebSockets.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\Qt5Svg.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\Qt5Quick.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\Qt5Qml.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\Qt5Network.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\Qt5Gui.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\Qt5DBus.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\Qt5Core.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\pywintypes36.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\pythoncom36.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\python36.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\python3.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\pyexpat.pyd"
  File "..\..\opencv_video_qt\dist\OCR_main\opengl32sw.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\OCR_main.exe.manifest"
  File "..\..\opencv_video_qt\dist\OCR_main\OCR_main.exe"
  File "..\..\opencv_video_qt\dist\OCR_main\MSVCR120.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\msvcp140.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\mfc140u.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\libwrap_dum.QZ5FOP7XPBZUSV5YTOAYY5YCYRRMXYJR.gfortran-win_amd64.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\libwrap_dum.PUJB2YVEA3MDDOZCJDFTG7NSA7QDNOGQ.gfortran-win_amd64.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\libvode.CIWG4DXTZLMLLSUOOTCVDGAHHMGB4MSJ.gfortran-win_amd64.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\libspecfun.BHLTWMBI4EYWDACZN4DQUESSDJRJNGEL.gfortran-win_amd64.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\libslsqp_op.LIFGE6AEK5GZMIV4YAH6Q4UEDG4INU5S.gfortran-win_amd64.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\libopenblas.TXA6YQSD3GCQQC22GEQ54J2UDCXDXHWN.gfortran-win_amd64.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\libopenblas.BNVRK7633HSX7YVO2TADGR4A5KEKXJAW.gfortran-win_amd64.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\libnnls.IXEEHJUCGHJL42YZEM6UIEMROJWXHMLJ.gfortran-win_amd64.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\libmvndst.ESZZP47EV6RKCFYTPDCSXD6LWVEBJFUI.gfortran-win_amd64.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\liblbfgsb.STIIZCVNQ3EDALPZSBDMQ4N77VAEOROT.gfortran-win_amd64.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\libGLESv2.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\libgetbreak.HTWLRMFFYU6U4P3OELXEUG2TRLC63Q6O.gfortran-win_amd64.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\libEGL.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\libdqag.JPQXXMFABPSUCWZNWIAYLRCSU7LERJA3.gfortran-win_amd64.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\libdop853.6TJTQZW3I3Q3QIDQHEOBEZKJ3NYRXI4B.gfortran-win_amd64.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\libdgamln.KEPNNGOAGQPEAK4EIZF7LKL6V6J3KVTB.gfortran-win_amd64.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\libdfitpack.KTCF3EOE66VRDKN45KBQA4VBAIS552IF.gfortran-win_amd64.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\libdfft_sub.KKMBYGLUBRBUGJQFW5JJVAPTCGSANMXI.gfortran-win_amd64.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\libdet.ZMMHAPOTSW6C62DXKNECJFSM7BHOWHUN.gfortran-win_amd64.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\libdcsrch.I2AOPDCXAPDRFNPWY55H5UE7XZSU5CVN.gfortran-win_amd64.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\libdcosqb.YMN7XEXYADIEZSKAGEVNR4E3MD7AXDG2.gfortran-win_amd64.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\libdcosqb.BFJ36UD5XZWZE5UMOTP5UDYKAJ3LWZ6R.gfortran-win_amd64.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\libd_odr.X7OYNKQGMJEKOLBE332F2FJ4TSIT7JWP.gfortran-win_amd64.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\libcobyla2.JEGTSUUFJ7DFXWZN5PAYZTTLBDATC4WD.gfortran-win_amd64.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\libchkder.G7WSOGIYYQO3UWFVEZ3PPXCXR53ADVPA.gfortran-win_amd64.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\libblkdta00.D3GJ6OJJJQVX6DSR32FYOAQBLF4LSYXI.gfortran-win_amd64.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\libbispeu.5N2XSD7URZS4WTOSLTOG4DDMA4HGB46U.gfortran-win_amd64.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\libbanded5x.MJRQXT345OUNLSEQCNZUJHICPOV3UKUD.gfortran-win_amd64.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\libansari.R6EA3HQP5KZ6TAXU4Y4ZVTRPT7UVA53Z.gfortran-win_amd64.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\lib_test_fo.JF5HTWMUPBXWGAYEBVEJU3OZAHTSVKCT.gfortran-win_amd64.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\lib_blas_su.CEZS2K36QVCBWZVJTBEP5WLPIXAZCNXI.gfortran-win_amd64.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\lib_arpack-.6ZMFEI7AX43F2WSEWXPK5DU7RBANYO6W.gfortran-win_amd64.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\kiwisolver.cp36-win_amd64.pyd"
  File "..\..\opencv_video_qt\dist\OCR_main\greenlet.cp36-win_amd64.pyd"
  File "..\..\opencv_video_qt\dist\OCR_main\d3dcompiler_47.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\CORE_RL_zlib_.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\CORE_RL_wand_.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\CORE_RL_magick_.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\CORE_RL_lqr_.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\CORE_RL_libxml_.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\CORE_RL_lcms_.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\CORE_RL_glib_.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\CORE_RL_freetype_.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\CORE_RL_bzlib_.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\base_library.zip"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-crt-utility-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-crt-time-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-crt-string-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-crt-stdio-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-crt-runtime-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-crt-process-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-crt-multibyte-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-crt-math-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-crt-locale-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-crt-heap-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-crt-filesystem-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-crt-environment-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-crt-convert-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-crt-conio-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-core-util-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-core-timezone-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-core-sysinfo-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-core-synch-l1-2-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-core-synch-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-core-string-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-core-rtlsupport-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-core-profile-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-core-processthreads-l1-1-1.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-core-processthreads-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-core-processenvironment-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-core-namedpipe-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-core-memory-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-core-localization-l1-2-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-core-libraryloader-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-core-interlocked-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-core-heap-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-core-handle-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-core-file-l2-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-core-file-l1-2-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-core-file-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-core-errorhandling-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-core-debug-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-core-datetime-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\api-ms-win-core-console-l1-1-0.dll"
  File "..\..\opencv_video_qt\dist\OCR_main\_win32sysloader.pyd"
  File "..\..\opencv_video_qt\dist\OCR_main\_tkinter.pyd"
  File "..\..\opencv_video_qt\dist\OCR_main\_testcapi.pyd"
  File "..\..\opencv_video_qt\dist\OCR_main\_ssl.pyd"
  File "..\..\opencv_video_qt\dist\OCR_main\_sqlite3.pyd"
  File "..\..\opencv_video_qt\dist\OCR_main\_socket.pyd"
  File "..\..\opencv_video_qt\dist\OCR_main\_overlapped.pyd"
  File "..\..\opencv_video_qt\dist\OCR_main\_multiprocessing.pyd"
  File "..\..\opencv_video_qt\dist\OCR_main\_lzma.pyd"
  File "..\..\opencv_video_qt\dist\OCR_main\_hashlib.pyd"
  File "..\..\opencv_video_qt\dist\OCR_main\_elementtree.pyd"
  File "..\..\opencv_video_qt\dist\OCR_main\_distutils_findvs.pyd"
  File "..\..\opencv_video_qt\dist\OCR_main\_decimal.pyd"
  File "..\..\opencv_video_qt\dist\OCR_main\_ctypes.pyd"
  File "..\..\opencv_video_qt\dist\OCR_main\_cffi_backend.cp36-win_amd64.pyd"
  File "..\..\opencv_video_qt\dist\OCR_main\_bz2.pyd"
  File "..\..\opencv_video_qt\dist\OCR_main\_asyncio.pyd"
  File /r "..\..\opencv_video_qt\dist\OCR_main\*.*"
SectionEnd

Section "ghostscript" SEC02
  SetOverwrite on
  DetailPrint "Installing ghostscript"

  IfFileExists "C:\Program Files\gs\gs9.50\bin\gswin64.exe" found notfound
  found:
  MessageBox MB_ICONINFORMATION|MB_OK "ghostscript already installed"
  Goto done
  notfound:
  File "..\gs.exe"
  ExecWait "$INSTDIR\gs.exe"
  done:

  DetailPrint "Finishing up Installation"
  
SectionEnd

Section "Imagemagick" SEC03
  SetOverwrite on
  DetailPrint "Installing Imagemagic"

  IfFileExists "C:\Program Files\ImageMagick-6.9.10-Q16\compare.exe" found notfound
  found:
  MessageBox MB_ICONINFORMATION|MB_OK "ImageMagick already installed"
  Goto done
  notfound:
  File "..\ImageMagick-6.9.10-90-Q16-x64-dll.exe"
  ExecWait "$INSTDIR\ImageMagick-6.9.10-90-Q16-x64-dll.exe"
  ReadRegStr $0 HKLM "SYSTEM\CurrentControlSet\Control\Session Manager\Environment" "Path"

  WriteRegExpandStr HKLM "SYSTEM\CurrentControlSet\Control\Session Manager\Environment" "Path" "$0;C:\Program Files\ImageMagick-6.9.10-Q16"
  ;刷新环境变量
  SendMessage ${HWND_BROADCAST} ${WM_WININICHANGE} 0 "STR:Environment"

  done:

  DetailPrint "Finishing up Installation"
  
SectionEnd

Section "Tesseract" SEC04
  SetOverwrite on
  DetailPrint "Installing Tessera-ocr"

  IfFileExists "C:\Program Files (x86)\Tesseract-OCR\dawg2wordlist.exe" found notfound
  found:
  MessageBox MB_ICONINFORMATION|MB_OK "Tesseract already installed"
  Goto done
  notfound:
  File "..\tesseract-ocr-w64-setup-v4.0.0-beta.1.20180414.exe"
  ExecWait "$INSTDIR\tesseract-ocr-w64-setup-v4.0.0-beta.1.20180414.exe"
  ReadRegStr $0 HKLM "SYSTEM\CurrentControlSet\Control\Session Manager\Environment" "Path"

  WriteRegExpandStr HKLM "SYSTEM\CurrentControlSet\Control\Session Manager\Environment" "Path" "$0;C:\Program Files (x86)\Tesseract-OCR"
  ;刷新环境变量
  SendMessage ${HWND_BROADCAST} ${WM_WININICHANGE} 0 "STR:Environment"
  done:


  DetailPrint "Finishing up Installation"
  
SectionEnd

Section -AdditionalIcons
  WriteIniStr "$INSTDIR\${PRODUCT_NAME}.url" "InternetShortcut" "URL" "${PRODUCT_WEB_SITE}"
  CreateShortCut "$SMPROGRAMS\MonitorOCR\Website.lnk" "$INSTDIR\${PRODUCT_NAME}.url"
  CreateShortCut "$SMPROGRAMS\MonitorOCR\Uninstall.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\OCR_main.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\OCR_main.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd

#-- 根据 NSIS 脚本编辑规则，所有 Function 区段必须放置在 Section 区段之后编写，以避免安装程序出现未可预知的问题。--#

; 区段组件描述
!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC01} ""
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC02} ""
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC03} ""
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC04} ""
!insertmacro MUI_FUNCTION_DESCRIPTION_END


/******************************
 *  以下是安装程序的卸载部分  *
 ******************************/

Section Uninstall
  Delete "$INSTDIR\${PRODUCT_NAME}.url"
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\tesseract-ocr-w64-setup-v4.0.0-beta.1.20180414.exe"
  Delete "$INSTDIR\ImageMagick-6.9.10-90-Q16-x64-dll.exe"
  Delete "$INSTDIR\gs.exe"
  Delete "$INSTDIR\_asyncio.pyd"
  Delete "$INSTDIR\_bz2.pyd"
  Delete "$INSTDIR\_cffi_backend.cp36-win_amd64.pyd"
  Delete "$INSTDIR\_ctypes.pyd"
  Delete "$INSTDIR\_decimal.pyd"
  Delete "$INSTDIR\_distutils_findvs.pyd"
  Delete "$INSTDIR\_elementtree.pyd"
  Delete "$INSTDIR\_hashlib.pyd"
  Delete "$INSTDIR\_lzma.pyd"
  Delete "$INSTDIR\_multiprocessing.pyd"
  Delete "$INSTDIR\_overlapped.pyd"
  Delete "$INSTDIR\_socket.pyd"
  Delete "$INSTDIR\_sqlite3.pyd"
  Delete "$INSTDIR\_ssl.pyd"
  Delete "$INSTDIR\_testcapi.pyd"
  Delete "$INSTDIR\_tkinter.pyd"
  Delete "$INSTDIR\_win32sysloader.pyd"
  Delete "$INSTDIR\api-ms-win-core-console-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-datetime-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-debug-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-errorhandling-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-file-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-file-l1-2-0.dll"
  Delete "$INSTDIR\api-ms-win-core-file-l2-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-handle-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-heap-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-interlocked-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-libraryloader-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-localization-l1-2-0.dll"
  Delete "$INSTDIR\api-ms-win-core-memory-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-namedpipe-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-processenvironment-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-processthreads-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-processthreads-l1-1-1.dll"
  Delete "$INSTDIR\api-ms-win-core-profile-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-rtlsupport-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-string-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-synch-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-synch-l1-2-0.dll"
  Delete "$INSTDIR\api-ms-win-core-sysinfo-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-timezone-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-core-util-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-conio-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-convert-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-environment-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-filesystem-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-heap-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-locale-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-math-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-multibyte-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-process-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-runtime-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-stdio-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-string-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-time-l1-1-0.dll"
  Delete "$INSTDIR\api-ms-win-crt-utility-l1-1-0.dll"
  Delete "$INSTDIR\base_library.zip"
  Delete "$INSTDIR\CORE_RL_bzlib_.dll"
  Delete "$INSTDIR\CORE_RL_freetype_.dll"
  Delete "$INSTDIR\CORE_RL_glib_.dll"
  Delete "$INSTDIR\CORE_RL_lcms_.dll"
  Delete "$INSTDIR\CORE_RL_libxml_.dll"
  Delete "$INSTDIR\CORE_RL_lqr_.dll"
  Delete "$INSTDIR\CORE_RL_magick_.dll"
  Delete "$INSTDIR\CORE_RL_wand_.dll"
  Delete "$INSTDIR\CORE_RL_zlib_.dll"
  Delete "$INSTDIR\d3dcompiler_47.dll"
  Delete "$INSTDIR\greenlet.cp36-win_amd64.pyd"
  Delete "$INSTDIR\kiwisolver.cp36-win_amd64.pyd"
  Delete "$INSTDIR\lib_arpack-.6ZMFEI7AX43F2WSEWXPK5DU7RBANYO6W.gfortran-win_amd64.dll"
  Delete "$INSTDIR\lib_blas_su.CEZS2K36QVCBWZVJTBEP5WLPIXAZCNXI.gfortran-win_amd64.dll"
  Delete "$INSTDIR\lib_test_fo.JF5HTWMUPBXWGAYEBVEJU3OZAHTSVKCT.gfortran-win_amd64.dll"
  Delete "$INSTDIR\libansari.R6EA3HQP5KZ6TAXU4Y4ZVTRPT7UVA53Z.gfortran-win_amd64.dll"
  Delete "$INSTDIR\libbanded5x.MJRQXT345OUNLSEQCNZUJHICPOV3UKUD.gfortran-win_amd64.dll"
  Delete "$INSTDIR\libbispeu.5N2XSD7URZS4WTOSLTOG4DDMA4HGB46U.gfortran-win_amd64.dll"
  Delete "$INSTDIR\libblkdta00.D3GJ6OJJJQVX6DSR32FYOAQBLF4LSYXI.gfortran-win_amd64.dll"
  Delete "$INSTDIR\libchkder.G7WSOGIYYQO3UWFVEZ3PPXCXR53ADVPA.gfortran-win_amd64.dll"
  Delete "$INSTDIR\libcobyla2.JEGTSUUFJ7DFXWZN5PAYZTTLBDATC4WD.gfortran-win_amd64.dll"
  Delete "$INSTDIR\libd_odr.X7OYNKQGMJEKOLBE332F2FJ4TSIT7JWP.gfortran-win_amd64.dll"
  Delete "$INSTDIR\libdcosqb.BFJ36UD5XZWZE5UMOTP5UDYKAJ3LWZ6R.gfortran-win_amd64.dll"
  Delete "$INSTDIR\libdcosqb.YMN7XEXYADIEZSKAGEVNR4E3MD7AXDG2.gfortran-win_amd64.dll"
  Delete "$INSTDIR\libdcsrch.I2AOPDCXAPDRFNPWY55H5UE7XZSU5CVN.gfortran-win_amd64.dll"
  Delete "$INSTDIR\libdet.ZMMHAPOTSW6C62DXKNECJFSM7BHOWHUN.gfortran-win_amd64.dll"
  Delete "$INSTDIR\libdfft_sub.KKMBYGLUBRBUGJQFW5JJVAPTCGSANMXI.gfortran-win_amd64.dll"
  Delete "$INSTDIR\libdfitpack.KTCF3EOE66VRDKN45KBQA4VBAIS552IF.gfortran-win_amd64.dll"
  Delete "$INSTDIR\libdgamln.KEPNNGOAGQPEAK4EIZF7LKL6V6J3KVTB.gfortran-win_amd64.dll"
  Delete "$INSTDIR\libdop853.6TJTQZW3I3Q3QIDQHEOBEZKJ3NYRXI4B.gfortran-win_amd64.dll"
  Delete "$INSTDIR\libdqag.JPQXXMFABPSUCWZNWIAYLRCSU7LERJA3.gfortran-win_amd64.dll"
  Delete "$INSTDIR\libEGL.dll"
  Delete "$INSTDIR\libgetbreak.HTWLRMFFYU6U4P3OELXEUG2TRLC63Q6O.gfortran-win_amd64.dll"
  Delete "$INSTDIR\libGLESv2.dll"
  Delete "$INSTDIR\liblbfgsb.STIIZCVNQ3EDALPZSBDMQ4N77VAEOROT.gfortran-win_amd64.dll"
  Delete "$INSTDIR\libmvndst.ESZZP47EV6RKCFYTPDCSXD6LWVEBJFUI.gfortran-win_amd64.dll"
  Delete "$INSTDIR\libnnls.IXEEHJUCGHJL42YZEM6UIEMROJWXHMLJ.gfortran-win_amd64.dll"
  Delete "$INSTDIR\libopenblas.BNVRK7633HSX7YVO2TADGR4A5KEKXJAW.gfortran-win_amd64.dll"
  Delete "$INSTDIR\libopenblas.TXA6YQSD3GCQQC22GEQ54J2UDCXDXHWN.gfortran-win_amd64.dll"
  Delete "$INSTDIR\libslsqp_op.LIFGE6AEK5GZMIV4YAH6Q4UEDG4INU5S.gfortran-win_amd64.dll"
  Delete "$INSTDIR\libspecfun.BHLTWMBI4EYWDACZN4DQUESSDJRJNGEL.gfortran-win_amd64.dll"
  Delete "$INSTDIR\libvode.CIWG4DXTZLMLLSUOOTCVDGAHHMGB4MSJ.gfortran-win_amd64.dll"
  Delete "$INSTDIR\libwrap_dum.PUJB2YVEA3MDDOZCJDFTG7NSA7QDNOGQ.gfortran-win_amd64.dll"
  Delete "$INSTDIR\libwrap_dum.QZ5FOP7XPBZUSV5YTOAYY5YCYRRMXYJR.gfortran-win_amd64.dll"
  Delete "$INSTDIR\mfc140u.dll"
  Delete "$INSTDIR\msvcp140.dll"
  Delete "$INSTDIR\MSVCR120.dll"
  Delete "$INSTDIR\OCR_main.exe"
  Delete "$INSTDIR\OCR_main.exe.manifest"
  Delete "$INSTDIR\opengl32sw.dll"
  Delete "$INSTDIR\pyexpat.pyd"
  Delete "$INSTDIR\python3.dll"
  Delete "$INSTDIR\python36.dll"
  Delete "$INSTDIR\pythoncom36.dll"
  Delete "$INSTDIR\pywintypes36.dll"
  Delete "$INSTDIR\Qt5Core.dll"
  Delete "$INSTDIR\Qt5DBus.dll"
  Delete "$INSTDIR\Qt5Gui.dll"
  Delete "$INSTDIR\Qt5Network.dll"
  Delete "$INSTDIR\Qt5Qml.dll"
  Delete "$INSTDIR\Qt5Quick.dll"
  Delete "$INSTDIR\Qt5Svg.dll"
  Delete "$INSTDIR\Qt5WebSockets.dll"
  Delete "$INSTDIR\Qt5Widgets.dll"
  Delete "$INSTDIR\select.pyd"
  Delete "$INSTDIR\sqlite3.dll"
  Delete "$INSTDIR\tcl86t.dll"
  Delete "$INSTDIR\tk86t.dll"
  Delete "$INSTDIR\ucrtbase.dll"
  Delete "$INSTDIR\unicodedata.pyd"
  Delete "$INSTDIR\VCOMP120.DLL"
  Delete "$INSTDIR\VCRUNTIME140.dll"
  Delete "$INSTDIR\win32api.pyd"
  Delete "$INSTDIR\win32clipboard.pyd"
  Delete "$INSTDIR\win32event.pyd"
  Delete "$INSTDIR\win32evtlog.pyd"
  Delete "$INSTDIR\win32pdh.pyd"
  Delete "$INSTDIR\win32trace.pyd"
  Delete "$INSTDIR\win32ui.pyd"
  Delete "$INSTDIR\win32wnet.pyd"

  Delete "$SMPROGRAMS\MonitorOCR\Uninstall.lnk"
  Delete "$SMPROGRAMS\MonitorOCR\Website.lnk"
  Delete "$DESKTOP\MonitorOCR.lnk"
  Delete "$SMPROGRAMS\MonitorOCR\MonitorOCR.lnk"

  RMDir "$SMPROGRAMS\MonitorOCR"

  RMDir /r "$INSTDIR\zope"
  RMDir /r "$INSTDIR\zmq"
  RMDir /r "$INSTDIR\win32com"
  RMDir /r "$INSTDIR\tornado"
  RMDir /r "$INSTDIR\tk"
  RMDir /r "$INSTDIR\tcl"
  RMDir /r "$INSTDIR\share"
  RMDir /r "$INSTDIR\scipy"
  RMDir /r "$INSTDIR\resource"
  RMDir /r "$INSTDIR\pytz"
  RMDir /r "$INSTDIR\PyQt5"
  RMDir /r "$INSTDIR\PIL"
  RMDir /r "$INSTDIR\pandas"
  RMDir /r "$INSTDIR\Output"
  RMDir /r "$INSTDIR\numpy"
  RMDir /r "$INSTDIR\notebook"
  RMDir /r "$INSTDIR\nbformat"
  RMDir /r "$INSTDIR\nbconvert-5.6.0-py3.6.egg-info"
  RMDir /r "$INSTDIR\nbconvert"
  RMDir /r "$INSTDIR\mpl-data"
  RMDir /r "$INSTDIR\matplotlib"
  RMDir /r "$INSTDIR\markupsafe"
  RMDir /r "$INSTDIR\lxml"
  RMDir /r "$INSTDIR\lib2to3"
  RMDir /r "$INSTDIR\jsonschema-3.0.2-py3.6.egg-info"
  RMDir /r "$INSTDIR\jsonschema"
  RMDir /r "$INSTDIR\jedi"
  RMDir /r "$INSTDIR\IPython"
  RMDir /r "$INSTDIR\Include"
  RMDir /r "$INSTDIR\importlib_metadata-1.3.0-py3.6.egg-info"
  RMDir /r "$INSTDIR\gevent-1.4.0-py3.6.egg-info"
  RMDir /r "$INSTDIR\gevent"
  RMDir /r "$INSTDIR\etc"
  RMDir /r "$INSTDIR\cv2"
  RMDir /r "$INSTDIR\cryptography-2.8-py3.6.egg-info"
  RMDir /r "$INSTDIR\cryptography"
  RMDir /r "$INSTDIR\certifi"

  RMDir "$INSTDIR"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd

#-- 根据 NSIS 脚本编辑规则，所有 Function 区段必须放置在 Section 区段之后编写，以避免安装程序出现未可预知的问题。--#

Var UNINSTALL_PROG
Var OLD_VER
Var OLD_PATH

Function .onInit
 ;FindProcDLL::FindProc "MonitorOCR.exe"
  ; Pop $R0
  ; IntCmp $R0 1 0 no_run
  ; MessageBox MB_OKCANCEL|MB_ICONSTOP  "Installer detected ${PRODUCT_NAME} is running。$\r$\n$\r$\nPress “ok” reforce close ${PRODUCT_NAME}，continue to install。$\r$\nPress “cancel” exist installer。" IDCANCEL Exit
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
 "Detected this system already installed ${PRODUCT_NAME} $OLD_VER。\
 $\n$\nWhether to uninstall the installed version？" \
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
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Are you sure you want uninstall $(^Name)？" IDYES +2
  Abort
FunctionEnd

Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) Uninstall sucessfully。"
FunctionEnd
