examples
postSimpleMessage
	<gtExample>
	<label: 'Post simple message'>

	^ DSWebhookClient new 
		url: 'https://discordapp.com/api/webhooks/WEBHOOK-ID/WEBHOOK-TOKEN';
		message: 'Hello! I am a Bot executed from [Pharo](http://pharo.org). You can use Markdown.';
		yourself ";
		send"