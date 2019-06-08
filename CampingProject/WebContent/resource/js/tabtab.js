Chart.defaults.global.responsive = true;

 //--------------------------------
//   D R O P D O W N   S E T U P
$(function () {
    $('.menu-TAB_A a').click(function (e) {
        e.preventDefault();
        $('a[href="' + $(this).attr('href') + '"]').tab('show');
        $(this).parent().removeClass('active');
    })
});
$(".menu-TAB_A li a").click(function(){
    $(this).parents(".dropdown-TAB_A").find('.btn').html($(this).text() + ' <span class="caret"></span>');
    $(this).parents(".dropdown-TAB_A").find('.btn').val($(this).data('value'));
});

$(function() {
    $('.menu-TAB_B a').click(function(e) {
        e.preventDefault();
        $('a[href="' + $(this).attr('href') + '"]').tab('show');
        $(this).parent().removeClass('active');
    })
});
$(".menu-TAB_B li a").click(function() {
    $(this).parents(".dropdown-TAB_B").find('.btn').html($(this).text() + ' <span class="caret"></span>');
    $(this).parents(".dropdown-TAB_B").find('.btn').val($(this).data('value'));
});



 //--------------------------
//   D A T A   S E T U P

var chart_settings = {
    datasetStrokeWidth: 4
}

var data_TAB_A_SUB_1 = {
    labels: ["A:1", "A:1", "A:1", "A:1", "A:1", "A:1", "A:1"],
    datasets: [
        {
            label: "My First dataset",
            fillColor: "rgba(220,220,220,0.2)",
            strokeColor: "rgba(220,220,220,1)",
            pointColor: "rgba(220,220,220,1)",
            pointStrokeColor: "#fff",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "rgba(220,220,220,1)",
            data: [65, 59, 80, 81, 56, 55, 40]
        },
        {
            label: "My Second dataset",
            fillColor: "rgba(151,187,205,0.2)",
            strokeColor: "rgba(151,187,205,1)",
            pointColor: "rgba(151,187,205,1)",
            pointStrokeColor: "#fff",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "rgba(151,187,205,1)",
            data: [28, 48, 40, 19, 86, 27, 90]
        }
    ]
};

var data_TAB_A_SUB_2 = {
    labels: ["A:2", "A:2", "A:2", "A:2", "A:2", "A:2", "A:2"],
    datasets: [
        {
            label: "My First dataset",
            fillColor: "rgba(220,220,220,0.2)",
            strokeColor: "rgba(220,220,220,1)",
            pointColor: "rgba(220,220,220,1)",
            pointStrokeColor: "#fff",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "rgba(220,220,220,1)",
            data: [65, 59, 80, 81, 56, 55, 40]
        },
        {
            label: "My Second dataset",
            fillColor: "rgba(151,187,205,0.2)",
            strokeColor: "rgba(151,187,205,1)",
            pointColor: "rgba(151,187,205,1)",
            pointStrokeColor: "#fff",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "rgba(151,187,205,1)",
            data: [28, 48, 40, 19, 86, 27, 90]
        }
    ]
};

var data_TAB_B_SUB_1 = {
    labels: ["B:1", "B:1", "B:1", "B:1", "B:1", "B:1", "B:1"],
    datasets: [
        {
            label: "My First dataset",
            fillColor: "rgba(220,220,220,0.2)",
            strokeColor: "rgba(220,220,220,1)",
            pointColor: "rgba(220,220,220,1)",
            pointStrokeColor: "#fff",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "rgba(220,220,220,1)",
            data: [65, 59, 80, 81, 56, 55, 40]
        },
        {
            label: "My Second dataset",
            fillColor: "rgba(151,187,205,0.2)",
            strokeColor: "rgba(151,187,205,1)",
            pointColor: "rgba(151,187,205,1)",
            pointStrokeColor: "#fff",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "rgba(151,187,205,1)",
            data: [28, 48, 40, 19, 86, 27, 90]
        }
    ]
};

