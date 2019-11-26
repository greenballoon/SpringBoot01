"use strict";
$(function () {
    $.ajax({
        type: "GET",
        url: "./src/data/44.json",
        dataType: "json",
        success: function (data) {
            var Data = data[1].data;
            //   console.log(Data)
            for (var i = 0; i < Data.length; i++) {
                var str = "";
                // console.log(Data[i][0].FLOORNAME)
                str = "<div class=\"content-block\">\n                <div class=\"content-floor\">" + Data[i][0].FLOORNAME + "\u5C42</div>";
                // console.log(Data[i].length)
                for (var j = 0; j < Data[i].length; j++) {
                    // console.log(Data[i][j])
                    str += "\n                            <div class=\"content-downstairs\"><a href=\"ccqDetailsFloorDeta.html\">" + Data[i][j].ROOMNO + "</a></div>\n                    ";
                }
                str += " </div>";
                $(".content-container").append(str);
            }
            // var d1="";
            // var d2 = "";
            // var strDownstairs = "<div>";
            // $.each(Data,function(i:any,n:any){  
            //     d1 = n[0].FLOORNAME;
            //     $.each(n,function(ii:any,nn:any){
            //     d2 = nn.FLOORNAME;
            //     // console.log(d1==d2)
            //     // // if(d1=d2){
            //     // //     // console.log(nn.FLOORNAME);
            //     //     strDownstairs += `
            //     //     <div class="content-downstairs"><a href="ccqDetailsFloorDeta.html">${nn.FLOORNAME}-${nn.ROOMNO}</a></div>
            //     //     `
            //     // // }else{
            //     // // }
            //         str += `
            //             <div class="content-block">
            //                 <div class="content-floor">${nn.FLOORNAME}层</div>
            //                 <div class="content-downstairs"><a href="ccqDetailsFloorDeta.html">${nn.FLOORNAME}-${nn.ROOMNO}</a></div>
            //             </div>
            //         `
            //         if(nn.FLOORNAME){
            //         }
            //     })
            //     strDownstairs+= '</div>'
            // });  
            // $(".content-container").append(str);  
            // $(".content-block").append(strDownstairs)
        }
    });
});
