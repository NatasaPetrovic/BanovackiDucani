 $("#number").blur(function(){
            var street = $("#street").val();
            var number = $(this).val(); 
            var address = street + " " + number;
            $("#user_address").val(address);
          });
