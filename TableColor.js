// Select all <td> elements that have a value greater than 0.5
var cells = $("td").filter(function() {
  var value = parseFloat($(this).text());
  return value > 0.5;
});

// Add a CSS class to the selected cells
cells.addClass("highlight");


  window.onload = function() {
            // Your JavaScript code here
            var tableData = document.querySelectorAll("td");
            for (var i = 0; i < tableData.length; i++) {
               var value = parseFloat(tableData[i].innerText);
               if (value > 5) {
                  tableData[i].style.backgroundColor = "#42A5F5";
               } else if (value > 3) {
                  tableData[i].style.backgroundColor = "#64B5F6";
               } else if (value > 1) {
                  tableData[i].style.backgroundColor = "#90CAF9";
               }else if (value > 0.5) {
                  tableData[i].style.backgroundColor = "#BBDEFB";
               }else if (value > 0.2) {
                  tableData[i].style.backgroundColor = "#E3F2FD";
               }
            }
         };