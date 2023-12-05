<?php
require '../../vendor/autoload.php';
// require('fecha_español.php');
date_default_timezone_set('UTC');
date_default_timezone_set('America/Monterrey'); 

function enviargmail($subject, $para, $cc, $bcc, $message)
{

  $smtpServer = "smtp.gmail.com";
  $smtpPort = 465;
  $smtpUsername = "no-reply@nationalunity.com.mx";
  $smtpPassword = "Nuic15303";

  $headers = array(
    'From' => 'no-reply@nationalunity.com.mx',
    'To' => $para,
    'CC' => $cc,
    'BCC' => $bcc,
    'Subject' => $subject
  );

  $smtpConfig = array(
    'ssl' => array(
      'verify_peer' => false,
      'verify_peer_name' => false,
      'allow_self_signed' => true
    )
  );

  $transport = new \Swift_SmtpTransport($smtpServer, $smtpPort, 'ssl');
  $transport->setUsername($smtpUsername);
  $transport->setPassword($smtpPassword);

  $mailer = new \Swift_Mailer($transport);
  $messageObj = new \Swift_Message($subject);
  $messageObj->setFrom($headers['From']);
  $messageObj->setTo($headers['To']);
  $messageObj->setCc($headers['CC']);
  $messageObj->setBcc($headers['BCC']);
  $messageObj->setBody($message, 'text/html');

  $Poliza = $_POST['poliza_number'];

  $P = $_POST['folio'];

  $context = stream_context_create([
      "ssl" => [
          "verify_peer" => false,
          "verify_peer_name" => false,
      ],
  ]);

  // Ruta de la URL del archivo PDF
  //$attachmentUrl = 'https://www.nuicservices.com/pdfphp/pdfauto_test.php?f=' . $Poliza . '&p='. $P .'';
  $attachmentUrl = 'https://www.nationalunity.com/pdfphp/pdfautosUC.php?p=euc&f='. $P .'';
  // https://www.nationalunity.com/pdfphp/pdfautosUC.php?p=euc&f=354230620

  // Descarga el archivo desde la URL
  //$fileContent = file_get_contents($attachmentUrl);
  $fileContent = file_get_contents("https://www.nuicservices.com", false, $context);

  // Crea un objeto Swift_Attachment con el contenido descargado y especifica el nombre del archivo
  $attachment = new \Swift_Attachment($fileContent, 'Poliza-'. $P .'.pdf', 'application/pdf');

  // Adjunta el archivo PDF al correo
  $messageObj->attach($attachment);

  // Envía el correo
  $result = $mailer->send($messageObj);

  if ($result) {
    echo "Email sent successfully";
  } else {
    echo "Failed to send email";
  }
}

var_dump($_POST);

$hoy = date("d-m-Y H:i:s");
$fecha = date("d-m-Y", strtotime($hoy . "+ 5 days"));

$var3 = $hoy;
$var4 = $fecha;
$Poliza = $_POST['poliza_number'];

$P = $_POST['folio'];


// Uso de la función enviargmail
$subject = 'Poliza-' . $P . '';
$para = $_POST['emailtext'];
$cc = $_POST['emailtext'];
$bcc = $_POST['emailtext'];

