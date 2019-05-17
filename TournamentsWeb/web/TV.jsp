<%-- 
    Document   : TV
    Created on : 17-may-2019, 17:29:38
    Author     : hector
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <%@include file="/includes/headerLinks.html" %>
        <title>TV</title>
    </head>
    <body>
        <header>           
            
            <%@include file="/includes/header.jsp" %>   
        </header>
        
        <div class="row w-100 ml-0">
            <div class="container-fluid separador backgroundImage menubar">
                <h1 class="separadorletras"> Bambu Gaming TV</h1>
                <h5 class="separadorletras"> Retransmisiones en directo de nuestros torneos </h5>
            </div>
        </div>
        <div class="container">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item tvlol">
                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#clashroyale" role="tab" aria-controls="home" aria-selected="true"><center><img class="imagentv" src="img/juegos/ClashRoyal/ClashRoyalNombre.png"></img></center></a>
                </li>
                <li class="nav-item tvlol">
                    <a class="center-block" id="profile-tab" data-toggle="tab" href="#csgo" role="tab" aria-controls="profile" aria-selected="false"><center><img src="img/juegos/CSGO/CSGONombre.png" class="imagentv"></img></center></a>
                </li>
                <li class="nav-item tvlol">
                    <a class="" id="contact-tab" data-toggle="tab" href="#fortnite" role="tab" aria-controls="contact" aria-selected="false"><center><img src="img/juegos/Fortnite/FortniteNombre.png" class="imagentv"></img></center></a>
                </li>
                <li class="nav-item tvlol">
                    <a class="" id="contact-tab" data-toggle="tab" href="#fifa" role="tab" aria-controls="contact" aria-selected="false"><center><img src="img/juegos/Fifa/FifaNombre.png" class="imagentv"></img></center></a>
                </li>
                <li class="nav-item tvlol">
                    <a class="" id="contact-tab" data-toggle="tab" href="#LOL" role="tab" aria-controls="contact" aria-selected="false"><center><img src="img/juegos/LeagueOfLegends/LeagueOfLegendsNombre.png" class="imagentv"></img></center></a>
                </li>
                <li class="nav-item tvlol">
                    <a class="" id="contact-tab" data-toggle="tab" href="#rainbow" role="tab" aria-controls="contact" aria-selected="false"><center><img src="img/juegos/RainbowSix/RainbowSixNombre.png" class="imagentv"></img></center></a>
                </li>

            </ul>
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="clashroyale" role="tabpanel" aria-labelledby="home-tab"><br><br><br><iframe src="https://player.twitch.tv/?channel=schlonsti" frameborder="0" allowfullscreen="true" scrolling="no" height="378" width="620"></iframe><a href="https://www.twitch.tv/schlonsti?tt_content=text_link&tt_medium=live_embed" style="padding:2px 0px 4px; display:block; width:600px; font-weight:normal; font-size:10px; text-decoration:underline;"></a><br><br><br></div>
                <div class="tab-pane fade" id="csgo" role="tabpanel" aria-labelledby="profile-tab"><br><br><br><iframe src="https://player.twitch.tv/?channel=esl_csgo" frameborder="0" allowfullscreen="true" scrolling="no" height="378" width="620"></iframe><a href="https://www.twitch.tv/esl_csgo?tt_content=text_link&tt_medium=live_embed" style="padding:2px 0px 4px; display:block; width:345px; font-weight:normal; font-size:10px; text-decoration:underline;"></a><br><br><br></div>
                <div class="tab-pane fade" id="fortnite" role="tabpanel" aria-labelledby="contact-tab"><br><br><br><iframe src="https://player.twitch.tv/?channel=ryux" frameborder="0" allowfullscreen="true" scrolling="no" height="378" width="620"></iframe><a href="https://www.twitch.tv/ryux?tt_content=text_link&tt_medium=live_embed" style="padding:2px 0px 4px; display:block; width:345px; font-weight:normal; font-size:10px; text-decoration:underline;"></a><br><br><br></div>
                <div class="tab-pane fade" id="fifa" role="tabpanel" aria-labelledby="contact-tab"><br><br><br><iframe src="https://player.twitch.tv/?channel=davidsp1490" frameborder="0" allowfullscreen="true" scrolling="no" height="378" width="620"></iframe><a href="https://www.twitch.tv/davidsp1490?tt_content=text_link&tt_medium=live_embed" style="padding:2px 0px 4px; display:block; width:345px; font-weight:normal; font-size:10px; text-decoration:underline;"></a><br><br><br></div>
                <div class="tab-pane fade" id="LOL" role="tabpanel" aria-labelledby="contact-tab"><br><br><br><iframe src="https://player.twitch.tv/?channel=electrokidi" frameborder="0" allowfullscreen="true" scrolling="no" height="378" width="620"></iframe><a href="https://www.twitch.tv/electrokidi?tt_content=text_link&tt_medium=live_embed" style="padding:2px 0px 4px; display:block; width:345px; font-weight:normal; font-size:10px; text-decoration:underline;"></a><br><br><br></div>
                <div class="tab-pane fade" id="rainbow" role="tabpanel" aria-labelledby="contact-tab"><br><br><br><iframe src="https://player.twitch.tv/?channel=caramelo_ninja" frameborder="0" allowfullscreen="true" scrolling="no" height="378" width="620"></iframe><a href="https://www.twitch.tv/caramelo_ninja?tt_content=text_link&tt_medium=live_embed" style="padding:2px 0px 4px; display:block; width:345px; font-weight:normal; font-size:10px; text-decoration:underline;"></a><br><br><br></div>
            </div>
        </div>
        
        <%@include file="/includes/footer.html" %>
    </body>
</html>
