tests
testRegistry
	| registry |
	morph := self classToTest new.
	window := morph openInWindow.
	registry := DSWebhookRegistry developmentChannel.
	morph registry: registry.
	self assert: morph submorphs first form equals: registry icon.
	