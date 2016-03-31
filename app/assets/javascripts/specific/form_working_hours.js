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

$("#not_fixed").load(function() {
  $("#working_hours").hide();
  $(".twice").hide();
});
$(document).ready(function() {
 
  $("#working_hours").hide();
  $(".twice").hide();
/************** Klik na dugme ne radimo nedeljom****************/

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
/************** Fiksno radno vreme ****************/

$("#fixed").on('change', function() {
   $("#working_hours").show();
});

$("#not_fixed").on('change', function() {
   $("#working_hours").hide();
});

/************** Snimi radno vreme ****************/

$("#save_working_hours").click(function() {  
 
  if($("#twice_working_hours").val() == "Dvokratno") {
   var working_hours = "Ponedeljak-petak: " + $("#select_hours_from").val() + " - " + $("#select_hours_to").val() + ";"
                     + "Subota: " + $("#select_hours_from_saturday").val() + " - " + $("#select_hours_to_saturday").val() + ";";
                   
   if($("#no_work").is(":checked"))
    working_hours += "Nedelja: ne radi";
   else
    working_hours += "Nedelja: " + $("#select_hours_from_sunday").val() + " - " + $("#select_hours_to_sunday").val();
  
   $("#result").text(working_hours);
   $("#user_working_hours").val(working_hours);
  }
  else {
   var working_hours = "Ponedeljak-petak: " + $("#select_hours_from").val() + " - " + $("#select_hours_to").val() + " i " 
                     + $("#twice_select_hours_from").val() + " - " + $("#twice_select_hours_to").val() +";"
                     + "Subota: " + $("#select_hours_from_saturday").val() + " - " + $("#select_hours_to_saturday").val() + " i " 
                     + $("#twice_select_hours_from_saturday").val() + " - " + $("#twice_select_hours_to_saturday").val()+ ";";
                   
   if($("#no_work").is(":checked"))
    working_hours += "Nedelja: ne radi";
   else
    working_hours += "Nedelja: " + $("#select_hours_from_sunday").val() + " - " + $("#select_hours_to_sunday").val() + " i " 
                     + $("#twice_select_hours_from_sunday").val() + " - " + $("#twice_select_hours_to_sunday").val();
  
   $("#result").text(working_hours);
   $("#user_working_hours").val(working_hours);
  }
});

/************** Dvokratno radno vreme ****************/

$("#twice_working_hours").click(function() {
 if($(this).val() == "Dvokratno") {
  $(".twice").show();
  $(this).val("Jednokratno");
 }
 else {
  $(".twice").hide();
  $(this).val("Dvokratno");
 }
});


});