$message = ('<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:o="urn:schemas-microsoft-com:office:office"
style="font-family:arial, helvetica neue, helvetica, sans-serif">

<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1" name="viewport">
<meta name="x-apple-disable-message-reformatting">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="telephone=no" name="format-detection">
<title>Emision Express</title><!--[if (mso 16)]>
  <style type="text/css">
  a {text-decoration: none;}
  </style>
  <![endif]--><!--[if gte mso 9]><style>sup { font-size: 100% !important; }</style><![endif]--><!--[if gte mso 9]>
<xml>
  <o:OfficeDocumentSettings>
  <o:AllowPNG></o:AllowPNG>
  <o:PixelsPerInch>96</o:PixelsPerInch>
  </o:OfficeDocumentSettings>
</xml>
<![endif]--><!--[if !mso]><!-- -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
  integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Imprima&display=swap" rel="stylesheet"><!--<![endif]-->
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<style>
.table td {
  vertical-align: top;
  border-top: 1px solid #dee2e6;
}
.my-button {
  padding: 10px 20px;
  background-color: #0276dd;
  color: white;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}
.my-button:hover {
  background-color: #0061b7;
}
.my-button:active {
  background-color: #0276dd;
}
</style>
</head>

<body
style="width:100%;font-family:arial, helvetica neue, helvetica, sans-serif;-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;padding:0;Margin:0">

<div class="es-wrapper-color" style="background-color:#FFFFFF"><!--[if gte mso 9]>
    <v:background xmlns:v="urn:schemas-microsoft-com:vml" fill="t">
      <v:fill type="tile" color="#ffffff"></v:fill>
    </v:background>
  <![endif]-->
  <table class="es-wrapper" width="100%" cellspacing="0" cellpadding="0"
    style="mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;padding:0;Margin:0;width:100%;height:100%;background-repeat:repeat;background-position:center top;background-color:#FFFFFF">
    <tr>
      <td valign="top" style="padding:0;Margin:0">
        <table cellpadding="0" cellspacing="0" class="es-footer" align="center"
          style="mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;table-layout:fixed !important;width:100%;background-color:transparent;background-repeat:repeat;background-position:center top">
          <tr>
            <td align="center" style="padding:0;Margin:0">
              <table bgcolor="#bcb8b1" class="es-footer-body" align="center" cellpadding="0" cellspacing="0"
                style="mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;background-color:#FFFFFF;width:600px">
                <tr>
                  <td align="left"
                    style="Margin:0;padding-top:20px;padding-bottom:20px;padding-left:40px;padding-right:40px">
                    <table cellpadding="0" cellspacing="0" width="100%"
                      style="mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px">
                      <tr>
                        <td align="center" valign="top" style="padding:0;Margin:0;width:520px">

                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
        <table cellpadding="0" cellspacing="0" class="es-content" align="center"
          style="mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;table-layout:fixed !important;width:100%">
          <tr>
            <td align="center" style="padding:0;Margin:0">
              <table bgcolor="#0276dd4a" class="es-content-body" align="center" cellpadding="0" cellspacing="0"
                style="mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;background-color:#0276dd4a;border-radius:20px;width:600px">
                <tr>
                  <td align="left" style="padding:0;Margin:0;padding-top:40px;padding-left:40px;padding-right:40px">
                    <table cellpadding="0" cellspacing="0" width="100%"
                      style="mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px">
                      <tr>
                        <td align="center" valign="top" style="padding:0;Margin:0;width:520px">
                          <table cellpadding="0" cellspacing="0" width="100%" role="presentation"
                            style="mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px">
                            <tr>
                              <td align="center" class="es-m-txt-c" style="padding:0;Margin:0;font-size:0px"><a
                                  target="_blank" href="#"
                                  style="-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;text-decoration:underline;color:#2D3142;font-size:28px"><img
                                    src="https://www.nationalunity.com/img/logonu.png" alt="¡Pago exitoso!"
                                    style="display:block;border:0;outline:none;text-decoration:none;-ms-interpolation-mode:bicubic;border-radius:100px"
                                    width="150" title="Confirm email"></a></td>
                            </tr>
                          </table>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
                <tr>
                  <td align="left" style="padding: 20px 40px 40px;Margin:0;"">
                    <table cellpadding=" 0" cellspacing="0" width="100%"
                    style="mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px">
                <tr>
                  <td align="center" valign="top" style="padding:0;Margin:0;width:520px">
                    <table cellpadding="0" cellspacing="0" width="100%" bgcolor="#fafafa"
                      style="mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:separate;border-spacing:0px;background-color:#fafafa;border-radius:10px"
                      role="presentation">
                      <tr>
                        <td align="center" style="padding:20px;Margin:0">
                          <h3
                            style="margin:0;line-height:34px;mso-line-height-rule:exactly;font-family:sans-serif;font-size:26px;font-style:normal;color:#2D3142">
                            NATIONAL UNITY INSURANCE POLICY</h3>

                          <div id="custom-invoice">
                            <div class="invoice-123" id="printableArea">
                              <div class="row">
                                <div class="col-md-12">
                                  <div class="table-responsive" style="clear: both">
                                    <table class="table"
                                      style="width: 100%; max-width: 100%; margin-bottom: 1rem; background-color: transparent; border-collapse: collapse; display: table; text-indent: initial; border-spacing: 2px; border-color: gray;">
                                      <tbody>
                                         <!-- start row -->
                                         <tr>
                                          <td align="center" style="padding:20px;Margin:0">
                                            <!-- Info card start -->
  
                                            <!-- Info card end -->
                                            <div>
                                              <p>Si la póliza no se visualiza de manera correcta. Presiona, el boton para descargar el documento: </p>
                                              <a class="my-button" href="https://www.nationalunity.com/pdfphp/pdfautosUC.php?p=euc&f='. $P .'" target="_blank" style="color: white; text-decoration: none;">Descargar Póliza</a>
                                            </div>
                                          </td>
                                          
                                        </tr>
                                      </tbody>
                                    </table>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>

                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
  </td>
  </tr>
  </table>
</div>


</body>

</html>');

enviargmail($subject, $para, $cc, $bcc, $message);
