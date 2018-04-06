# 2018 !

This is my current boilerplate code for my simple web apps it's not better
than any other but it's mine.

Simple web app means no BDD, no GUI, no DB, no REST, no WebPack.

Just a plain old [Roda](http://roda.jeremyevans.net/) skeleton.

## Usage

	git clone https://github.com/ameuret/2018.git greatStuff
	cd greatStuff
	rm -rf .git
    bundle
	bundle exec rackup
	
Then read the messages, and start fixing things.

Optionnally, where `App` is used as your main class name, change it to something more
meaningful (e.g. GreatStuff™) and change the app dir name and the app.rb file name
accordingly.

## Shoulders of giants

 I used to have [Thor Generators](https://github.com/erikhuda/thor/wiki/Generators) to
 handle my skeletons but now I find them overkill.
 
 I also drew inspiration from these point of views:
 
  * [badosu/Yogurt](https://github.com/badosu/Yogurt)
  * [jeremyevans/roda-sequel-stack](https://github.com/jeremyevans/roda-sequel-stack)
  
