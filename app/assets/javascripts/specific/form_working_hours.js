jQuery.fn.extend({
 working_hours: function(default_selected)
 {
  for(var i = 0; i<24; i++)
               {
                $(this).append($("<option></option>")
                                  .attr("value",i<10?"0"+i+":00":i+":00")
                                  .attr("selected",i==default_selected?"selected":null)
                                  .text(i<10?"0"+i+":00":i+":00")); 
         
                $(this).append($("<option></option>")
                                 .attr("value",i<10?"0"+i+":30":i+":30")
                                 .text(i<10?"0"+i+":30":i+":30"));  
               }
               
               $('this option[value='+default_selected+']').attr("selected", "selected");
 }
});


$(document).ready(function() {
 
$("#working_hours").hide();
  
$("#no_work").on('change', function() {
 
 if($(this).is(":checked"))
 {
  $("#select_hours_from_sunday").attr("disabled", true);
  $("#select_hours_to_sunday").attr("disabled", true);
  
 }
 else {
  $("#select_hours_from_sunday").removeAttr("disabled");
  $("#select_hours_to_sunday").removeAttr("disabled");
 
  
 }
 
});

$("#fixed").on('change', function() {
   $("#working_hours").show();
});

$("#not_fixed").on('change', function() {
   $("#working_hours").hide();
});

$("#user_password").focus(function() {  //kad se klikne na dugme Snimi koje jos ne postoji
 
  
 var working_hours = "Ponedeljak-petak: " + $("#select_hours_from").val() + " - " + $("#select_hours_to").val() + ";"
                   + "Subota: " + $("#select_hours_from_saturday").val() + " - " + $("#select_hours_to_saturday").val() + ";";
                   
 if($("#no_work").is(":checked"))
  working_hours += "Nedelja: ne radi";
 else
  working_hours += "Nedelja: " + $("#select_hours_from_sunday").val() + " - " + $("#select_hours_to_sunday").val();
  
  $("#user_working_hours").val(working_hours);
    
               
});



});

