'use strict';

var init = 0;
$(document).ready(function () {
	systemUtils();
	initCharts();
	
	setInterval(() => {
		systemUtils();
	}, 3000);
	
	function systemUtils(){
		POST("SystemUtils", {}, function(data){
			console.log("data ::::: ", data);
			$("#serverProcessor .chart-pie").attr("data-percent", data.cpu);
			$("#serverProcessor .chart-pie__value").html(data.cpu);
			$("#serverProcessor .chart-pie").data('easyPieChart').update(data.cpu);
			
			$("#serverFreeMemory .chart-pie").attr("data-percent", data.memory.free);
			$("#serverFreeMemory .chart-pie__value").html(data.memory.free);
			$("#serverFreeMemory .chart-pie").data('easyPieChart').update(data.memory.free);
			
			$("#serverUsedMemory .chart-pie").attr("data-percent", data.memory.used);
			$("#serverUsedMemory .chart-pie__value").html(data.memory.used);
			$("#serverUsedMemory .chart-pie").data('easyPieChart').update(data.memory.used);
		})
	}
	
	
	function initCharts(){
		var chartPie = $('.chart-pie');
		
		chartPie.each(function () {
	        var value = $(this).data('pie-value');
	        var size = $(this).data('pie-size');
	        
	        console.log(value);	
	        
	        $(this).find('.chart-pie__value').css({
	            lineHeight: (size-2)+'px',
	            fontSize: (size/4)+'px'
	        });
	        console.log(chartPie.length);
	        
        	$(this).easyPieChart ({
	            easing: 'easeOutBounce',
	            barColor: 'rgba(255,255,255,0.6)',
	            trackColor: '#22313a',
	            scaleColor: 'rgba(0,0,0,0)',
	            lineCap: 'round',
	            lineWidth: 2,
	            size: size,
	            animate: 2000,
	            onStep: function(from, to, percent) {
	                $(this.el).find('.percent').text(Math.round(percent));
	            }
	        })
	    });
	}
	
	
    
});