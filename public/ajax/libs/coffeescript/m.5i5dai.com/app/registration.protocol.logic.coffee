###
				   ___    ___                                                 __
				  /'___\ /'___\                                    __        /\ \__
	  ___    ___ /\ \__//\ \__/   __     __    ____    ___   _ __ /\_\  _____\ \ ,_\
	 /'___\ / __`\ \ ,__\ \ ,__\/'__`\ /'__`\ /',__\  /'___\/\`'__\/\ \/\ '__`\ \ \/
	/\ \__//\ \L\ \ \ \_/\ \ \_/\  __//\  __//\__, `\/\ \__/\ \ \/ \ \ \ \ \L\ \ \ \_
	\ \____\ \____/\ \_\  \ \_\\ \____\ \____\/\____/\ \____\\ \_\  \ \_\ \ ,__/\ \__\
	 \/____/\/___/  \/_/   \/_/ \/____/\/____/\/___/  \/____/ \/_/   \/_/\ \ \/  \/__/
																	  \ \_\
																	   \/_/
	
 	Statement: ...//TODO: Write statement.
 	
 	Describe:     ...//TODO: Check description.
 	
 	Further Changes, Comments: ...//TODO: Give a further changes and comments link.
 	
 	Javascript Design Pattern (Code Management):    ...//TODO: Cehck design pattern.
 	    
 	    Namespacing Patterns, Immediately-invoked Function Expressions (IIFE)s
 	    
 	    Modules Patterns, Revealing Module Pattern
 	    
 	    Modules Patterns, AMD modules
 	    
 	Docs: ...//TODO: Give a link about project documents.
 	
 	Original Author: 沈维忠 ( Shen Weizhong / Tony Stark ).
 	
 	Thanks: ...//TODO: If there are some contributors, just mark them.
 	
 	Version: 0.1.0-alpha
 	
 	Creation Date: 2014.06.19 17:54 ( Tony ).
 	
 	Last Update: 2014.06.22 18:32 ( Tony ).    ...//TODO: Update the 'Last Update'.
 	
 	Music ( Custom ): Countdown (feat. Makj).mp3    ...//TODO: If you are listenning some music, just write the name of songs.
 	
 	License: ...//TODO: Give a license.
 	
 	Copyright: ...//TODO: Give a copyright.
 ###

define (require) ->

	SJ        = require 'jquery'
	
	jqMigrate = require 'jqMigrate'
	
	modernizr = require 'modernizr'
	
	scroller  = require 'component/srl.min'

	_fns = ($) ->

		fnObj =

			config: {}

			init: (settings) ->

				@mixture()

				return

			helpers:

				pdControl: (e) ->

					e.stopPropagation()

					e.preventDefault()

					return

				clickOrTouch: ->

					if modernizr.touch

						evtName = 'touchstart'

					else

						evtName = 'click'

					return evtName

			mixture: ->

				helpers = @helpers

				$('a[href=#]').on helpers.clickOrTouch(), (e) ->

					helpers.pdControl e

					return

				# HTML Scroll
				scroller.excute $ ':root'

				return

		fnObj.init()

		return

	SJ _fns

	return