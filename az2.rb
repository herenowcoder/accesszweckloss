require 'sinatra'

def rand_color()
  "rgb(#{(1..3).map{|x|rand(200)+100}.join(',')})"
end

def magic_word(text)
  text.split('').map do |char|
    "<span style='color:#{rand_color}'>#{char}</span>"
  end.join
end

def refresh_magic()
  """
      $(document).ready(function(){
        var delay = 3000;
        var loop = function(){
          $('#magic').load('/-/magic');
          setTimeout(loop, delay);
        };
        setTimeout(loop, delay);
      });
  """
end

get '/-/magic' do
  magic_word 'access zweckloss #2'
end

get %r[^/az2/?$] do
  redirect to('/'), 303
end

get '/' do
  """
<html>
  <head>
    <title>az#2 cpy party</title>
    <link rel='stylesheet' href='/zx.css' type='text/css' />
    <script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jquery/1.4.1/jquery.min.js'></script>
    <style>
      body {
        color: #eee;
        font-family: zx, Monospace;
    </style>
  </head>
  <body bgcolor='#000'>
    <p id='magic' style='text-align:center; margin-top: 50px'>
      #{magic_word 'access zweckloss #2'}
    </p>
    <p style='margin: 30px 200px'>
      Here is the message for the brave. Ones who do not fear meeting
      mind dragons of their own, are warmly invited today, on the seventh
      day of the shortest of all months, to honor the usual hacker
      shrine on the fields of Sadyba, dispossessing their anxiety and
      guiding their hearts to the inner coder sanctvm.
      <br/><br/>
      Three hours before midnight the gathering is to be formed,
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
    <script>#{refresh_magic}</script>
  </body>
</html>
  """
end


