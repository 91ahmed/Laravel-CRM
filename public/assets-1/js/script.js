$(document).ready(function(){

	// Trigger input file
	$('.file').css({'display':'none'});
	$(".file-trigger").click(function() {
	    $(".file").click();
	});

	/** Get input file name **/
    $('input[type="file"]').on('change', function(e){
        var fileName = e.target.files[0].name;
        var fileSize = e.target.files[0].size;
        
        $('.filename').html(fileName);
        $('.filesize').html(humanFileSize(fileSize, true));
    });

    /** Preview image from file input **/
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function(e) {
                $('.filepreview').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]); // convert to base64 string
        }
    }
    $(".file").on('change', function() {
        readURL(this);
    });

    // Search Form
    $('.ajax-search').on('submit', function(e){
        e.preventDefault();

        var formAction = $(this).attr('action');
        var formMethod = $(this).attr('method');
        var formData   = $(this).serialize();

        $.ajax({
            url: formAction,
            method: formMethod,
            datatType : 'json',
            data: formData,
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            cache: false,
            processData: false,
            beforeSend: function() {
                $('.ajax-content').html('<div class="loader loader-sm"></div>');
            },
            success: function(data)
            {
                $('.ajax-content').html(data);
            }
        });

        return false;
    });

    $('.ajax-search').on('focusout', function(){
        var action = $(this).attr('action');
        var search = document.getElementById('search');
        var id     = document.getElementById('id');

        if (search.value == '') {
            $.get(action, {'id': id.value}, function(data) {
                $('.ajax-content').html(data);
            });
        }
    });

});

/**
 * Format bytes as human-readable text.
 * 
 * @param bytes Number of bytes.
 * @param si True to use metric (SI) units, aka powers of 1000. False to use 
 *           binary (IEC), aka powers of 1024.
 * @param dp Number of decimal places to display.
 * 
 * @return Formatted string.
 */
function humanFileSize(bytes, si=false, dp=1) {
	const thresh = si ? 1000 : 1024;

	if (Math.abs(bytes) < thresh) {
	return bytes + ' B';
	}

	const units = si 
	? ['kB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'] 
	: ['KiB', 'MiB', 'GiB', 'TiB', 'PiB', 'EiB', 'ZiB', 'YiB'];
	let u = -1;
	const r = 10**dp;

	do {
	bytes /= thresh;
	++u;
	} while (Math.round(Math.abs(bytes) * r) / r >= thresh && u < units.length - 1);


	return bytes.toFixed(dp) + ' ' + units[u];
}


/*
 *******************
 * Checkbox Select *
 *******************
 */
var select_all = document.getElementById("check_all");
var checkboxes = document.getElementsByClassName("check");
select_all.addEventListener("change", function(e){
    for (i = 0; i < checkboxes.length; i++) { 
        checkboxes[i].checked = select_all.checked;
    }
});
for (var i = 0; i < checkboxes.length; i++) {
    checkboxes[i].addEventListener('change', function(e){ //".checkbox" change 
        //uncheck "select all", if one of the listed checkbox item is unchecked
        if(this.checked == false){
            select_all.checked = false;
        }
        //check "select all" if all checkbox items are checked
        if(document.querySelectorAll('.checkbox:checked').length == checkboxes.length){
            select_all.checked = true;
        }
    });
}

$(function(){
    /** Change the color of table rows after check **/
    $('.check').on('change', function(){
        if ($(this).is(':checked')) {
            $(this).parents('tr').addClass('selected');
        } else {
            $(this).parents('tr').removeClass('selected');
        }
    });
    $('#check_all').on('change', function(){
        if ($(this).is(':checked')) {
            $('tr').addClass('selected');
        } else {
            $('tr').removeClass('selected');
        }
    });
});


$(function(){

	// Toggle filter form
	$('.filter-form-btn').on('click', function(){
		$('.filter-form').slideToggle('fast');
	});

});