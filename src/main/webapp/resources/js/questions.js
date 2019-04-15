$(function(){
    var loading = $('#loadbar').hide();
    $(document)
    .ajaxStart(function () {
        loading.show();
    }).ajaxStop(function () {
        loading.hide();
    });
    
    var questionNo = 0;
    var q = [
        {'Q':'How large is your lot in square feet?'},
        {'Q':'How large is your first floor in square feet?'},
        {'Q':'How large is your second floor in square feet?'},
        {'Q':'How large is your basement in square feet?'},
        {'Q':'How large is your garage in square feet'},
        {'Q':'How many rooms do you have?'},
        {'Q':'What years was your house built?'},
        {'Q':'What city do you live in?'}
    ];

 
    $(document.body).on('click',"label.go",function (e) {
    //ripple start
        var parent, ink, d, x, y;       
         parent = $(this);
        if(parent.find(".ink").length == 0)
            parent.prepend("<span class='ink'></span>");
            
        ink = parent.find(".ink");
        ink.removeClass("animate");
        
        if(!ink.height() && !ink.width())
        {
            d = Math.max(parent.outerWidth(), parent.outerHeight());
            ink.css({height: "100px", width: "100px"});
        }
        
        x = e.pageX - parent.offset().left - ink.width()/2;
        y = e.pageY - parent.offset().top - ink.height()/2;
        
        ink.css({top: y+'px', left: x+'px'}).addClass("animate");
    //ripple end

        var choice = document.getElementById("ans").value;
        console.log(choice); 
        q[questionNo].CH = choice;
        console.log("Input:" + q[questionNo].CH);
        setTimeout(function(){
            $('#loadbar').show();
            $('#quiz').fadeOut(70);
            questionNo++;
            if((questionNo + 1) > q.length){
                alert("Now it's time to analyze what your property's worth.");
                // $('label.element-animation').unbind('click');

                    var link = 'http://localhost:8080/modelbase/params';
                    for(var i=0;i<q.length-1;i++){
                        link += '/';
                        link += q[i].CH;
                    }
                    link += '/2/'+q[7].CH;
                    console.log(link);
                    $.getJSON(link,function(data){
                        $('#qid').html('');
                        $('#question').html("Your price estimate: "+data['result']+"$");
                    });
                    var under = document.getElementById('usethis');
                    $('#usethis').empty();
                    under.innerHTML = "<li><label class=\"element-animation\"><button type=\"button\" style=\"margin-left:3%;width:30%;height:3em\" onclick=\" relocate_home()\" class=\"btn btn-primary\">Home</button>\n" +
                        "<button type=\"button\" onclick=\" reload()\" style=\"margin-left:10%;width:30%;height:3em\" class=\"btn btn-success\">Again</button></label></li>"
                setTimeout(function(){
                    $('#loadbar').fadeOut(200);
                    $('#quiz').fadeIn(400);
                    // $('#result-of-question').show();
                    // $('#graph-result').show();
                }, 3400);
            } else {
                
                $('input:radio').prop('checked', false);
                setTimeout(function(){
                    $('#qid').html(questionNo + 1);
                    $('#question').html(q[questionNo].Q); 
                    $('#loadbar').fadeOut(200);
                    $('#quiz').fadeIn(500);
                    reset();
                    if((questionNo+2)===q.length){
                        var field = document.getElementById("ans");
                        field.value=1900;
                        field.min = 1900;
                        field.max = 2019;
                    }
                    if((questionNo+1)===q.length){
                        console.log('here');
                        var field = document.getElementById("ans");
                        var parent = field.parentElement;
                        parent.removeChild(field);
                        parent.innerHTML = "<select name=\"countryCode\" class=\"inpnu\" id=\"ans\">\n" +
                            "\t<option data-countryCode=\"US\" value=\"AZ-Phoenix\" Selected>AZ-Phoenix</option>\n" +
                            "\t<option data-countryCode=\"US\" value=\"CA-Los Angeles\">CA-Los Angeles</option>\n" +
                            "\t<option data-countryCode=\"US\" value=\"CA-San Diego\">CA-San Diego</option>\n"+
                            "\t<option data-countryCode=\"US\" value=\"CA-San Francisco\">CA-San Francisco</option>\n"+
                            "\t<option data-countryCode=\"US\" value=\"CO-Denver\">CO-Denver</option>\n"+
                            "\t<option data-countryCode=\"US\" value=\"DC-Washington\">DC-Washington</option>\n"+
                            "\t<option data-countryCode=\"US\" value=\"FL-Miami\">FL-Miami</option>\n"+
                            "\t<option data-countryCode=\"US\" value=\"FL-Tampa\">FL-Tampa</option>\n"+
                            "\t<option data-countryCode=\"US\" value=\"GA-Atlanta\">GA-Atlanta</option>\n"+
                            "\t<option data-countryCode=\"US\" value=\"IL-Chicago\">IL-Chicago</option>\n"+
                            "\t<option data-countryCode=\"US\" value=\"MA-Boston\">MA-Boston</option>\n"+
                            "\t<option data-countryCode=\"US\" value=\"MI-Detroit\">MI-Detroit</option>\n"+
                            "\t<option data-countryCode=\"US\" value=\"MN-Minneapolis\">MN-Minneapolis</option>\n"+
                            "\t<option data-countryCode=\"US\" value=\"NC-Charlotte\">NC-Charlotte</option>\n"+
                            "\t<option data-countryCode=\"US\" value=\"NV-Las Vegas\">NV-Las Vegas</option>\n"+
                            "\t<option data-countryCode=\"US\" value=\"NY-New York\">NY-New York</option>\n"+
                            "\t<option data-countryCode=\"US\" value=\"OH-Cleveland\">OH-Cleveland</option>\n"+
                            "\t<option data-countryCode=\"US\" value=\"OR-Portland\">OR-Portland</option>\n"+
                            "\t<option data-countryCode=\"US\" value=\"TX-Dallas\">TX-Dallas</option>\n"+
                            "\t<option data-countryCode=\"US\" value=\"WA-Seattle\">WA-Seattle</option>\n"+
                            "\t</select>"
                    }
                }, 1500);            
            }
        }, 1000);
    });

    function reset(){
        var resetButton = document.getElementById("ans");
        if(resetButton){
            resetButton.value= 0;
       }
    }
}); 