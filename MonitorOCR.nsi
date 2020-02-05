; 该脚本使用 HM VNISEdit 脚本编辑器向导产生

; 安装程序初始定义常量
!define PRODUCT_NAME "Monitor_OCR"
!define PRODUCT_VERSION "1.0"
!define PRODUCT_PUBLISHER "Gaopeng Bai, TUL Uni DUE"
!define PRODUCT_WEB_SITE "https://www.uni-due.de/tul/"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\OCR_main.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

SetCompressor lzma

; ------ MUI 现代界面定义 (1.67 版本以上兼容) ------
!include "MUI.nsh"

; MUI 预定义常量
!define MUI_ABORTWARNING
!define MUI_ICON "E:\Project\OCR\components\install.ico"
!define MUI_UNICON "E:\Project\OCR\components\Uninstall.ico"

; 欢迎页面
!insertmacro MUI_PAGE_WELCOME

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
OutFile "Monitor OCR.exe"
InstallDir "$PROGRAMFILES\Monitor_OCR"
InstallDirRegKey HKLM "${PRODUCT_UNINST_KEY}" "UninstallString"
ShowInstDetails show
ShowUnInstDetails show
BrandingText "gaopengbai0121@gmail.com"

Section "MainSection" SEC01
  SetOutPath "$INSTDIR"
  SetOverwrite ifnewer
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\zlib.dll"
  CreateDirectory "$SMPROGRAMS\Monitor_OCR"
  CreateShortCut "$SMPROGRAMS\Monitor_OCR\Monitor_OCR.lnk" "$INSTDIR\OCR_main.exe"
  CreateShortCut "$DESKTOP\Monitor_OCR.lnk" "$INSTDIR\OCR_main.exe"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\win32wnet.pyd"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\win32ui.pyd"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\win32trace.pyd"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\win32pdh.pyd"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\win32evtlog.pyd"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\win32event.pyd"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\win32clipboard.pyd"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\win32api.pyd"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\VCRUNTIME140.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\VCOMP120.DLL"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\unicodedata.pyd"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\ucrtbase.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\tk86t.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\tiff.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\tcl86t.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\tbb.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\sqlite3.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\snappy.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\sip.pyd"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\select.pyd"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\Qt5Widgets.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\Qt5WebSockets.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\Qt5Svg.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\Qt5Quick.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\Qt5Qml.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\Qt5Network.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\Qt5Gui.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\Qt5DBus.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\Qt5Core.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\pywintypes37.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\pythoncom37.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\python37.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\python3.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\pyexpat.pyd"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\pvectorc.cp37-win_amd64.pyd"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\opengl32sw.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\OCR_main.exe.manifest"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\OCR_main.exe"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\MSVCR120.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\MSVCP140.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\mkl_vml_mc3.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\mkl_vml_mc2.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\mkl_vml_mc.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\mkl_vml_def.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\mkl_vml_cmpt.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\mkl_vml_avx512.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\mkl_vml_avx2.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\mkl_vml_avx.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\mkl_tbb_thread.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\mkl_sequential.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\mkl_scalapack_lp64.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\mkl_scalapack_ilp64.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\mkl_rt.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\mkl_pgi_thread.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\mkl_msg.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\mkl_mc3.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\mkl_mc.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\mkl_intel_thread.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\mkl_def.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\mkl_core.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\mkl_cdft_core.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\mkl_blacs_msmpi_lp64.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\mkl_blacs_msmpi_ilp64.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\mkl_blacs_mpich2_lp64.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\mkl_blacs_mpich2_ilp64.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\mkl_blacs_lp64.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\mkl_blacs_intelmpi_lp64.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\mkl_blacs_intelmpi_ilp64.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\mkl_blacs_ilp64.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\mkl_avx512.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\mkl_avx2.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\mkl_avx.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\mfc140u.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\logo.ico"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\libzstd.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\libzmq-mt-4_3_1.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\libxslt.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\libxml2.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\libssl-1_1-x64.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\libsodium.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\libpng16.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\libmmd.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\liblzma.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\libiomp5md.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\libifcoremd.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\libGLESv2.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\libexslt.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\libEGL.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\libcrypto-1_1-x64.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\LIBBZ2.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\kiwisolver.cp37-win_amd64.pyd"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\iconv.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\hdf5.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\greenlet.cp37-win_amd64.pyd"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\freetype.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\d3dcompiler_47.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\CORE_RL_zlib_.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\CORE_RL_wand_.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\CORE_RL_magick_.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\CORE_RL_lqr_.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\CORE_RL_libxml_.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\CORE_RL_lcms_.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\CORE_RL_glib_.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\CORE_RL_freetype_.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\CORE_RL_bzlib_.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\charset.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\blosc.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\base_library.zip"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-crt-utility-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-crt-time-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-crt-string-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-crt-stdio-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-crt-runtime-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-crt-process-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-crt-multibyte-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-crt-math-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-crt-locale-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-crt-heap-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-crt-filesystem-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-crt-environment-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-crt-convert-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-crt-conio-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-core-util-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-core-timezone-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-core-sysinfo-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-core-synch-l1-2-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-core-synch-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-core-string-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-core-rtlsupport-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-core-profile-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-core-processthreads-l1-1-1.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-core-processthreads-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-core-processenvironment-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-core-namedpipe-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-core-memory-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-core-localization-l1-2-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-core-libraryloader-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-core-interlocked-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-core-heap-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-core-handle-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-core-file-l2-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-core-file-l1-2-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-core-file-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-core-errorhandling-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-core-debug-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-core-datetime-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\api-ms-win-core-console-l1-1-0.dll"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\_win32sysloader.pyd"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\_tkinter.pyd"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\_testcapi.pyd"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\_ssl.pyd"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\_sqlite3.pyd"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\_socket.pyd"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\_queue.pyd"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\_overlapped.pyd"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\_multiprocessing.pyd"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\_lzma.pyd"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\_hashlib.pyd"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\_elementtree.pyd"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\_decimal.pyd"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\_ctypes.pyd"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\_cffi_backend.cp37-win_amd64.pyd"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\_bz2.pyd"
  File "E:\Project\OCR\opencv_video_qt\dist\OCR_main\_asyncio.pyd"
  File /r "E:\Project\OCR\opencv_video_qt\dist\OCR_main\*.*"
