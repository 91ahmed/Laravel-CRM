$(document).ready(function () {
    $("#datatable").DataTable({
        language: { paginate: { previous: "<i class='mdi mdi-chevron-left'>", next: "<i class='mdi mdi-chevron-right'>" } },
        drawCallback: function () {
            $(".dataTables_paginate > .pagination").addClass("pagination-rounded");
        },
        pageLength: 4,
        searching: !1,
        lengthChange: !1,
    });
    var e = {
        chart: { height: 380, type: "line", padding: { right: 0, left: 0 }, stacked: !1, toolbar: { show: !1 } },
        stroke: { width: [0, 2, 4], curve: "smooth" },
        plotOptions: { bar: { columnWidth: "50%" } },
        colors: ["#23b397", "#f8cc6b", "#f0643b"],
        series: [
            { name: "Desktops", type: "column", data: [23, 11, 22, 27, 13, 22, 37, 21, 44, 22, 30] },
            { name: "Tablets", type: "area", data: [44, 55, 41, 67, 22, 43, 21, 41, 56, 27, 43] },
            { name: "Mobiles", type: "line", data: [30, 25, 36, 30, 45, 35, 64, 52, 59, 36, 39] },
        ],
        fill: { opacity: [0.85, 0.25, 1], gradient: { inverseColors: !1, shade: "light", type: "vertical", opacityFrom: 0.85, opacityTo: 0.55, stops: [0, 100, 100, 100] } },
        labels: ["Contacted", "02/01/2018", "03/01/2018", "04/01/2018", "05/01/2018", "06/01/2018", "07/01/2018", "08/01/2018", "09/01/2018", "10/01/2018", "11/01/2018"],
        markers: { size: 0 },
        legend: { offsetY: -10 },
        xaxis: { type: "datetime" },
        yaxis: { labels: { show: !0 }, title: { text: "Sales Analytics", offsetX: -10, offsetY: 0 } },
        tooltip: {
            shared: !0,
            intersect: !1,
            y: {
                formatter: function (e) {
                    return void 0 !== e ? e.toFixed(0) + " Sales" : e;
                },
            },
        },
        grid: { borderColor: "#f1f3fa" },
    };
    function a(e, a, t) {
        for (var o = 0, i = []; o < a; ) {
            var r = Math.floor(750 * Math.random()) + 1,
                n = Math.floor(Math.random() * (t.max - t.min + 1)) + t.min,
                s = Math.floor(61 * Math.random()) + 15;
            i.push([r, n, s]), 864e5, o++;
        }
        return i;
    }
    new ApexCharts(document.querySelector("#apex-sales-analytics"), e).render();
    e = {
        chart: { height: 380, type: "bubble", toolbar: { show: !1 } },
        dataLabels: { enabled: !1 },
        series: [
            { name: "Direct", data: a(new Date("11 Feb 2017 GMT").getTime(), 20, { min: 10, max: 60 }) },
            { name: "Affilliate", data: a(new Date("11 Feb 2017 GMT").getTime(), 20, { min: 10, max: 60 }) },
            { name: "Sponsored", data: a(new Date("11 Feb 2017 GMT").getTime(), 20, { min: 10, max: 60 }) },
        ],
        fill: { opacity: 0.8, gradient: { enabled: !1 } },
        colors: ["#56c2d6", "#f0643b", "#bbc46a"],
        xaxis: { tickAmount: 12, type: "category" },
        yaxis: { max: 70, labels: { show: !0, offsetX: -20, offsetY: 0 } },
        grid: { borderColor: "#f1f3fa", right: 0, left: 0 },
        legend: { offsetY: -10 },
    };
    new ApexCharts(document.querySelector("#apex-order-analytics"), e).render();
});
