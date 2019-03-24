# brutforce script to make some organizational units

# you need to change "DC=ad,DC=sparky-tech,DC=com" to match your domain and update the ST initials to match or remove them

Write-Host -ForegroundColor yellow "Creating OUs"
New-ADOrganizationalUnit -Name ST_Computers -Path "DC=AD,DC=zmassing,DC=com" -Description "ZM Computers"
 New-ADOrganizationalUnit -Name Workstations -Path "OU=ZM_Computers,DC=AD,DC=zmassing,DC=com"
  New-ADOrganizationalUnit -Name President -Path "OU=Workstations,OU=ZM_Computers,DC=AD,DC=zmassing,DC=com"
  New-ADOrganizationalUnit -Name Finance -Path "OU=Workstations,OU=ZM_Computers,DC=AD,DC=zmassing,DC=com"
  New-ADOrganizationalUnit -Name HR -Path "OU=Workstations,OU=ZM_Computers,DC=AD,DC=zmassing,DC=com"
  New-ADOrganizationalUnit -Name Sales -Path "OU=Workstations,OU=ZM_Computers,DC=AD,DC=zmassing,DC=com"
  New-ADOrganizationalUnit -Name Legal -Path "OU=Workstations,OU=ZM_Computers,DC=AD,DC=zmassing,DC=com"
  New-ADOrganizationalUnit -Name IT -Path "OU=Workstations,OU=ZM_Computers,DC=AD,DC=zmassing,DC=com"
 New-ADOrganizationalUnit -Name Servers -Path "OU=ZM_Computers,DC=AD,DC=zmassing,DC=com"
  New-ADOrganizationalUnit -Name Hyper-V -Path "OU=Servers,OU=ZM_Computers,DC=AD,DC=zmassing,DC=com"
  New-ADOrganizationalUnit -Name Exchange -Path "OU=Servers,OU=ZM_Computers,DC=AD,DC=zmassing,DC=com"
New-ADOrganizationalUnit -Name ST_Groups -Path "DC=AD,DC=zmassing,DC=com" -Description "High Level Security Groups"
New-ADOrganizationalUnit -Name ST_Privileged_Accounts -Path "DC=AD,DC=zmassing,DC=com" -Description "Privileged Accounts"
New-ADOrganizationalUnit -Name ST_Users -Path "DC=AD,DC=zmassing,DC=com" -Description "Non-Privileged Accounts"
Write-Host -ForegroundColor yellow "Done creating OUs"
Write-Host -ForegroundColor yellow ""

Write-Host -ForegroundColor yellow "Creating groups based on department"
New-ADGroup -GroupCategory Security -GroupScope Global -Name President -Path "OU=ZM_Groups,DC=AD,DC=zmassing,DC=com"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Finance -Path "OU=ZM_Groups,DC=AD,DC=zmassing,DC=com"
New-ADGroup -GroupCategory Security -GroupScope Global -Name HR -Path "OU=ZM_Groups,DC=AD,DC=zmassing,DC=com"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Sales -Path "OU=ZM_Groups,DC=AD,DC=zmassing,DC=com"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Legal -Path "OU=ZM_Groups,DC=AD,DC=zmassing,DC=com"
New-ADGroup -GroupCategory Security -GroupScope Global -Name IT -Path "OU=ZM_Groups,DC=AD,DC=zmassing,DC=com"
# Create a Leadership group for the President and VPs to access restricted a file share
New-ADGroup -GroupCategory Security -GroupScope Global -Name Leadership -Path "OU=ZM_Groups,DC=AD,DC=zmassing,DC=com"
Write-Host -ForegroundColor yellow "Done creating groups"
Write-Host -ForegroundColor yellow ""
