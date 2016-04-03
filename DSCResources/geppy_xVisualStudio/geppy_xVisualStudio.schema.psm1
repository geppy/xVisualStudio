Configuration geppy_xVisualStudio {
  <#
    .SYNOPSIS
    
    Installs and configures Visual Studio 2015 Update 2.
    
    .PARAMETER InstallerPath
    
    Path to the VS 2015 Update 2 installer.
    
    .PARAMETER AdminXmlPath
    
    Path to an AdminDeployment XML file, used to configure the installation.
  #>
  Param(
      [string]$DestinationPath = "${env:ProgramFiles(x86)}\Microsoft Visual Studio 14.0",
      
      [Parameter(Mandatory = $True)]
      [string]$InstallerPath,
      
      [Parameter(ParameterSetName = 'Features')]
      [boolean]$MicroUpdateV2_1 = $True,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$WebToolsV1 = $True,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$JavaScript_HiddenV8 = $True,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$MDDJSDependencyHiddenV1 = $True,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$AppInsightsToolsVisualStudioHiddenVSU2RTMV1 = $True,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$Silverlight5_DRTHidden = $True,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$BlissHidden = $True,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$HelpHidden = $True,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$IntelliTraceEnterpriseHidden = $True,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$JavaScript = $True,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$LocalDBHidden = $True,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$NetFX4Hidden = $True,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$NetFX45Hidden = $True,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$NetFX451MTPackHidden = $True,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$NetFX451MTPackCoreHidden = $True,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$NetFX452MTPackHidden = $True,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$NetFX46MTPackHidden = $True,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$PortableDTPHidden = $True,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$PreEmptiveDotfuscatorHidden = $True,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$PreEmptiveAnalyticsHidden = $True,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$ProfilerHidden = $True,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$RoslynLanguageServicesHidden = $True,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$SDKTools3Hidden = $True,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$SDKTools4Hidden = $True,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$StoryboardingHidden = $True,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$WCFDataServicesHidden = $True,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$VSUV1PreReqV1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$VSUV2RTMV2 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$VSUV2PreReqV1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$NativeLanguageSupport_VCV1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$NativeLanguageSupport_MFCV1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$NativeLanguageSupport_XPV1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$Win81SDK_HiddenV1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$FSharpV1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$PythonToolsForVisualStudioV5 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$ClickOnceV1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$LightSwitchV1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$OfficeDeveloperToolsV1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$SQLV1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$PowerShellToolsV1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$SilverLight_Developer_KitV1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$Windows10_ToolsAndSDKV8 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$Win10_EmulatorV1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$Win10_EmulatorV2 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$XamarinVSCoreV1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$MDDJSCoreV9A = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$AndroidNDKV1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$AndroidNDK_32_V1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$AndroidNDK_64_V1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$AndroidSDKV1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$AndroidSDK_API1921V1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$AndroidSDK_API22V1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$AndroidSDK_API23V1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$AntV1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$L_MDDCPlusPlus_iOS_V6 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$L_MDDCPlusPlus_Android_V6 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$L_MDDCPlusPlus_ClangC2_V4 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$L_IncrediBuild_V1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$JavaJDKV1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$Node_jsV1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$VSEmu_AndroidV1_0_60106_1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$WebSocket4NetV1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$ToolsForWin81_WP80_WP81V1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$WindowsPhone81EmulatorsV1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$GitForWindowsx64V3 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$GitForWindowsx86V3 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$GitHubVSV1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$VS_SDK_GroupV4 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$VS_SDK_Breadcrumb_GroupV4 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$Win10_VSToolsV8 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$Win10SDK_HiddenV1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$Win10SDK_HiddenV2 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$Win10SDK_VisibleV1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$UWPPatch_KB3073097_HiddenV3 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$AppInsightsToolsVSWinExpressHiddenVSU2RTMV1 = $False,

      [Parameter(ParameterSetName = 'Features')]
      [boolean]$AppInsightsToolsVWDExpressHiddenVSU2RTMV1 = $False,
      
      [Parameter(ParameterSetName = 'AdminXml',
                 Mandatory = $True)]
      [string]$AdminXmlPath = ''
  );
  Import-DscResource -ModuleName 'PSDesiredStateConfiguration';
  Import-DscResource -ModuleName 'xPSDesiredStateConfiguration';
  
  if($AdminXmlPath -eq '') {
    [xml]$AdminXml = '<?xml version="1.0" encoding="utf-8"?>
    <AdminDeploymentCustomizations xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://schemas.microsoft.com/wix/2011/AdminDeployment">
      <BundleCustomizations TargetDir="C:\Program Files (x86)\Microsoft Visual Studio 14.0" NoCacheOnlyMode="default" NoWeb="default" NoRefresh="default" SuppressRefreshPrompt="default" Feed="default" />
      <SelectableItemCustomizations>
        <SelectableItemCustomization Id="MicroUpdateV2.1" Selected="yes" FriendlyName="Update for Microsoft Visual Studio 2015 (KB3151378)" />
        <SelectableItemCustomization Id="WebToolsV1" Hidden="no" Selected="yes" FriendlyName="Microsoft Web Developer Tools" />
        <SelectableItemCustomization Id="JavaScript_HiddenV8" Selected="yes" FriendlyName="JavaScript Project System for Visual Studio" />
        <SelectableItemCustomization Id="MDDJSDependencyHiddenV1" Selected="yes" FriendlyName="MDDJSDependencyHidden" />
        <SelectableItemCustomization Id="AppInsightsToolsVisualStudioHiddenVSU2RTMV1" Selected="yes" FriendlyName="Developer Analytics Tools v5.2.0" />
        <SelectableItemCustomization Id="Silverlight5_DRTHidden" Selected="yes" FriendlyName="Silverlight5_DRTHidden" />
        <SelectableItemCustomization Id="BlissHidden" Selected="yes" FriendlyName="BlissHidden" />
        <SelectableItemCustomization Id="HelpHidden" Selected="yes" FriendlyName="HelpHidden" />
        <SelectableItemCustomization Id="IntelliTraceEnterpriseHidden" Selected="yes" FriendlyName="IntelliTraceEnterpriseHidden" />
        <SelectableItemCustomization Id="JavaScript" Selected="yes" FriendlyName="JavascriptHidden" />
        <SelectableItemCustomization Id="LocalDBHidden" Selected="yes" FriendlyName="LocalDBHidden" />
        <SelectableItemCustomization Id="NetFX4Hidden" Selected="yes" FriendlyName="NetFX4Hidden" />
        <SelectableItemCustomization Id="NetFX45Hidden" Selected="yes" FriendlyName="NetFX45Hidden" />
        <SelectableItemCustomization Id="NetFX451MTPackHidden" Selected="yes" FriendlyName="NetFX451MTPackHidden" />
        <SelectableItemCustomization Id="NetFX451MTPackCoreHidden" Selected="yes" FriendlyName="NetFX451MTPackCoreHidden" />
        <SelectableItemCustomization Id="NetFX452MTPackHidden" Selected="yes" FriendlyName="NetFX452MTPackHidden" />
        <SelectableItemCustomization Id="NetFX46MTPackHidden" Selected="yes" FriendlyName="NetFX46MTPackHidden" />
        <SelectableItemCustomization Id="PortableDTPHidden" Selected="yes" FriendlyName="PortableDTPHidden" />
        <SelectableItemCustomization Id="PreEmptiveDotfuscatorHidden" Selected="yes" FriendlyName="PreEmptiveDotfuscatorHidden" />
        <SelectableItemCustomization Id="PreEmptiveAnalyticsHidden" Selected="yes" FriendlyName="PreEmptiveAnalyticsHidden" />
        <SelectableItemCustomization Id="ProfilerHidden" Selected="yes" FriendlyName="ProfilerHidden" />
        <SelectableItemCustomization Id="RoslynLanguageServicesHidden" Selected="yes" FriendlyName="RoslynLanguageServicesHidden" />
        <SelectableItemCustomization Id="SDKTools3Hidden" Selected="yes" FriendlyName="SDKTools3Hidden" />
        <SelectableItemCustomization Id="SDKTools4Hidden" Selected="yes" FriendlyName="SDKTools4Hidden" />
        <SelectableItemCustomization Id="StoryboardingHidden" Selected="yes" FriendlyName="StoryboardingHidden" />
        <SelectableItemCustomization Id="WCFDataServicesHidden" Selected="yes" FriendlyName="WCFDataServicesHidden" />
        <SelectableItemCustomization Id="VSUV1PreReqV1" Selected="no" FriendlyName="Visual Studio 2015 Update 1 Prerequisite" />
        <SelectableItemCustomization Id="VSUV2RTMV2" Selected="no" FriendlyName="Visual Studio 2015 Update 2" />
        <SelectableItemCustomization Id="VSUV2PreReqV1" Selected="no" FriendlyName="Visual Studio 2015 Update 2 Prerequisite" />
        <SelectableItemCustomization Id="NativeLanguageSupport_VCV1" Hidden="no" Selected="no" FriendlyName="Common Tools for Visual C++ 2015" />
        <SelectableItemCustomization Id="NativeLanguageSupport_MFCV1" Hidden="no" Selected="no" FriendlyName="Microsoft Foundation Classes for C++" />
        <SelectableItemCustomization Id="NativeLanguageSupport_XPV1" Hidden="no" Selected="no" FriendlyName="Windows XP Support for C++" />
        <SelectableItemCustomization Id="Win81SDK_HiddenV1" Hidden="no" Selected="no" FriendlyName="Windows 8.1 SDK and Universal CRT SDK" />
        <SelectableItemCustomization Id="FSharpV1" Hidden="no" Selected="no" FriendlyName="Visual F#" />
        <SelectableItemCustomization Id="PythonToolsForVisualStudioV5" Hidden="no" Selected="no" FriendlyName="Python Tools for Visual Studio (March 2016)" />
        <SelectableItemCustomization Id="ClickOnceV1" Hidden="no" Selected="no" FriendlyName="ClickOnce Publishing Tools" />
        <SelectableItemCustomization Id="LightSwitchV1" Hidden="no" Selected="no" FriendlyName="LightSwitch" />
        <SelectableItemCustomization Id="OfficeDeveloperToolsV1" Hidden="no" Selected="no" FriendlyName="Microsoft Office Developer Tools" />
        <SelectableItemCustomization Id="SQLV1" Hidden="no" Selected="no" FriendlyName="Microsoft SQL Server Data Tools" />
        <SelectableItemCustomization Id="PowerShellToolsV1" Hidden="no" Selected="no" FriendlyName="PowerShell Tools for Visual Studio" />
        <SelectableItemCustomization Id="SilverLight_Developer_KitV1" Hidden="no" Selected="no" FriendlyName="Silverlight Development Kit" />
        <SelectableItemCustomization Id="Windows10_ToolsAndSDKV8" Hidden="no" Selected="no" FriendlyName="Tools (1.3) and Windows 10 SDK (10.0.10586)" />
        <SelectableItemCustomization Id="Win10_EmulatorV1" Selected="no" FriendlyName="Emulators for Windows 10 Mobile (10.0.10240)" />
        <SelectableItemCustomization Id="Win10_EmulatorV2" Hidden="no" Selected="no" FriendlyName="Emulators for Windows 10 Mobile (10.0.10586)" />
        <SelectableItemCustomization Id="XamarinVSCoreV1" Hidden="no" Selected="no" FriendlyName="C#/.NET (Xamarin)" />
        <SelectableItemCustomization Id="MDDJSCoreV9A" Hidden="no" Selected="no" FriendlyName="HTML/JavaScript (Apache Cordova) Update 8" />
        <SelectableItemCustomization Id="AndroidNDKV1" Hidden="no" Selected="no" FriendlyName="Android Native Development Kit (R10E, 32 bits)" />
        <SelectableItemCustomization Id="AndroidNDK_32_V1" Hidden="no" Selected="no" FriendlyName="Android Native Development Kit (R10E, 32 bits)" />
        <SelectableItemCustomization Id="AndroidNDK_64_V1" Hidden="no" Selected="no" FriendlyName="Android Native Development Kit (R10E, 64 bits)" />
        <SelectableItemCustomization Id="AndroidSDKV1" Hidden="no" Selected="no" FriendlyName="Android SDK" />
        <SelectableItemCustomization Id="AndroidSDK_API1921V1" Hidden="no" Selected="no" FriendlyName="Android SDK Setup (API Level 19 and 21)" />
        <SelectableItemCustomization Id="AndroidSDK_API22V1" Hidden="no" Selected="no" FriendlyName="Android SDK Setup (API Level 22)" />
        <SelectableItemCustomization Id="AndroidSDK_API23V1" Hidden="no" Selected="no" FriendlyName="Android SDK Setup (API Level 23)" />
        <SelectableItemCustomization Id="AntV1" Hidden="no" Selected="no" FriendlyName="Apache Ant (1.9.3)" />
        <SelectableItemCustomization Id="L_MDDCPlusPlus_iOS_V6" Hidden="no" Selected="no" FriendlyName="Visual C++ iOS Development (Update 2)" />
        <SelectableItemCustomization Id="L_MDDCPlusPlus_Android_V6" Hidden="no" Selected="no" FriendlyName="Visual C++ Android Development (Update 2)" />
        <SelectableItemCustomization Id="L_MDDCPlusPlus_ClangC2_V4" Hidden="no" Selected="no" FriendlyName="Clang with Microsoft CodeGen (March 2016)" />
        <SelectableItemCustomization Id="L_IncrediBuild_V1" Selected="no" FriendlyName="IncrediBuild" />
        <SelectableItemCustomization Id="JavaJDKV1" Hidden="no" Selected="no" FriendlyName="Java SE Development Kit (7.0.550.13)" />
        <SelectableItemCustomization Id="Node.jsV1" Hidden="no" Selected="no" FriendlyName="Joyent Node.js" />
        <SelectableItemCustomization Id="VSEmu_AndroidV1.0.60106.1" Hidden="no" Selected="no" FriendlyName="Microsoft Visual Studio Emulator for Android (January 2016)" />
        <SelectableItemCustomization Id="WebSocket4NetV1" Hidden="no" Selected="no" FriendlyName="WebSocket4Net" />
        <SelectableItemCustomization Id="ToolsForWin81_WP80_WP81V1" Hidden="no" Selected="no" FriendlyName="Tools and Windows SDKs" />
        <SelectableItemCustomization Id="WindowsPhone81EmulatorsV1" Hidden="no" Selected="no" FriendlyName="Emulators for Windows Phone 8.1" />
        <SelectableItemCustomization Id="GitForWindowsx64V3" Hidden="no" Selected="no" FriendlyName="Git for Windows" />
        <SelectableItemCustomization Id="GitForWindowsx86V3" Hidden="no" Selected="no" FriendlyName="Git for Windows" />
        <SelectableItemCustomization Id="GitHubVSV1" Hidden="no" Selected="no" FriendlyName="GitHub Extension for Visual Studio" />
        <SelectableItemCustomization Id="VS_SDK_GroupV4" Hidden="no" Selected="no" FriendlyName="Visual Studio Extensibility Tools Update 2" />
        <SelectableItemCustomization Id="VS_SDK_Breadcrumb_GroupV4" Selected="no" FriendlyName="Visual Studio Extensibility Tools Update 2" />
        <SelectableItemCustomization Id="Win10_VSToolsV8" Hidden="no" Selected="no" FriendlyName="Tools for Universal Windows Apps (1.3) and Windows 10 SDK (10.0.10586)" />
        <SelectableItemCustomization Id="Win10SDK_HiddenV1" Hidden="no" Selected="no" FriendlyName="Windows 10 SDK (10.0.10240)" />
        <SelectableItemCustomization Id="Win10SDK_HiddenV2" Selected="no" FriendlyName="Windows 10 SDK (10.0.10586)" />
        <SelectableItemCustomization Id="Win10SDK_VisibleV1" Hidden="no" Selected="no" FriendlyName="Windows 10 SDK 10.0.10240" />
        <SelectableItemCustomization Id="UWPPatch_KB3073097_HiddenV3" Selected="no" FriendlyName="KB3073097" />
        <SelectableItemCustomization Id="AppInsightsToolsVSWinExpressHiddenVSU2RTMV1" Selected="no" FriendlyName="Developer Analytics Tools v5.2.0" />
        <SelectableItemCustomization Id="AppInsightsToolsVWDExpressHiddenVSU2RTMV1" Selected="no" FriendlyName="Developer Analytics Tools v5.2.0" />
      </SelectableItemCustomizations>
    </AdminDeploymentCustomizations>';
    
    $AdminXml.DocumentElement.SelectableItemCustomizations.ChildNodes | foreach {
      $Id = $_.Id.Replace('.', '_');
      
      $_.Selected = if(Get-Variable -Name $Id) { 'yes' } else { 'no' };
    }
    
    $AdminXml.DocumentElement.BundleCustomizations.TargetDir = $DestinationPath;
    
    $AdminXmlPath = (New-TemporaryFile).FullName;
    $AdminXml.save($AdminXmlPath);
  }
  
  Package Installer {
    Name = 'Microsoft Visual Studio Enterprise 2015';
    Path = $InstallerPath;
    ProductId = '14D1CABE-2B5A-3AED-B3A7-42315D062965';
    Arguments = "/Silent /NoRestart /AdminFile $AdminXmlPath /Log $env:temp\vs.log";
  }
}