SectionEnd

Section "ghostscript" SEC02
SetOverwrite on
  DetailPrint "Installing ghostscript"

  IfFileExists "C:\Program Files\gs\gs9.50\bin\gswin64.exe" found notfound
  found:
  MessageBox MB_ICONINFORMATION|MB_OK "ghostscript already installed"
  Goto done
  notfound:
  File "E:\Project\OCR\components\gs.exe"
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
  File "E:\Project\OCR\components\ImageMagick-6.9.10-90-Q16-x64-dll.exe"
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
  File "E:\Project\OCR\components\tesseract-ocr-w64-setup-v4.0.0-beta.1.20180414.exe"
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
  CreateShortCut "$SMPROGRAMS\Monitor_OCR\Website.lnk" "$INSTDIR\${PRODUCT_NAME}.url"
  CreateShortCut "$SMPROGRAMS\Monitor_OCR\Uninstall.lnk" "$INSTDIR\uninst.exe"
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
  Delete "$INSTDIR\_cffi_backend.cp37-win_amd64.pyd"
  Delete "$INSTDIR\_ctypes.pyd"
  Delete "$INSTDIR\_decimal.pyd"
  Delete "$INSTDIR\_elementtree.pyd"
  Delete "$INSTDIR\_hashlib.pyd"
  Delete "$INSTDIR\_lzma.pyd"
  Delete "$INSTDIR\_multiprocessing.pyd"
  Delete "$INSTDIR\_overlapped.pyd"
  Delete "$INSTDIR\_queue.pyd"
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
  Delete "$INSTDIR\blosc.dll"
  Delete "$INSTDIR\charset.dll"
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
  Delete "$INSTDIR\freetype.dll"
  Delete "$INSTDIR\greenlet.cp37-win_amd64.pyd"
  Delete "$INSTDIR\hdf5.dll"
  Delete "$INSTDIR\iconv.dll"
  Delete "$INSTDIR\kiwisolver.cp37-win_amd64.pyd"
  Delete "$INSTDIR\LIBBZ2.dll"
  Delete "$INSTDIR\libcrypto-1_1-x64.dll"
  Delete "$INSTDIR\libEGL.dll"
  Delete "$INSTDIR\libexslt.dll"
  Delete "$INSTDIR\libGLESv2.dll"
  Delete "$INSTDIR\libifcoremd.dll"
  Delete "$INSTDIR\libiomp5md.dll"
  Delete "$INSTDIR\liblzma.dll"
  Delete "$INSTDIR\libmmd.dll"
  Delete "$INSTDIR\libpng16.dll"
  Delete "$INSTDIR\libsodium.dll"
  Delete "$INSTDIR\libssl-1_1-x64.dll"
  Delete "$INSTDIR\libxml2.dll"
  Delete "$INSTDIR\libxslt.dll"
  Delete "$INSTDIR\libzmq-mt-4_3_1.dll"
  Delete "$INSTDIR\libzstd.dll"
  Delete "$INSTDIR\logo.ico"
  Delete "$INSTDIR\mfc140u.dll"
  Delete "$INSTDIR\mkl_avx.dll"
  Delete "$INSTDIR\mkl_avx2.dll"
  Delete "$INSTDIR\mkl_avx512.dll"
  Delete "$INSTDIR\mkl_blacs_ilp64.dll"
  Delete "$INSTDIR\mkl_blacs_intelmpi_ilp64.dll"
  Delete "$INSTDIR\mkl_blacs_intelmpi_lp64.dll"
  Delete "$INSTDIR\mkl_blacs_lp64.dll"
  Delete "$INSTDIR\mkl_blacs_mpich2_ilp64.dll"
  Delete "$INSTDIR\mkl_blacs_mpich2_lp64.dll"
  Delete "$INSTDIR\mkl_blacs_msmpi_ilp64.dll"
  Delete "$INSTDIR\mkl_blacs_msmpi_lp64.dll"
  Delete "$INSTDIR\mkl_cdft_core.dll"
  Delete "$INSTDIR\mkl_core.dll"
  Delete "$INSTDIR\mkl_def.dll"
  Delete "$INSTDIR\mkl_intel_thread.dll"
  Delete "$INSTDIR\mkl_mc.dll"
  Delete "$INSTDIR\mkl_mc3.dll"
  Delete "$INSTDIR\mkl_msg.dll"
  Delete "$INSTDIR\mkl_pgi_thread.dll"
  Delete "$INSTDIR\mkl_rt.dll"
  Delete "$INSTDIR\mkl_scalapack_ilp64.dll"
  Delete "$INSTDIR\mkl_scalapack_lp64.dll"
  Delete "$INSTDIR\mkl_sequential.dll"
  Delete "$INSTDIR\mkl_tbb_thread.dll"
  Delete "$INSTDIR\mkl_vml_avx.dll"
  Delete "$INSTDIR\mkl_vml_avx2.dll"
  Delete "$INSTDIR\mkl_vml_avx512.dll"
  Delete "$INSTDIR\mkl_vml_cmpt.dll"
  Delete "$INSTDIR\mkl_vml_def.dll"
  Delete "$INSTDIR\mkl_vml_mc.dll"
  Delete "$INSTDIR\mkl_vml_mc2.dll"
  Delete "$INSTDIR\mkl_vml_mc3.dll"
  Delete "$INSTDIR\MSVCP140.dll"
  Delete "$INSTDIR\MSVCR120.dll"
  Delete "$INSTDIR\OCR_main.exe"
  Delete "$INSTDIR\OCR_main.exe.manifest"
  Delete "$INSTDIR\opengl32sw.dll"
  Delete "$INSTDIR\pvectorc.cp37-win_amd64.pyd"
  Delete "$INSTDIR\pyexpat.pyd"
  Delete "$INSTDIR\python3.dll"
  Delete "$INSTDIR\python37.dll"
  Delete "$INSTDIR\pythoncom37.dll"
  Delete "$INSTDIR\pywintypes37.dll"
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
  Delete "$INSTDIR\sip.pyd"
  Delete "$INSTDIR\snappy.dll"
  Delete "$INSTDIR\sqlite3.dll"
  Delete "$INSTDIR\tbb.dll"
  Delete "$INSTDIR\tcl86t.dll"
  Delete "$INSTDIR\tiff.dll"
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
  Delete "$INSTDIR\zlib.dll"

  Delete "$SMPROGRAMS\Monitor_OCR\Uninstall.lnk"
  Delete "$SMPROGRAMS\Monitor_OCR\Website.lnk"
  Delete "$DESKTOP\Monitor_OCR.lnk"
  Delete "$SMPROGRAMS\Monitor_OCR\Monitor_OCR.lnk"

  RMDir "$SMPROGRAMS\Monitor_OCR"

  RMDir /r "$INSTDIR\zmq"
  RMDir /r "$INSTDIR\win32com"
  RMDir /r "$INSTDIR\tornado"
  RMDir /r "$INSTDIR\tk"
  RMDir /r "$INSTDIR\tcl"
  RMDir /r "$INSTDIR\tables"
  RMDir /r "$INSTDIR\sqlalchemy"
  RMDir /r "$INSTDIR\sphinx"
  RMDir /r "$INSTDIR\share"
  RMDir /r "$INSTDIR\scipy"
  RMDir /r "$INSTDIR\resource"
  RMDir /r "$INSTDIR\pytz"
  RMDir /r "$INSTDIR\PyQt5"
  RMDir /r "$INSTDIR\psutil"
  RMDir /r "$INSTDIR\PIL"
  RMDir /r "$INSTDIR\pandas"
  RMDir /r "$INSTDIR\Output"
  RMDir /r "$INSTDIR\numpy"
  RMDir /r "$INSTDIR\numexpr"
  RMDir /r "$INSTDIR\notebook"
  RMDir /r "$INSTDIR\nbformat"
  RMDir /r "$INSTDIR\nbconvert-5.5.0-py3.7.egg-info"
  RMDir /r "$INSTDIR\nbconvert"
  RMDir /r "$INSTDIR\mpl-data"
  RMDir /r "$INSTDIR\mkl_fft"
  RMDir /r "$INSTDIR\matplotlib"
  RMDir /r "$INSTDIR\markupsafe"
  RMDir /r "$INSTDIR\lxml"
  RMDir /r "$INSTDIR\lib2to3"
  RMDir /r "$INSTDIR\jsonschema-3.0.1-py3.7.egg-info"
  RMDir /r "$INSTDIR\jsonschema"
  RMDir /r "$INSTDIR\jedi"
  RMDir /r "$INSTDIR\IPython"
  RMDir /r "$INSTDIR\Include"
  RMDir /r "$INSTDIR\importlib_metadata-0.17-py3.7.egg-info"
  RMDir /r "$INSTDIR\gevent-1.4.0-py3.7.egg-info"
  RMDir /r "$INSTDIR\gevent"
  RMDir /r "$INSTDIR\etc"
  RMDir /r "$INSTDIR\docutils"
  RMDir /r "$INSTDIR\Cython"
  RMDir /r "$INSTDIR\cv2"
  RMDir /r "$INSTDIR\cryptography-2.7-py3.7.egg-info"
  RMDir /r "$INSTDIR\cryptography"
  RMDir /r "$INSTDIR\certifi"
  RMDir /r "$INSTDIR\bottleneck"
  RMDir /r "$INSTDIR\babel"
  RMDir /r "$INSTDIR\alabaster"

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