var data_TAB_B_SUB_2 = {
    labels: ["B:2", "B:2", "B:2", "B:2", "B:2", "B:2", "B:2"],
    datasets: [
        {
            label: "My First dataset",
            fillColor: "rgba(220,220,220,0.2)",
            strokeColor: "rgba(220,220,220,1)",
            pointColor: "rgba(220,220,220,1)",
            pointStrokeColor: "#fff",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "rgba(220,220,220,1)",
            data: [65, 59, 80, 81, 56, 55, 40]
        },
        {
            label: "My Second dataset",
            fillColor: "rgba(151,187,205,0.2)",
            strokeColor: "rgba(151,187,205,1)",
            pointColor: "rgba(151,187,205,1)",
            pointStrokeColor: "#fff",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "rgba(151,187,205,1)",
            data: [28, 48, 40, 19, 86, 27, 90]
        }
    ]
};

 //----------------------------------
//   F I R S T   T A B   S E T U P

// canvas context variables
var ctx_TAB_A_SUB_1 = $("#st-figure-TAB_A-SUB_1").get(0).getContext("2d");
var ctx_TAB_A_SUB_2 = $("#st-figure-TAB_A-SUB_2").get(0).getContext("2d");

// temporary variables
var active_chart = new Chart(ctx_TAB_A_SUB_1).Line(data_TAB_A_SUB_1, chart_settings);
var last_active_sub_data_TAB_A = data_TAB_A_SUB_1;
var last_active_sub_canvas_TAB_A = ctx_TAB_A_SUB_1;

// main tab callback
$('a[href$="#TAB_A"]').on('shown.bs.tab', function(e) {
    active_chart.destroy();
    active_chart = new Chart(last_active_sub_canvas_TAB_A).Line(last_active_sub_data_TAB_A, chart_settings);
});

// sub tab callbacks
$('a[href$="#sub-tab-TAB_A-SUB_1"]').on('shown.bs.tab', function(e) {
    active_chart.destroy();
    active_chart = new Chart(ctx_TAB_A_SUB_1).Line(data_TAB_A_SUB_1, chart_settings);
    last_active_sub_data_TAB_A = data_TAB_A_SUB_1
    last_active_sub_canvas_TAB_A = ctx_TAB_A_SUB_1
});

$('a[href$="#sub-tab-TAB_A-SUB_2"]').on('shown.bs.tab', function(e) {
    active_chart.destroy();
    active_chart = new Chart(ctx_TAB_A_SUB_2).Line(data_TAB_A_SUB_2, chart_settings);
    last_active_sub_data_TAB_A = data_TAB_A_SUB_2
    last_active_sub_canvas_TAB_A = ctx_TAB_A_SUB_2
});


 //------------------------------------
//   S E C O N D   T A B   S E T U P

// canvas context variables
var ctx_TAB_B_SUB_1 = $("#st-figure-TAB_B-SUB_1").get(0).getContext("2d");
var ctx_TAB_B_SUB_2 = $("#st-figure-TAB_B-SUB_2").get(0).getContext("2d");

// temporary variables
var last_active_sub_data_TAB_B = data_TAB_B_SUB_1;
var last_active_sub_canvas_TAB_B = ctx_TAB_B_SUB_1;

// main tab callback
$('a[href$="#TAB_B"]').on('shown.bs.tab', function(e) {
    active_chart.destroy();
    active_chart = new Chart(last_active_sub_canvas_TAB_B).Line(last_active_sub_data_TAB_B, chart_settings);
});

// sub tab callbacks
$('a[href$="#sub-tab-TAB_B-SUB_1"]').on('shown.bs.tab', function(e) {
    active_chart.destroy();
    active_chart = new Chart(ctx_TAB_B_SUB_1).Line(data_TAB_B_SUB_1, chart_settings);
    last_active_sub_data_TAB_B = data_TAB_B_SUB_1
    last_active_sub_canvas_TAB_B = ctx_TAB_B_SUB_1
});

$('a[href$="#sub-tab-TAB_B-SUB_2"]').on('shown.bs.tab', function(e) {
    active_chart.destroy();
    active_chart = new Chart(ctx_TAB_B_SUB_2).Line(data_TAB_B_SUB_2, chart_settings);
    last_active_sub_data_TAB_B = data_TAB_B_SUB_2
    last_active_sub_canvas_TAB_B = ctx_TAB_B_SUB_2
});
