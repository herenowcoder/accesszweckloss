require 'sinatra'

get '/az2' do
  redirect to('/'), 303
end

get '/' do
	"""
<html>
  <head>
    <link rel='stylesheet' href='/zx.css' type='text/css' />
    <style>
      body {
        color: #eee;
        font-family: zx, Monospace;
    </style>
  </head>
	<body bgcolor='#000'>
		<p style='text-align:center; margin-top: 50px'>
		  access zweckloss #2
		</p>
		<p style='margin: 30px 200px; color: #eee'>
		  Here is the message for the brave. Ones who do not fear meeting
		  mind dragons of their own, are warmly invited today, on the seventh
		  day of the shortest of all months, to honor the usual hacker
		  shrine on the fields of Sadyba, dispossessing their anxiety and
		  guiding their hearts to the inner coder sanctvm.
      <br/><br/>
		  At the five hours before midnight the gathering is to be formed,
		  and then continued to rise its spirits into the holy codelands,
		  without any ramtop.
      <br/><br/>
      Dauntless knights of the various orders, those of functional, those of
      procedural and those who dare inscript ancient objects, and 
      those who most profoundly assemble long forgotten mnemonics,
      you should dare to announce your noble intentions of approaching 
      the shrine using the usual and secret heraldic ways. 
      <br/><br/>
      Any holy and spiritual liquors and potions are to be taken as a sigil of
      the tribute to all the gathering, although ones who would lost their
      trophies during recent battles shall not be isolated and will be
      given a merciful share of what yielded from local herbs around
      the sacred area.
      <br/><br/>
      For any heroes wandering the ways of holy scriptures, this
      proclamation was crafted using most powerful yet antique artifact,
      emerged from the powers of the old ways: the vi one.
      <br/><br/>
		  Now is all said what should be said. RSVP if you dare.
		</p>
	</body>
</html>
	"""
end


