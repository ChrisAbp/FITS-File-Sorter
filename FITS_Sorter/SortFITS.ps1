#Title:		FITS File Sorter
#Purpose:	Take all FITS files in the same directory as the script and sort by Telescope and Mission
#Author:	ChrisA.2018
#Date:		25 January 2019


$path = ".\UNSORTED\*.fit" #All FITS files in the current directory

foreach ($file in (get-childitem -file $path)) #Loop through all files in the directory
{
  Write-Host $File.name #Display the filename being worked on to show rate of progress
  
  If (Select-String $File -pattern "C1HM" -quiet) #Search header data
    {
		#Chile One Wide Field
        $Scope = 'Chile_1_WF'
		
		$splitUp = $File.Basename -split "_"
		$Mission=$splitUp[0] -split "_"
		
		$SourceDir = '.\UNSORTED\' + $File.Name #Path to file
		$MissionDir = '.\SORTED\' + $Scope + '\' + $Mission #Build final directory for file
		
		New-Item -ItemType Directory -Force -Path $MissionDir | Out-Null #Make Directory
		Move-Item -Path $SourceDir -Destination $MissionDir -Force | Out-Null #Move File
    }
    ElseIf (Select-String $File -pattern "C1WF" -quiet)
	{
		#Chile One Ultra-Wide Field
        $Scope = 'Chile_1_UWF'
		
		$splitUp = $File.Basename -split "_"
		$Mission=$splitUp[0] -split "_"
		
		$SourceDir = '.\UNSORTED\' + $File.Name
		$MissionDir = '.\SORTED\' + $Scope + '\' + $Mission
		
		New-Item -ItemType Directory -Force -Path $MissionDir | Out-Null
		Move-Item -Path $SourceDir -Destination $MissionDir -Force | Out-Null
	}
	ElseIf (Select-String $File -pattern "T1HM" -quiet)
	{
		#Canary One Half Meter
        $Scope = 'Canary_1'
		
		$splitUp = $File.Basename -split "_"
		$Mission=$splitUp[0] -split "_"
		
		$SourceDir = '.\UNSORTED\' + $File.Name
		$MissionDir = '.\SORTED\' + $Scope + '\' + $Mission
		
		New-Item -ItemType Directory -Force -Path $MissionDir | Out-Null
		Move-Item -Path $SourceDir -Destination $MissionDir -Force | Out-Null
	}
	ElseIf (Select-String $File -pattern "Canary Two Wide" -quiet)
	{
		#Canary Two Wide Field
        $Scope = 'Canary_2_WF'
		
		$splitUp = $File.Basename -split "_"
		$Mission=$splitUp[0] -split "_"
		
		$SourceDir = '.\UNSORTED\' + $File.Name
		$MissionDir = '.\SORTED\' + $Scope + '\' + $Mission
		
		New-Item -ItemType Directory -Force -Path $MissionDir | Out-Null
		Move-Item -Path $SourceDir -Destination $MissionDir -Force | Out-Null
	}
	ElseIf (Select-String $File -pattern "T2WF" -quiet)
	{
		#Canary Two Ultra-Wide Field
        $Scope = 'Canary_2_UWF'
		
		$splitUp = $File.Basename -split "_"
		$Mission=$splitUp[0] -split "_"
		
		$SourceDir = '.\UNSORTED\' + $File.Name
		$MissionDir = '.\SORTED\' + $Scope + '\' + $Mission
		
		New-Item -ItemType Directory -Force -Path $MissionDir | Out-Null
		Move-Item -Path $SourceDir -Destination $MissionDir -Force | Out-Null
	}
	ElseIf (Select-String $File -pattern "Canary Three Deep Sky" -quiet)
	{
		#Canary Three
        $Scope = 'Canary_3'
		
		$splitUp = $File.Basename -split "_"
		$Mission=$splitUp[0] -split "_"
		
		$SourceDir = '.\UNSORTED\' + $File.Name
		$MissionDir = '.\SORTED\' + $Scope + '\' + $Mission
		
		New-Item -ItemType Directory -Force -Path $MissionDir | Out-Null
		Move-Item -Path $SourceDir -Destination $MissionDir -Force | Out-Null
	}
	ElseIf (Select-String $File -pattern "Canary Four" -quiet)
	{
		#Canary Four
        $Scope = 'Canary_4'
		
		$splitUp = $File.Basename -split "_"
		$Mission=$splitUp[0] -split "_"
		
		$SourceDir = '.\UNSORTED\' + $File.Name
		$MissionDir = '.\SORTED\' + $Scope + '\' + $Mission
		
		New-Item -ItemType Directory -Force -Path $MissionDir | Out-Null
		Move-Item -Path $SourceDir -Destination $MissionDir -Force | Out-Null
	}
	Else
    {
		#Error Reporting
        Write-Host "No Telescope Match. File Not Moved."
    }  
}

    