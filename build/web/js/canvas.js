
/**
 * Selector for chart element.
 */
 var chartSelector = '#chart';

/**
 * Selector used to get label elements inside the rendered chart.
 * Your mileage may vary if you configure your chart different than
 * me. Use Firebug or Developer Tools to step through the SVG and
 * determine your label selector.
 */
var labelSelector = '> g:eq(1) g text';

/**
 * This is our data. For simplicity sake, doing inline and not AJAX.
 */
var data = [
  [ 'Apple', 60],
  [ 'Oranges', 90],
];

// Load Google Charts 
google.load('visualization', '1.1', { packages: ['corechart', 'line'] });

// Callback when API is ready
google.setOnLoadCallback(function() {
 
  /*
   * Setup the data table with your data. 
   */
  var table = new google.visualization.DataTable({
    cols : [
      { id : 'name', label : 'Name', type : 'string' },
      { id : 'value', label : 'Value', type : 'number' }
    ]
  });
  
  // Add data to the table
  table.addRows( data );
  
  // Google Charts needs a raw element. I'm using jQuery to get the chart
  // Container, then indexing into it to get the raw element.
  var chartContainer = $(chartSelector)[0];
  
  // Create the Google Pie Chart
  var chart = new google.visualization.PieChart(chartContainer);
  
  // Draw the chart.
  chart.draw(table, { title : '' });
  
  /*
   * This is the meat and potatoes of the operation. We really require
   * two things: #1) A selector that will get us a list of labels in the
   * legend, and #2) The DataTable powering the chart.  We'll cycle
   * through the labels, and use their index to lookup their value.
   * If you have some higher-level math you need to do to display a
   * different value, you can just replace my logic to get the count
   * with your's.
   */
  
  // The <svg/> element rendered by Google Charts
  var svg = $('svg', chartContainer );
  
  /*
   * Step through all the labels in the legend.
   */
//   $(labelSelector, svg).each(function (i, v) {
  
//     /*
//      * I'm retrieving the value of the second column in my data table,
//      * which contains the number that I want to display. If your logic
//      * is more complicated, change this line to calculate a new total.
//      */
//     var total = table.getValue(i, 1);
    
//     // The new label text.
//     var newLabel = $(this).text() + '(' + total + ')';
	
//     // Update the label text.
//     $(this).text( newLabel );
//   });
  
});
