Configuration Sample_xVisualStudioCode {
  Param(
    [Parameter(Mandatory = $True)]
    [String]$InstallerPath
  );
  Import-DscResource -Module xVisualStudio;
  
  geppy_xVisualStudio VisualStudio {
    InstallerPath = $InstallerPath;
    FSharpV1 = $True;
    PythonToolsForVisualStudioV5 = $True;
    PowerShellToolsV1 = $True;
    AndroidNDKV1 = $True;
    AndroidNDK_32_V1 = $True;
    AndroidNDK_64_V1 = $True;
    AndroidSDKV1 = $True;
    AndroidSDK_API1921V1 = $True;
    AndroidSDK_API22V1 = $True;
    AndroidSDK_API23V1 = $True;
    JavaJDKV1 = $True;
    Node_jsV1 = $True;
    VSEmu_AndroidV1_0_60106_1 = $True;
    WebSocket4NetV1 = $True;
    GitForWindowsx64V3 = $True;
    GitHubVSV1 = $True;
    AppInsightsToolsVSWinExpressHiddenVSU2RTMV1 = $True;
    AppInsightsToolsVWDExpressHiddenVSU2RTMV1 = $True;
  }
}
