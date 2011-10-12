$.fn.isLogged = function() { 
    $.ajax({
        url: "index.php/log/is",
        context: document.body,
        success: function(result){
            if(result != "true")
            {
                $("body").append("<div id=\"islogged-dialog\" title=\"Ingrese de Nuevo\">No joda, inicie de nuevo</div>");
                $("#islogged-dialog").load("index.php/log/lite");
                $( "#islogged-dialog" ).dialog({
                    height: 200,
                    modal: true,
                    closeOnEscape: false,
                    open: function(event, ui) {
                        $(".ui-dialog-titlebar-close").hide();
                    },
                    close: function(event, ui) 
                    {
                        $(".ui-dialog-titlebar-close").show();
                        $( "#islogged-dialog" ).remove();
                    }
                })
            }
        }
    });
    return true;
}