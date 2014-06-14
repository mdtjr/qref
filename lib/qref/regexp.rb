module Qref
	module REGEXP
		#QUOTED = %r{"(.*?)"}

		HREF = %r{(?<=href=["']).*?(?=["'][\s>])}

		LINK = %r{<a.*?</a>}

		WIKIBASE = %r{wikidata.org/wiki/\K[A-Z0-9]+}

		CANONICAL = %r{<link rel="canonical" href="\K(.*?)(?=")}


	end
end