tests-accessing
testEncodedUrl
	| data result |
	data := Array 
		with: (DSSharedData newTonel url: 'https://example.com/tonel.zip'; yourself)
		with: (DSSharedData newCodeSnippet url: 'https://example.com/code-snippet.st'; yourself).
	builder := self classToTest new.
	builder data: data.
	result := builder encodedUrl.
	self 
		assert: result 
		equals: 'https://pharo-link.herokuapp.com/v2/?data=H4sIAAAAAAAAACvJz0vN0c4oKSkottLXT61IzC3ISdVLzs/VB8voVWUW8HIl56ekBudlFhSklmBVCpLXLYYo0CsuAQCrPc3fVAAAAA%3D%3D' asZnUrl.