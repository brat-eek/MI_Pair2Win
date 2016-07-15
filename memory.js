function triggerMouseEvent (node, eventType) {
    var clickEvent = document.createEvent ('MouseEvents');
    clickEvent.initEvent (eventType, true, true);
    node.dispatchEvent (clickEvent);
}

out=document.getElementsByClassName("card-list clearfix")

x = document.getElementsByClassName("front");
r=0;
c=0;
j=-1;
arr=[];
rows=[];
cols=[];

pos1=[];
pos2=[];
pos3=[];
pos4=[];

for(i=1; i<x.length; i+=2){
j++;
//console.log(((x[i].getElementsByTagName('img')[0]).src)[66],r,c);
rows[j]=r;
cols[j]=c;
arr[j]=((x[i].getElementsByTagName('img')[0]).src)[66];
c++;
if(c==6){r++;c=0;} //c=no of columns literally
}

cnt=0;
var o = {};
for(i=0; i<arr.length; i++){
  item=arr[i];
  for(j=0; j<arr.length; j++){
    com=arr[j];
    var a = parseInt(rows[i]),
        b = parseInt(cols[i]),
        c = parseInt(rows[j]),
        d = parseInt(cols[j]);

    if(item==com && i!=j && !(o['' + a + b] || o['' + c + d])){
      console.log(a, b,' to ',c, d);
      pos1[cnt]=a;
      pos2[cnt]=b;
      pos1[cnt+1]=c;
      pos2[cnt+1]=d;
      //console.log(pos1[cnt], pos2[cnt], ' se ',pos3[cnt],pos4[cnt]);
      cnt+=2;
      //triggerMouseEvent(out[a].getElementsByTagName('li')[b],"mousedown")
      //triggerMouseEvent(out[c].getElementsByTagName('li')[d],"mousedown")
      
      o['' + a + b] = true;
      o['' + c + d] = true;
      break;
    }
  }
}
//console.log(pos1);
//console.log(pos2);

m=0;
// u=0;
 lol = setInterval(function(){
   triggerMouseEvent(out[pos1[m]].getElementsByTagName('li')[pos2[m]],"mousedown");
   m++;
   if(m==24){
     clearInterval(lol);
   }
 }, 800);



//optimisation
/*
m=0;

 toolol = setInterval(function(){
   lolt = setTimeout(function(){
   triggerMouseEvent(out[pos1[m]].getElementsByTagName('li')[pos2[m]],"mousedown");
   m++;
 }, 200);
   lolt = setTimeout(function(){
   triggerMouseEvent(out[pos1[m]].getElementsByTagName('li')[pos2[m]],"mousedown");
   m++;
 }, 300);
   if(m==24){
     clearInterval(toolol);
   }
}, 800);

*/

