# Portfolio website using Flutter Web w/ Docker & Ansible Setup

Added a Dockerfile for build via debian:bookworm and containerization in an nginx:bookworm image. Use Ansible for installation/configuration of your Ubuntu 22.04 server along with Docker Engine, auto SSL/TLS certificate renewal. Check/modify ```configs\hosts``` file for your server IP along w/ domain, and Lets Encrypt contact email. Ensure you specifiy your image in the docker-compose.yml file if you clone this repo and to login to your server via ssh using the private key at least once.
The Dockerized version of this website is hosted at <a href="https://aijnt.com">aijnt.com</a>

A responsive layout; open-source, dynamic (changes depending on window size to work w/ mobile, tablet and desktop users) and clean codebase website built with Flutter web.

![Site Banner](https://raw.github.com/jatin-p/flutter-web-portfolio/master/screenshot/site.png)

## 🚀 Motivation


Wanted to learn about cloud using a template and host the website myself on AWS using their services and tools (i.e. S3, CertBot, an EC2 t.2 micro instance) as I had tried Google's firebase to host my <a href="https://github.com/jatin-p/jpNotes">jpNotes app</a> which was quite seemless via command line tools, along with CI/CD through github.

Demo link: <a href="https://jatinp.com">jatinp.com</a>

## 🙏 Credits

The design is essentially a fork of a template from Kamran Bekirovyz [Github Repo](https://github.com/kamranbekirovyz/flutter-web-portfolio) which is itself based on an HTML5 template <a href="https://html5up.net">html5up.net</a> called <a href="https://html5up.net/solid-state">Solid state</a>.

## 🐞 Bugs/Requests

If you encounter any problems please open an issue. If you feel the library is missing a feature, please raise a ticket on GitHub and I will look into it. Pull requests are welcome.

## 📃 License

[MIT License](https://github.com/kamranbekirovyz/flutter-web-portfolio/blob/master/LICENSE)
