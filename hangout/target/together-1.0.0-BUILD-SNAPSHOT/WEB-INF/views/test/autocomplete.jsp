<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
<style>
/* city Search Loading by Justin 2013.04.02 */
.ui-autocomplete-loading
{
        background: white url('http://f.goodkiss.co.kr/sample/images/waiting.gif') right center no-repeat;
}
</style>
<script>
$(function() {
  
    $( "#cityNm" ).autocomplete({
        source: function( request, response ) {
            $.ajax({
                url: 'json.txt',
                //data: { mode : "KEYWORDCITYJSON" , keyword : $("#cityNm").val() },
                dataType: "json",
                success: function( data ) {
                    response( $.map( data.nationList, function( item ) {
                        if (item.cityNm.toLowerCase().indexOf($("#cityNm").val().toLowerCase()) >= 0)
                        {
                            return {
                                label: item.cityNm.toLowerCase().replace($( "#cityNm" ).val().toLowerCase(),"<span style='font-weight:bold;color:Blue;'>" + $( "#cityNm" ).val().toLowerCase() + "</span>"),
                                value: item.cityNm,
                                cityCd:item.cityCd,
                                nationCd:item.nationCd
                            }
                        }
                    }));
                }
            });
        },
        minLength: 3,
        select: function( event, ui ) {
                cityValue(ui.item.value);
        },
        open: function() {
            $( this ).autocomplete("widget").width("323px");
            $( this ).removeClass( "ui-corner-all" ).addClass( "ui-corner-top" );
        },
        close: function() {
            $( this ).removeClass( "ui-corner-top" ).addClass( "ui-corner-all" );
        },
        error: function(xhr, ajaxOptions, thrownError){ alert(thrownError);  alert(xhr.responseText); }
    })
    .data('uiAutocomplete')._renderItem = function( ul, item ) {
        return $( "<li style='cursor:hand; cursor:pointer;'></li>" )
            .data( "item.autocomplete", item )
            .append("<a onclick=\"cityValue('" + item.value + "');\">"  + unescape(item.label) + "</a>")
        .appendTo( ul );
    };
});
  
function cityValue(message) {
    $("<div>").text(message).prependTo("#cityResult");
    $("#cityResult").scrollTop(0);
}
  
</script>
<div class="ui-widget">
    <label for="city">Input City:</label>
    <input id="cityNm" />
</div>
<div class="ui-widget" style="margin-top: 2em; font-family: Arial;">Result:
    <div id="cityResult" style="height: 200px; width: 300px; overflow: auto;" class="ui-widget-content"></div>
</div>

