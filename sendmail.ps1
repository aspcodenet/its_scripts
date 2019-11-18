#Oscar + Daniel H

$Username = "SKRIV DIN MAIL";
$Password = "SKRIV DITT LÖSEN";
$subject = "Hejsan"

function Send-ToEmail([string]$email){

    $message = new-object Net.Mail.MailMessage;
    $message.From = "DIN MAILADRESS";
    $message.To.Add($email);
    $message.Subject = ($subject);
    $message.Body = ($path);

    $smtp = new-object Net.Mail.SmtpClient("smtp.gmail.com", "587");
    $smtp.EnableSSL = $true;
    $smtp.Credentials = New-Object System.Net.NetworkCredential($Username, $Password);
    $smtp.send($message);
    write-host "Mail Sent" ; 
   
 }
Send-ToEmail  -email "MOTTAGARENS MAILADRESS" ;