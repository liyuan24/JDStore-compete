// $(document).ready(function(){
//     $('.checkbox_submit').change(function() {
//         $(this).parents('form:first').submit();
//     });

//     $('.select_submit').change(function() {
//         $(this).parents('form:first').submit();
//     });

// }); 

// $(document).ready(function(){
//     $(".checkbox_submit").change(function(){
//         var src = $(this);
//         if (src.checked){
//         	$.ajax({
// 	          type: "post",
// 	          url: "/save_data", 
// 	          data: { buy_now: true },
// 	          success: function(){
// 	          	src.parents("form").submit();
// 	          }
// 	        });
//         }
	        
// 	    else{
// 	    	$.ajax({
// 	          type: "post",
// 	          url: "/save_data", 
// 	          data: { buy_now: false },
// 	          success: function(){
// 	            src.parents('form:first').trigger('submit.rails');
// 	          }
// 	        });
// 	    }
	    	
//     });
// });

$(document).ready(function(){
	$(".checkbox_submit").change(function(){
		$(this).parents("form:first").submit();
	});
});