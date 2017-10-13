'use strict';

$(document).ready(function(){

	var options = {
        series: {
            shadowSize: 0,
            curvedLines: {
                apply: true,
                active: true,
                monotonicFit: true
            },
            lines: {
                show: false,
                lineWidth: 0
            }
        },
        grid: {
            borderWidth: 0,
            labelMargin:10,
            hoverable: true,
            clickable: true,
            mouseActiveRadius:6

        },
        xaxis: {
            tickDecimals: 0,
            ticks: false
        },

        yaxis: {
            tickDecimals: 0,
            ticks: false
        },

        legend: {
            show: false
        }
    };

	POST("BrowseCount", {}, function(data){
		if ($("#chart-curved-line")[0]) {
	        $.plot($("#chart-curved-line"), [
	            {
	                data: data,
	                lines: {
	                    show: true,
	                    fill: 0.98
	                },
	                label: 'Browser Count ',
	                stack: true,
	                color: '#f58435'
	            },
	        ], options);
	    }
	})




    // Make some random data for the Chart
//    var d1 = [];
//    for (var i = 0; i <= 10; i += 1) {
//        d1.push([i, parseInt(Math.random() * 30)]);
//    }
//    var d2 = [];
//    for (var i = 0; i <= 25; i += 4) {
//        d2.push([i, parseInt(Math.random() * 30)]);
//    }
//    var d3 = [];
//    for (var i = 0; i <= 10; i += 1) {
//        d3.push([i, parseInt(Math.random() * 30)]);
//    }
//
//    console.log(">>>>>>>>>>> :;; ", d1, d2, d3);

    // Chart Options


    // Let's create the chart


   /* if ($("#chart-past-days")[0]) {
        $.plot($("#chart-past-days"), [{
            data: d2,
            lines: {
                show: true,
                fill: 1,
            },
            label: 'Product 1',
            stack: true,
            color: '#35424b'
        }], options);
    }*/

    // Tooltips for Flot Charts
//    if ($('.flot-chart')[0]) {
//        $('.flot-chart').bind('plothover', function (event, pos, item) {
//            if (item) {
//                var x = item.datapoint[0].toFixed(2),
//                    y = item.datapoint[1].toFixed(2);
//                $('.flot-tooltip').html(item.series.label + ' of ' + x + ' = ' + y).css({top: item.pageY+5, left: item.pageX+5}).show();
//            }
//            else {
//                $('.flot-tooltip').hide();
//            }
//        });
//
//        $('<div class="flot-tooltip"></div>').appendTo('body');
//    }
});
