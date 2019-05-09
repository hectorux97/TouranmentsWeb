<%-- 
    Document   : Profile
    Created on : 16-abr-2019, 11:58:08
    Author     : hector
--%>

<%@page import="java.io.File"%>
<%@page import="beans.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.GlobalInfoDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%if(request.getSession(false)==null){%>
     <jsp:forward page="/Login.jsp"/>
<%}%>
<jsp:useBean id="user" class="beans.Usuario" scope="request" type="beans.Usuario"></jsp:useBean>
<jsp:setProperty name="user" property="*"></jsp:setProperty>
<% if(request.getParameter("nombre")!=null){%>    
    <jsp:forward page="/Controlador/ModificarUsuario"/>    
<%}%>

<!DOCTYPE html>
<html>
    <head>
       
        <title>Mi Perfil</title>
        <%@include file="/includes/headerLinks.html" %>         
    </head>
    <body>
        <header>
             
            <%@include file="/includes/header.jsp" %>
            <div id="alertComplete" class="alert alert-danger text-center" role="alert" style="display:none">
                Rellene todos los campos <button type="button" class="close" data-dismiss="alert" aria-label="Close" ><span aria-hidden="true">&times;</span></button>
            </div>
            <%@include file="/includes/headerPerfil.jsp" %>  
          
        </header>
        
            <%  
                SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd");
                GlobalInfoDAO info= new GlobalInfoDAO();
                ArrayList<Juego> juegos= info.GetJuegos();
                ArrayList<String> urlImg = new ArrayList();
                String path="E:/Usuario/Documents/UnityProyects/TouranmentsWeb/TournamentsWeb/web/img/perfil";
                File imageDir = new File(path);  
                for(File imageFile : imageDir.listFiles()){  
                    String imageFileName = imageFile.getName();  

                        // add this images name to the list we are building up  
                    urlImg.add("/img/perfil/"+imageFileName);  

                }  
                
                //ArrayList<String> urlImg= info.GetImgURL();
                /*Date edad= new Date();                
                java.sql.Date parseDate= new java.sql.Date(edad.getTime());    */                  
                Usuario usuario = (Usuario)session.getAttribute("user");//new Usuario(1, "asdadf","", "X",(byte)0, "asdad@gmail.com",parseDate);                
                session.setMaxInactiveInterval(1200);
                //usuario.setEdad(parseDate);
            
            %>
            <%!
                String SetValueName(String s){
                String res="value='";
                     if(s!="" && s!=null){
                         res+=s;
                     }  
                    res+="'";
                return res;
                }
                String SetValueName(Date s){
                    String res="value='";
                     if(s!=null){
                        SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd");
                        res+=ft.format(s);
                     }  
                    res+="'";
                return res;
                }
                String SetValueName(int s){
                    String res="value='";
                     if(s!=0){
                         res+=s;
                     }  
                    res+="'";
                return res;
                }
                %>
            <main role="main" class="col-md-9  ml-sm-auto col-lg-10 p-0 behind" >
                <!--Cabecera-->

                <!--Perfil-->
                <div>
                    <form class="left form mx-md-2 my-3 pl-2 rounded" method="post" onsubmit="return Validate()">
                         <nav class="navbar-item front overlay " id="imagePanel" style="visibility: hidden;">
                            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom border-dark ml-md-2 mr-md-2">
                            <h1 class="h2" style="color:black">Seleccione imagegn de Perfil</h1>
                            </div>
                             <div class="d-flex align-content-start flex-wrap w-100 h-100">
                                 <%for(String s:urlImg){%>
                                 <img class="m-2 p-2 border border-dark"<%="src='"+s+"'"%> style="height:100px;width:100px;border-width: 3px;" onclick="OneClick(this)"/>
                                 <%}%>
                                
                             </div>
                           
                         </nav>
                        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom ml-md-2 mr-md-2">
                            <h1 class="h2">Mi Perfil</h1>
                        </div>
                        <div class="form-group text-center">

                        </div>
                        <br />
                        <div class="form-group row-1 mb-0">
                            <div class="row m-auto">
                                <div class="col-2 form-group">
                                    <button type="button"class="perfilImageButton" name="button">                                       
                                        <img id="imgPerfil" class="perfilImageButtonImg" <%="src='"+usuario.getImageURL()+"'"%> onclick="ShowPanel();"/> 
                                        <input id="imgPerfilInput" type="text" name="imageURL" <%=SetValueName((usuario.getImageURL()!=""?usuario.getImageURL():"/img/perfil/IconoWeb.png"))%>  style="visibility: hidden;"><br />
                                    </button>
                                </div>
                                <div class="col-5 form-group">
                                    <label for="nombre">Nombre</label>
                                    <input id="nombre" class="form-control rounded-0" type="text" name="nombre" <%=SetValueName(usuario.getNombre())%> placeholder="Nombre" minlength="3" maxlength="20"><br />

                                    <label for="apellidos">Apellidos</label>
                                    <input id="apellidos" class="form-control rounded-0" type="text" name="apellidos" <%=SetValueName(usuario.getApellidos())%> placeholder="Apellidos" minlength="6" maxlength="50"><br />

                                </div>
                            </div>
                        </div>
                        <div class="form-group row-1">
                            <div class="row m-auto">
                                <div class="col form-group">
                                    <label for="alias">Alias</label>
                                    <input id="alias" class="form-control rounded-0" type="text" name="alias" <%=SetValueName(usuario.getAlias())%> placeholder="Alias" minlength="3" maxlength="45"><br />
                                </div>
                                <div class="col form-group">
                                    <label for="correo">Correo</label>
                                    <input id="correo" class="form-control rounded-0" type="email" name="email" <%=SetValueName(usuario.getEmail())%> placeholder="Nombre@mail.com"><br />
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row m-auto">
                                <div class="col form-group">
                                    <label for="pais">País</label>
                                    <select name="pais"class="selectpicker form-control rounded-0">
                                        <option disabled value="">Pais</option>
                                        <option value="Afganistan">Afghanistan</option>
                                        <option value="Albania">Albania</option>
                                        <option value="Algeria">Algeria</option>
                                        <option value="American Samoa">American Samoa</option>
                                        <option value="Andorra">Andorra</option>
                                        <option value="Angola">Angola</option>
                                        <option value="Anguilla">Anguilla</option>
                                        <option value="Antigua &amp; Barbuda">Antigua &amp; Barbuda</option>
                                        <option value="Argentina">Argentina</option>
                                        <option value="Armenia">Armenia</option>
                                        <option value="Aruba">Aruba</option>
                                        <option value="Australia">Australia</option>
                                        <option value="Austria">Austria</option>
                                        <option value="Azerbaijan">Azerbaijan</option>
                                        <option value="Bahamas">Bahamas</option>
                                        <option value="Bahrain">Bahrain</option>
                                        <option value="Bangladesh">Bangladesh</option>
                                        <option value="Barbados">Barbados</option>
                                        <option value="Belarus">Belarus</option>
                                        <option value="Belgium">Belgium</option>
                                        <option value="Belize">Belize</option>
                                        <option value="Benin">Benin</option>
                                        <option value="Bermuda">Bermuda</option>
                                        <option value="Bhutan">Bhutan</option>
                                        <option value="Bolivia">Bolivia</option>
                                        <option value="Bonaire">Bonaire</option>
                                        <option value="Bosnia &amp; Herzegovina">Bosnia &amp; Herzegovina</option>
                                        <option value="Botswana">Botswana</option>
                                        <option value="Brazil">Brazil</option>
                                        <option value="British Indian Ocean Ter">British Indian Ocean Ter</option>
                                        <option value="Brunei">Brunei</option>
                                        <option value="Bulgaria">Bulgaria</option>
                                        <option value="Burkina Faso">Burkina Faso</option>
                                        <option value="Burundi">Burundi</option>
                                        <option value="Cambodia">Cambodia</option>
                                        <option value="Cameroon">Cameroon</option>
                                        <option value="Canada">Canada</option>
                                        <option value="Canary Islands">Canary Islands</option>
                                        <option value="Cape Verde">Cape Verde</option>
                                        <option value="Cayman Islands">Cayman Islands</option>
                                        <option value="Central African Republic">Central African Republic</option>
                                        <option value="Chad">Chad</option>
                                        <option value="Channel Islands">Channel Islands</option>
                                        <option value="Chile">Chile</option>
                                        <option value="China">China</option>
                                        <option value="Christmas Island">Christmas Island</option>
                                        <option value="Cocos Island">Cocos Island</option>
                                        <option value="Colombia">Colombia</option>
                                        <option value="Comoros">Comoros</option>
                                        <option value="Congo">Congo</option>
                                        <option value="Cook Islands">Cook Islands</option>
                                        <option value="Costa Rica">Costa Rica</option>
                                        <option value="Cote DIvoire">Cote D'Ivoire</option>
                                        <option value="Croatia">Croatia</option>
                                        <option value="Cuba">Cuba</option>
                                        <option value="Curaco">Curacao</option>
                                        <option value="Cyprus">Cyprus</option>
                                        <option value="Czech Republic">Czech Republic</option>
                                        <option value="Denmark">Denmark</option>
                                        <option value="Djibouti">Djibouti</option>
                                        <option value="Dominica">Dominica</option>
                                        <option value="Dominican Republic">Dominican Republic</option>
                                        <option value="East Timor">East Timor</option>
                                        <option value="Ecuador">Ecuador</option>
                                        <option value="Egypt">Egypt</option>
                                        <option value="El Salvador">El Salvador</option>
                                        <option value="Equatorial Guinea">Equatorial Guinea</option>
                                        <option value="Eritrea">Eritrea</option>
                                        <option value="Estonia">Estonia</option>
                                        <option value="Ethiopia">Ethiopia</option>
                                        <option value="Falkland Islands">Falkland Islands</option>
                                        <option value="Faroe Islands">Faroe Islands</option>
                                        <option value="Fiji">Fiji</option>
                                        <option value="Finland">Finland</option>
                                        <option value="France">France</option>
                                        <option value="French Guiana">French Guiana</option>
                                        <option value="French Polynesia">French Polynesia</option>
                                        <option value="French Southern Ter">French Southern Ter</option>
                                        <option value="Gabon">Gabon</option>
                                        <option value="Gambia">Gambia</option>
                                        <option value="Georgia">Georgia</option>
                                        <option value="Germany">Germany</option>
                                        <option value="Ghana">Ghana</option>
                                        <option value="Gibraltar">Gibraltar</option>
                                        <option value="Great Britain">Great Britain</option>
                                        <option value="Greece">Greece</option>
                                        <option value="Greenland">Greenland</option>
                                        <option value="Grenada">Grenada</option>
                                        <option value="Guadeloupe">Guadeloupe</option>
                                        <option value="Guam">Guam</option>
                                        <option value="Guatemala">Guatemala</option>
                                        <option value="Guinea">Guinea</option>
                                        <option value="Guyana">Guyana</option>
                                        <option value="Haiti">Haiti</option>
                                        <option value="Hawaii">Hawaii</option>
                                        <option value="Honduras">Honduras</option>
                                        <option value="Hong Kong">Hong Kong</option>
                                        <option value="Hungary">Hungary</option>
                                        <option value="Iceland">Iceland</option>
                                        <option value="India">India</option>
                                        <option value="Indonesia">Indonesia</option>
                                        <option value="Iran">Iran</option>
                                        <option value="Iraq">Iraq</option>
                                        <option value="Ireland">Ireland</option>
                                        <option value="Isle of Man">Isle of Man</option>
                                        <option value="Israel">Israel</option>
                                        <option value="Italy">Italy</option>
                                        <option value="Jamaica">Jamaica</option>
                                        <option value="Japan">Japan</option>
                                        <option value="Jordan">Jordan</option>
                                        <option value="Kazakhstan">Kazakhstan</option>
                                        <option value="Kenya">Kenya</option>
                                        <option value="Kiribati">Kiribati</option>
                                        <option value="Korea North">Korea North</option>
                                        <option value="Korea Sout">Korea South</option>
                                        <option value="Kuwait">Kuwait</option>
                                        <option value="Kyrgyzstan">Kyrgyzstan</option>
                                        <option value="Laos">Laos</option>
                                        <option value="Latvia">Latvia</option>
                                        <option value="Lebanon">Lebanon</option>
                                        <option value="Lesotho">Lesotho</option>
                                        <option value="Liberia">Liberia</option>
                                        <option value="Libya">Libya</option>
                                        <option value="Liechtenstein">Liechtenstein</option>
                                        <option value="Lithuania">Lithuania</option>
                                        <option value="Luxembourg">Luxembourg</option>
                                        <option value="Macau">Macau</option>
                                        <option value="Macedonia">Macedonia</option>
                                        <option value="Madagascar">Madagascar</option>
                                        <option value="Malaysia">Malaysia</option>
                                        <option value="Malawi">Malawi</option>
                                        <option value="Maldives">Maldives</option>
                                        <option value="Mali">Mali</option>
                                        <option value="Malta">Malta</option>
                                        <option value="Marshall Islands">Marshall Islands</option>
                                        <option value="Martinique">Martinique</option>
                                        <option value="Mauritania">Mauritania</option>
                                        <option value="Mauritius">Mauritius</option>
                                        <option value="Mayotte">Mayotte</option>
                                        <option value="Mexico">Mexico</option>
                                        <option value="Midway Islands">Midway Islands</option>
                                        <option value="Moldova">Moldova</option>
                                        <option value="Monaco">Monaco</option>
                                        <option value="Mongolia">Mongolia</option>
                                        <option value="Montserrat">Montserrat</option>
                                        <option value="Morocco">Morocco</option>
                                        <option value="Mozambique">Mozambique</option>
                                        <option value="Myanmar">Myanmar</option>
                                        <option value="Nambia">Nambia</option>
                                        <option value="Nauru">Nauru</option>
                                        <option value="Nepal">Nepal</option>
                                        <option value="Netherland Antilles">Netherland Antilles</option>
                                        <option value="Netherlands">Netherlands (Holland, Europe)</option>
                                        <option value="Nevis">Nevis</option>
                                        <option value="New Caledonia">New Caledonia</option>
                                        <option value="New Zealand">New Zealand</option>
                                        <option value="Nicaragua">Nicaragua</option>
                                        <option value="Niger">Niger</option>
                                        <option value="Nigeria">Nigeria</option>
                                        <option value="Niue">Niue</option>
                                        <option value="Norfolk Island">Norfolk Island</option>
                                        <option value="Norway">Norway</option>
                                        <option value="Oman">Oman</option>
                                        <option value="Pakistan">Pakistan</option>
                                        <option value="Palau Island">Palau Island</option>
                                        <option value="Palestine">Palestine</option>
                                        <option value="Panama">Panama</option>
                                        <option value="Papua New Guinea">Papua New Guinea</option>
                                        <option value="Paraguay">Paraguay</option>
                                        <option value="Peru">Peru</option>
                                        <option value="Phillipines">Philippines</option>
                                        <option value="Pitcairn Island">Pitcairn Island</option>
                                        <option value="Poland">Poland</option>
                                        <option value="Portugal">Portugal</option>
                                        <option value="Puerto Rico">Puerto Rico</option>
                                        <option value="Qatar">Qatar</option>
                                        <option value="Republic of Montenegro">Republic of Montenegro</option>
                                        <option value="Republic of Serbia">Republic of Serbia</option>
                                        <option value="Reunion">Reunion</option>
                                        <option value="Romania">Romania</option>
                                        <option value="Russia">Russia</option>
                                        <option value="Rwanda">Rwanda</option>
                                        <option value="St Barthelemy">St Barthelemy</option>
                                        <option value="St Eustatius">St Eustatius</option>
                                        <option value="St Helena">St Helena</option>
                                        <option value="St Kitts-Nevis">St Kitts-Nevis</option>
                                        <option value="St Lucia">St Lucia</option>
                                        <option value="St Maarten">St Maarten</option>
                                        <option value="St Pierre &amp; Miquelon">St Pierre &amp; Miquelon</option>
                                        <option value="St Vincent &amp; Grenadines">St Vincent &amp; Grenadines</option>
                                        <option value="Saipan">Saipan</option>
                                        <option value="Samoa">Samoa</option>
                                        <option value="Samoa American">Samoa American</option>
                                        <option value="San Marino">San Marino</option>
                                        <option value="Sao Tome &amp; Principe">Sao Tome &amp; Principe</option>
                                        <option value="Saudi Arabia">Saudi Arabia</option>
                                        <option value="Senegal">Senegal</option>
                                        <option value="Serbia">Serbia</option>
                                        <option value="Seychelles">Seychelles</option>
                                        <option value="Sierra Leone">Sierra Leone</option>
                                        <option value="Singapore">Singapore</option>
                                        <option value="Slovakia">Slovakia</option>
                                        <option value="Slovenia">Slovenia</option>
                                        <option value="Solomon Islands">Solomon Islands</option>
                                        <option value="Somalia">Somalia</option>
                                        <option value="South Africa">South Africa</option>
                                        <option value="Spain" selected>Spain</option>
                                        <option value="Sri Lanka">Sri Lanka</option>
                                        <option value="Sudan">Sudan</option>
                                        <option value="Suriname">Suriname</option>
                                        <option value="Swaziland">Swaziland</option>
                                        <option value="Sweden">Sweden</option>
                                        <option value="Switzerland">Switzerland</option>
                                        <option value="Syria">Syria</option>
                                        <option value="Tahiti">Tahiti</option>
                                        <option value="Taiwan">Taiwan</option>
                                        <option value="Tajikistan">Tajikistan</option>
                                        <option value="Tanzania">Tanzania</option>
                                        <option value="Thailand">Thailand</option>
                                        <option value="Togo">Togo</option>
                                        <option value="Tokelau">Tokelau</option>
                                        <option value="Tonga">Tonga</option>
                                        <option value="Trinidad &amp; Tobago">Trinidad &amp; Tobago</option>
                                        <option value="Tunisia">Tunisia</option>
                                        <option value="Turkey">Turkey</option>
                                        <option value="Turkmenistan">Turkmenistan</option>
                                        <option value="Turks &amp; Caicos Is">Turks &amp; Caicos Is</option>
                                        <option value="Tuvalu">Tuvalu</option>
                                        <option value="Uganda">Uganda</option>
                                        <option value="Ukraine">Ukraine</option>
                                        <option value="United Arab Erimates">United Arab Emirates</option>
                                        <option value="United Kingdom">United Kingdom</option>
                                        <option value="United States of America">United States of America</option>
                                        <option value="Uraguay">Uruguay</option>
                                        <option value="Uzbekistan">Uzbekistan</option>
                                        <option value="Vanuatu">Vanuatu</option>
                                        <option value="Vatican City State">Vatican City State</option>
                                        <option value="Venezuela">Venezuela</option>
                                        <option value="Vietnam">Vietnam</option>
                                        <option value="Virgin Islands (Brit)">Virgin Islands (Brit)</option>
                                        <option value="Virgin Islands (USA)">Virgin Islands (USA)</option>
                                        <option value="Wake Island">Wake Island</option>
                                        <option value="Wallis &amp; Futana Is">Wallis &amp; Futana Is</option>
                                        <option value="Yemen">Yemen</option>
                                        <option value="Zaire">Zaire</option>
                                        <option value="Zambia">Zambia</option>
                                        <option value="Zimbabwe">Zimbabwe</option>
                                    </select>
                                </div>
                                <div class="col form-group">
                                    <label for="telefono">Teléfono</label>
                                    <input id="telefono" class="form-control rounded-0" type="number" name="telefono" <%=SetValueName(usuario.getTelefono())%> placeholder="64473920923"min="100000000" max="999999999"><br />
                                </div>
                                <div class="form-group text-center col">
                                    <label for="edad">Edad</label>
                                    <input id="edad" type="date" class="form-control rounded-0 w-50 text-center m-auto"  name="fechaNacimiento" <%=SetValueName(usuario.getEdad())%> min="1920-01-01" <%="max='"+ft.format(new Date())+"'"%>><br />
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                        <% int i=0;
                            for(Juego j:juegos){ %>
                            <label for="edad">Nick <%=j.getNombre() %></label>
                            <input <%="id='nickJuego"+i+"'"%> type="text" class="form-control rounded-0 w-25 "  <%="name='nicksJuegos'"%> <%=SetValueName(usuario.getNick(j.getNombre()))%> minlength="1" maxlength="45"><br />
                        <%}%>    
                        </div>
                        <div class="form-group pb-2">
                            <div class="inclinado w-25 m-auto ">
                                <input class="nav-link text-center m-auto" type="submit" name="submit" value="Guardar Cambios">
                            </div>
                        </div>
                    </form>
                </div>
            </main>
            <script>
            
            /* var alias= document.getElementById("alias");
             var nombre= document.getElementById("nombre");
             var email= document.getElementById("email");*/
            var img= document.getElementById("imgPerfil");
            
            var imgInput= document.getElementById("imgPerfilInput");
            var alertComplete=document.getElementById("alertComplete");
            var nombre= document.getElementById("nombre");
            var nombreInitialValue=nombre.value;
            var apellidos= document.getElementById("apellidos");
            var apellidosInitialValue=apellidos.value;
            var alias= document.getElementById("alias");
            var aliasInitialValue=alias.value;
            var correo= document.getElementById("correo");
            var correoInitialValue=correo.value;
            var edad= document.getElementById("edad");
            var edadInitialValue=edad.value;
            var telefono= document.getElementById("telefono");
            var telfonoInitialValue=telefono.value;
           
            var onImageSelection=false;
            var Validate= function(){
                if(onImageSelection){
                    return false;
                }
                if(correo.value===""){
                    correo.value=correoInitialValue;
                }      
               
                if(nombre.value===""){
                    nombre.value=nombreInitialValue;
                }
                if(!nombreRE.test(nombre.value)){
                    return false;
                }
                if(apellidos.value===""){
                    apellidos.value=apellidosInitialValue;
                }
                if(!apellidosRE.test(apellidos.value)){
                    return false;
                }
                
                if(alias.value===""){
                    alias.value=aliasInitialValue;
                }
                if(!nombreRE.test(alias.value)){
                    return false;
                }
                if(edad.value===""){
                    edad.value=edadInitialValue;
                }
                
                if(telefono.value===""){
                    telefono.value=telfonoInitialValue;
                }               
                return true;
             };
            var panelImg= document.getElementById("imagePanel");
            function OneClick(obj){
                 img.src=obj.src;
                imgInput.value=obj.src;
                if(panelImg.style.visibility==="visible"){
                panelImg.style.visibility=("hidden");
                }else{
                    panelImg.style.visibility=("visible");
                }
               
            }
            var ShowPanel= function(){
                if(panelImg.style.visibility=="visible"){
                panelImg.style.visibility=("hidden");
                }else{
                    panelImg.style.visibility=("visible");
                }
            };
            function SetImgURL(value){
                img.src=value.src;
                imgInput.value=value.src;
            };
            function ValidateIMG(src){
            var im = new Image(100,100);
                im.onload = function() {
                    // code to set the src on success
                   SetImgURL(src);
                };
                im.onerror = function() {
                    // doesn't exist or error loading
                    alert('no image');
                };

                im.src = src; // fires off loading of image
            };
            
        </script>
            <%@include file="/includes/footer.html"%>          
    </body>
</html>
