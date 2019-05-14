/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
/**
 *
 * @author angel
 */
public class Email {
    public boolean enviarcorreo(String de, String clave,String para,String mensaje,String asunto){
boolean enviado = false;
try{

String host="smtp.gmail.com";

Properties prop=System.getProperties();

prop.put("mail.smtp.starttls.enable",true);
prop.put("mail.smtp.host","host");
prop.put("mail.smtp.user","email");
prop.put("mail.smtp.password","clave");
prop.put("mail.smtp.port",587);
prop.put("mail.smtp.auth",true);

Session session=Session.getDefaultInstance(prop,null);
MimeMessage message= new MimeMessage(session);

message.setFrom(new InternetAddress(de));

message.setRecipient(Message.RecipientType.TO, new InternetAddress(para));
message.setSubject(asunto);
message.setText(mensaje);

System.out.print(message);

Transport transport=session.getTransport("smtp");
transport.connect(host,de,clave);

transport.sendMessage(message, message.getAllRecipients());
transport.close();
enviado=true;
System.out.print(enviado);

}catch (Exception e){
e.printStackTrace();

}
return enviado;

}
}
