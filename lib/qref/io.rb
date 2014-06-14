class IO
	include Qref::REGEXP
	def hrefs
		rewind
		read.scan( HREF ).flatten
	end
	def links
		rewind
		read.scan( LINK ).map do |a|
			text = a.gsub(/<.*?>/, "")
			href = a[HREF]


			[href, text]
		end
	end
	def canonical
		rewind
		read[CANONICAL]
	end
	def wikibase
		rewind
		if canonical[/wik/]
			rewind
			read[WIKIBASE]
		else
			false
		end
	end
end