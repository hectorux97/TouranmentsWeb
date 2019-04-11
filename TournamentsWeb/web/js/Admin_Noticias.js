var tabla;
var noticias= ["",""];
var noticiasChecked=["",""];
var index=0;
//  alert("Loaded");
//document.body.onload=Init();
function Init(){
    index=-1;
  //  alert("Loaded");
    tabla= document.getElementById("table");
    for(i=0;i<10;i++){
      noticia= new Noticia("Titulo"+i,i+"-"+i+"-"+i+""+i,"tr"+i);
      noticias[i]=noticia.CrearNoticia();
    }
    Noticia.BorrarNoticia(noticias[3]);
}

class Noticia{
  constructor(tituloNoticia,fechaPublicacion, id){
    this.titulo=tituloNoticia;
    this.fecha=fechaPublicacion;
    this.id=id;
  }
   CrearNoticia(){
    var txt=tabla.innerHTML;
    var obj=document.createElement("tr");
    obj.id=this.id;
    obj.innerHTML="<td name='tituloNoticia'>"+this.titulo+"</td>"
            +"<td name='fechaPublicacion'>"+this.fecha+"</td>"
            +"<td><input type='checkbox' name='selected' onchange='CheckNoticia("+obj.id+");'></td>";
    tabla.appendChild(obj);
    return obj;
  }
  static BorrarNoticia(obj){
    tabla.removeChild(obj);
  }

}
function CheckNoticia(id){

  for(i=0;i<=index;i++){
    if(noticiasChecked[i]==id){
        noticiasChecked.splice(i, 1);
      //  alert("Ya estab en la lista");
        return;
    }
  }
  index++;
//  alert(index);
  noticiasChecked[index]=id;

}

function BorrarNoticias(){
  //alert("Borrando");
  for(i=0;i<=index;i++){
  //  alert("Borrando"+noticiasChecked[i]+""+i);
    Noticia.BorrarNoticia(noticiasChecked[i]);
  /*  let not=noticiasChecked[i];
    not.parentNode.removeChild(not);*/
  }
  noticiasChecked=["",""];
  index=-1;
}
