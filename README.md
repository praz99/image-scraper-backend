# Image Scraper

> Image Scraper is a web app that takes an URL of an website as an input, validates the URL and returns an array of URLs of the images used in that website.   
> It returns the appropriate error messages if the input URL is invalid, is empty or the website doesnot contain any images.   
> This is the backend API part of the app.
<div align="center">

[![View Code](https://img.shields.io/badge/View%20-Code-green)](https://github.com/praz99/image-scraper-backend)
[![Github Issues](https://img.shields.io/badge/GitHub-Issues-orange)](https://github.com/praz99/image-scraper-backend/issues)
[![GitHub Pull Requests](https://img.shields.io/badge/GitHub-Pull%20Requests-blue)](https://github.com/praz99/image-scraper-backend/pulls)

</div>

## 📝 Contents

<p align="center">
<a href="#features">Main Features</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#frontend">Frontend</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#with">Built with</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#qs">Quick Start</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#testing">Testing</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#author">Author</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
</p>

## Main Features<a name = "features"></a>

- The app allows the users to enter an URL to the website.
- It validates the URL.
- Returns appropriate messages for invalid or empty URLs.
- Returns an array of URLs of the images used in the given website.

## API endpoint

- This project has not been deployed yet. Hence the API can be accessed only using the http://localhost:3001/scrape

## Frontend<a name= "frontend"></a>

The frontend part for this project can be found in [github](https://github.com/praz99/image-scraper-frontend).

## 🔧 Built with<a name = "with"></a>
- Ruby on Rails 6.0.3
- Ruby 2.7.1

## Quick Start<a name= "qs"></a>

### Prerequisite
* Install Ruby ([installation guide](https://www.ruby-lang.org/en/documentation/installation/))
* Install Ruby on Rails ([installation guide](https://guides.rubyonrails.org/getting_started.html#creating-a-new-rails-project-installing-rails))
* Git and Github

#### Get a local copy with:<br>
Enter the following command in your terminal.
```js
git clone git@github.com:praz99/image-scraper-backend.git
```
```js
cd image-scraper-backend
```

### Installation

After cloning the app, enter following commands in your terminal.
```js
bundle install
```
```js
yarn install --check-files
```
```js
rails server
```
Open https://localhost:3001/ in your browser

Since this is the API part of the project, tools like `Postman` and `curl` can be handy to test the API.

### Testing <a name= "testing"></a>

This project has been tested using `RSpec` testing library. To test the project

- Navigate to the directory where the project is located.
- Open terminal in this directory.
- Start testing by using `bundle exec rspec` command.


## ✒️  Authors <a name = "author"></a>

👤 **Prajwal Thapa**

- Github: [praz99](https://github.com/praz99)
- Twitter: [@thapa_praz](https://twitter.com/thapa_praz)
- LinkedIn: [prazwal-thapa](https://linkedin.com/in/prazwal-thapa)
- Email: t.prazwal@gmail.com

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/praz99/image-scraper-backend/issues).


## 👍 Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](./LICENSE) licensed.