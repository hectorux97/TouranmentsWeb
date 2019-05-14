/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;
import java.util.Properties; 
import java.util.Date; 
import javax.mail.Session; 
import javax.mail.Message; 
import javax.mail.Transport; 
import javax.mail.internet.MimeMultipart; 
import javax.mail.internet.MimeMessage; 
import javax.mail.internet.MimeBodyPart; 
import javax.mail.internet.InternetAddress; 
/**
 *
 * @author angel
 */
public class MailSender {
     public MailSender() { 
   } 
   public static boolean send(String hostSmtp, String senderAddress, String toAddress, 
       String ccAddress, String bccAddress, String subject, 
       boolean isHTMLFormat, StringBuffer body, boolean debug){ 

   MimeMultipart multipart = new MimeMultipart(); 

   Properties properties = new Properties(); 

    properties.put("smtp.gmail.com", hostSmtp); 
   Session session = Session.getDefaultInstance(properties, null); 
   session.setDebug(debug); 
   try { 
      MimeMessage msg = new MimeMessage(session); 
      msg.setFrom(new InternetAddress(senderAddress)); 
      msg.setRecipients(Message.RecipientType.TO, toAddress); 
      msg.setRecipients(Message.RecipientType.CC, ccAddress); 
      msg.setRecipients(Message.RecipientType.BCC, bccAddress); 
      msg.setSubject(subject); 
      msg.setSentDate(new Date()); 

      // BODY 
      MimeBodyPart mbp = new MimeBodyPart(); 
      if(isHTMLFormat){ 
         mbp.setContent(body.toString(), "text/html"); 
      } 
      else{ 
         mbp.setText(body.toString()); 
      } 

      multipart.addBodyPart(mbp); 

      msg.setContent(multipart); 
      Transport.send(msg); 
   } 
   catch (Exception mex){ 
      System.out.println(">> MailSender.send() error = "+mex ); 
      return false; 
   } 
   return true; 
  } 
}
