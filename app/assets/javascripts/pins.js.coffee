# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# Preferred in Rails so that it will all be loaded ONLY post page load - almost lazy load
jQuery -> 
	$('#pins').imagesLoaded -> # Part of jQuery Masonry
		$('#pins').masonry itemSelector: ".box"