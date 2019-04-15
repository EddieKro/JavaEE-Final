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
        {'Q':'How large is your house in square feet?'},
        {'Q':'How large is your lot in square feet?'},
        {'Q':'How many garages do you have?'},
        {'Q':'How many rooms do you have?'},
        {'Q':'What years was your house built?'}
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
                $('label.element-animation').unbind('click');
                setTimeout(function(){
                    var toAppend = '';
                    // $.each(q, function(i, a){
                    //     toAppend += '<tr>'
                    //     toAppend += '<td>'+(i+1)+'</td>';
                    //     toAppend += '<td>'+a.A+'</td>';
                    //     toAppend += '<td>'+a.UC+'</td>';
                    //     toAppend += '<td>'+a.result+'</td>';
                    //     toAppend += '</tr>'
                    // });
                    $('#loadbar').fadeOut();
                    $('#result-of-question').show();
                    $('#graph-result').show();
                    chartMake();
                }, 1000);
            } else {
                
                $('input:radio').prop('checked', false);
                setTimeout(function(){
                    $('#qid').html(questionNo + 1);
                    $('#question').html(q[questionNo].Q); 
                    $('#loadbar').fadeOut(200);
                    $('#quiz').fadeIn(500);
                    reset();
                    if((questionNo+1)===q.length){
                        var field = document.getElementById("ans");
                        field.value=1900;
                        field.min = 1900;
                        field.max = 2019;
                    };
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
// chartMake();
    function chartMake(){

         var chart = AmCharts.makeChart("chartdiv",
            {
            "type": "serial",
            "theme": "dark",
            "dataProvider": [{
                "name": "Correct",
                "points": correctCount,
                "color": "#00FF00",
                "bullet": "http://i2.wp.com/img2.wikia.nocookie.net/__cb20131006005440/strategy-empires/images/8/8e/Check_mark_green.png?w=250"
            }, {
                "name": "Incorrect",
                "points":q.length-correctCount,
                "color": "red",
                "bullet": "http://4vector.com/i/free-vector-x-wrong-cross-no-clip-art_103115_X_Wrong_Cross_No_clip_art_medium.png"
            }],
            "valueAxes": [{
                "maximum": q.length,
                "minimum": 0,
                "axisAlpha": 0,
                "dashLength": 4,
                "position": "left"
            }],
            "startDuration": 1,
            "graphs": [{
                "balloonText": "<span style='font-size:13px;'>[[category]]: <b>[[value]]</b></span>",
                "bulletOffset": 10,
                "bulletSize": 52,
                "colorField": "color",
                "cornerRadiusTop": 8,
                "customBulletField": "bullet",
                "fillAlphas": 0.8,
                "lineAlpha": 0,
                "type": "column",
                "valueField": "points"
            }],
            "marginTop": 0,
            "marginRight": 0,
            "marginLeft": 0,
            "marginBottom": 0,
            "autoMargins": false,
            "categoryField": "name",
            "categoryAxis": {
                "axisAlpha": 0,
                "gridAlpha": 0,
                "inside": true,
                "tickLength": 0
            }
        });
    }
}); 