1. What are some of the key design philosophies of the Linux operating system?

There are nine major tenets to the Linux philosophy.
Small is Beautiful
Each Program Does One Thing Well
Prototype as Soon as Possible
Choose Portability Over Efficiency
Store Data in Flat Text Files
Use Software Leverage
Use Shell Scripts to Increase Leverage and Portability
Avoid Captive User Interfaces
Make Every Program a Filter

Source: https://opensource.com/business/15/2/how-linux-philosophy-affects-you

"And therein lies the truth about Linux. It never assumes that the user is incompetent. It always assumes you know what you are doing and allows you do do anything you tell it to. Anything. Whether it is unintentionally bad or not. That is a huge amount of power in the hands of a user.

Linux treats everyone equally and allows everyone the maximum amount of power. That is egalitarian. Other operating systems are elitist and exclusive because they withhold or hide their power behind an inflexible Graphical User Interface that allows one to do only what the developers think we should be allowed to do." (https://opensource.com/business/14/12/linux-philosophy)

2. In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

In short a VPS, is a private, personal server that acts like a computer, because it has it's own OS, disk space, and bandwidth. Software can be installed and hosted on the server.

Benefits:

Cost effective as compared to an actual physical server.
More stability and reliability for basic web hosting needs.
Pay for the features/software you want.
More control compared to shared hosting.
Green technology, environmentally friendly, and more efficient use of resources.
Easy scalability when needed.


3. Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?

You are much more prone to mistakes or software bugs. That program which deleted files as a bug? If it ran as a limited user, at most it can damage stuff in your home directory and on a few other devices (e.g. USB disks).

If ran as root, it might have freedom to delete everything in the system. Besides, you might be the victim of a buggy script which accidentally deletes critical files.

Similarly, a vulnerability or malicious software can cause much more harm, because you gave it full permissions. It can change programs in /bin and add backdoors, mess with files in /etc and make the system unbootable etc...

You can be victim of your own stupidity. That rm -rf * you ran by mistake, or if you swapped input/output device in dd, would be stopped by your lack of permissions, but if you run as root, you are all powerful.

You don't need it for most uses, except for administrative work.

Source: http://unix.stackexchange.com/questions/52268/why-is-it-a-bad-idea-to-run-as-root
