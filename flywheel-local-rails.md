Hey Joey,

I’ve been looking into this a while and I’ve run into some blockers so it’s only half of a solution for now.

Here’s what you can do:

You need the IP that every container will see your computer as (what’s traditional 127.0.0.1). See IP of HOST available within site container? for instructions on how to get that. It’s as simple as running one command in Terminal.
Open Local and right-click on the site you want to connect to your Rails app
Click “Open Site SSH”
Enter nano /etc/hosts
Add a new hosts entry for the Rails app. It should look something like:
10.0.2.2 my-local-rails-app.localhost
Once you do that, you should be good.

The one major caveat is the fact that this will not persist the next time the site is restarted in Local. We’d like to add the ability to run scripts on certain site events like stop, start, restart, etc.
