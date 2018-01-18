<%@ page language="java" contentType="text/html; charset=utf-8" %>
<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="manager/js/echarts.js"></script>
<script>
    var option = {
        xAxis: {
            type: 'category',
            data: []
        },
        yAxis: {
            type: 'value'
        },
        legend: {
            data: ['cons', 'chuck', 'all_star', 'taylor']
        },
        series: [{
            data: [],
            name: "cons",
            type: "bar",
        }, {
            name: "chuck",
            type: "bar",
            data: []
        }, {
            name: "all_star",
            type: "bar",
            data: []
        }, {
            name: "taylor",
            type: "bar",
            data: []
        }]
    };
    $(document).ready(function () {
        var first_echart = echarts.init(document.getElementById('first_echart'));
        $.ajax({
            url: 'echart/getAllData.do',
            success: function (result) {
                var sale_date = [];
                var cons = [];
                var chuck = [];
                var all_star = [];
                var taylor = [];
                for (var i = 0; i < result.data.length; i++) {
                    sale_date.push(result.data[i].sale_date);
                    cons.push(result.data[i].cons);
                    chuck.push(result.data[i].chuck);
                    all_star.push(result.data[i].all_star);
                    taylor.push(result.data[i].taylor);
                }
                option.series[0].data = cons;
                option.series[1].data = chuck;
                option.series[2].data = all_star;
                option.series[3].data = taylor;
                option.xAxis.data = sale_date;
                //bar表
                first_echart.setOption(option);
                //line表
                lineEchart()
                //pie表
                pieEchart(sale_date)
                //stackLine表
                stackEchart();

            }
        })
    })

    function stackEchart() {
        var forth_echart = echarts.init(document.getElementById('forth_echart'));
        var stack_option = JSON.parse(JSON.stringify(option))
        for (var i = 0; i < 4; i++) {
            stack_option.series[i].type = 'line'
            stack_option.series[i].stack = "总量";
            stack_option.series[i].areaStyle = {};
        }
        stack_option.tooltip = {
            trigger: 'axis',
            axisPointer: {
                type: 'cross',
                label: {
                    backgroundColor: '#6a7985'
                }
            }
        }
        stack_option.xAxis.boundaryGap = false;
        forth_echart.setOption(stack_option);
    }

    function pieEchart(sale_date) {
        var third_echart = echarts.init(document.getElementById('third_echart'));
        var pie_option = JSON.parse(JSON.stringify(option))
        for (var i = 0; i < 4; i++) {
            pie_option.series[i].stack = 'count';
            pie_option.series[i].coordinateSystem = 'polar';
        }
        pie_option.polar = {};
        delete pie_option['xAxis']
        delete pie_option['yAxis']
        pie_option.angleAxis = {}
        pie_option.radiusAxis = {
            type: 'category',
            data: sale_date,
            z: 10
        }
        third_echart.setOption(pie_option);
    }

    function lineEchart() {
        var second_echart = echarts.init(document.getElementById('second_echart'));
        var line_option = JSON.parse(JSON.stringify(option))
        for (var i = 0; i < 4; i++) {
            line_option.series[i].type = 'line'
        }
        line_option.tooltip = {
            trigger: 'axis',
            axisPointer: {
                type: 'cross',
                label: {
                    backgroundColor: '#6a7985'
                }
            }
        }
        second_echart.setOption(line_option);
    }
</script>
<table style="width: 100%">
    <tr align="center">
        <td colspan="2" align="center">
            <h1>服装近期销售图表</h1>
        </td>
    </tr>
    <tr align="center">
        <td style="border: 1px">
            <div id="first_echart" style="width: 525px; height: 350px;"></div>
        </td>
        <td style="border: 1px">
            <div id="second_echart" style="width: 525px; height: 350px;"></div>
        </td>
    </tr>
    <tr align="center">
        <td style="border: 1px">
            <div id="third_echart" style="width: 525px; height: 350px;"></div>
        </td>
        <td style="border: 1px">
            <div id="forth_echart" style="width: 525px; height: 350px;"></div>
        </td>
    </tr>
</table>