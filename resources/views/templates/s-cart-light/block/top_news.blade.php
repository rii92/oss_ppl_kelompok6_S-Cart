<style>
  @import url('https://fonts.googleapis.com/icon?family=Material+Icons');

  .carousel-container {
    width: 1280px;
    margin: 50px auto;
    min-height: 200px;
    position: relative;
  }

  @media screen and (max-width: 768px) {
    .carousel-container {
      width: 80%;
    }
  }

  @media screen and (max-width: 1024px) {
    .carousel-container {
      width: 85%;
    }
  }

  .carousel-container .carousel-inner {
    overflow: hidden;
  }

  .carousel-container .track {
    display: inline-flex;
    transition: transform 0.5s;
  }

  .carousel-container .card-container {
    width: 259px;
    flex-shrink: 0;
    height: 250px;
    padding-right: 15px;
    box-sizing: border-box;
  }

  .carousel-container .card-container .card {
    width: 100%;
    height: 100%;
    border: 1px solid #ccc;
    box-sizing: border-box;
    border-radius: 10px;
    display: flex;
    flex-direction: column;
  }

  .nav button {
    width: 60px;
    height: 60px;
    border-radius: 50%;
    border: 1px solid #aaa;
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    cursor: pointer;
  }

  .nav .prev {
    left: -30px;
    display: none;
  }

  .nav .prev.show {
    display: block;
  }

  .nav .next {
    right: -30px;
  }

  .nav .next.hide {
    display: none;
  }

  .card>* {
    flex: 1;
  }

  .card .img {
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 30px;
  }

  .card .info {
    flex-basis: 40px;
    background: #333;
    color: #fff;
    flex-grow: 0;
    padding: 10px;
    box-sizing: border-box;
  }
</style>
@php
$news = $modelNews->start()->setlimit(sc_config('item_top'))->getData();
@endphp

@if ($news)
<!-- START SECTION NEWS -->
<section class="section section-xxl section-last bg-gray-21">
  <div class="container">
    <h2 class="wow fadeScale">{{ sc_language_render('front.blog') }}</h2>
  </div>

  <!-- Owl Carousel-->
  <div class="owl-carousel owl-style-7" data-items="1" data-sm-items="2" data-xl-items="3" data-xxl-items="4"
    data-nav="true" data-dots="true" data-margin="30" data-autoplay="true">
    @foreach ($news as $blog)
    {{-- Render product single --}}
    @include($sc_templatePath.'.common.blog_single', ['blog' => $blog])
    {{-- //Render product single --}}
    @endforeach
  </div>
</section>

<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  {{-- <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="..." alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="..." alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="..." alt="Third slide">
    </div>
  </div> --}}
  {{-- <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a> --}}
</div>

<!-- END SECTION NEWS -->
@endif

<script>
  //ambil link berita
  let berita1 = "https://www.antaranews.com/rss/top-news.xml";

  getData();

  //ambil data xml berita
  async function getData() {

    //baca file xml dari link berita
    let response = await fetch(berita1);
    let xmlString = await response.text();

    //parsing data string
    let parse = new DOMParser();
    let xmlData = parse.parseFromString(xmlString, 'text/xml');
    let kolomArtikel = document.getElementById("carouselExampleControls");

    let index = 0;

    console.log(parse);
    let channels = xmlData.querySelectorAll('channel');
    channels.forEach((channelXMLNode) => {
      console.log(channelXMLNode);

      let artikel = document.createElement('div');
      artikel.classList.add("carousel-inner");
      kolomArtikel.appendChild(artikel);

      let items = xmlData.querySelectorAll('item');
      items.forEach((item) => {
        
        let card_container = document.createElement('div');
        card_container.classList.add("carousel-item");
        card_container.classList.add("position-relative");

        if (index==0) {
          card_container.classList.add("active");
        }

        //title
        // let h2 = document.createElement('h2');
        // h2.innerText = item.querySelector('title').innerHTML;
        // h2.classList.add("position-absolute");
        // h2.classList.add("text-white");
        // h2.classList.add("mt-5");

        //link
        // let a = document.createElement('a');
        // a.innerText = "klik link berita";
        // a.setAttribute('href', item.querySelector('link').innerHTML);
        // card_container.appendChild(a);

        //pubDate
        // let pubdate = item.querySelector('pubDate').innerHTML;
        // let pubdate2 = pubdate.split(" ", 6);
        // let p = document.createElement('p');
        // p.innerText = pubdate2[0] + " " + pubdate2[1] + " " + pubdate2[2] + " " + pubdate2[3];
        // card_container.appendChild(p);

        //image
        let urlImg = item.querySelector('description').innerHTML;
        let urlImg2 = urlImg.split('"', 7);
        let img = document.createElement('img');
        img.setAttribute('src', urlImg2[1]);
        img.setAttribute('alt', urlImg2[1]);
        img.classList.add("d-block");
        img.classList.add("w-100");

        //href
        let href = document.createElement('a');
        href.setAttribute('href', item.querySelector('link').innerHTML);
        href.setAttribute('target', "_blank");
        href.setAttribute('title', item.querySelector('title').innerHTML);
        
        card_container.appendChild(href);
        // href.appendChild(h2);
        href.appendChild(img);

        artikel.appendChild(card_container);

        //description
        // let Textcontent = urlImg2[6].split('>', 2);
        // let content = document.createElement('p');
        // let content2 = Textcontent[1].split(']', 2);
        // content.innerHTML = content2[0];
        // artikel.appendChild(content);
        index++;

      });
    });

    // button left
    let left = document.createElement('a');
    left.classList.add("carousel-control-prev");
    left.setAttribute('href', "#carouselExampleControls");
    left.setAttribute('role', "button");
    left.setAttribute('data-slide', "prev");

    let spanleft1 = document.createElement('span');
    spanleft1.classList.add("carousel-control-prev-icon");
    spanleft1.setAttribute('aria-hidden', "true");
    let spanleft2 = document.createElement('span');
    spanleft2.classList.add("sr-only");
    spanleft2.innerText = "Previous";
    left.appendChild(spanleft1);
    left.appendChild(spanleft2);
    

    // button Right
    let right = document.createElement('a');
    right.classList.add("carousel-control-next");
    right.setAttribute('href', "#carouselExampleControls");
    right.setAttribute('role', "button");
    right.setAttribute('data-slide', "next");

    let spanright1 = document.createElement('span');
    spanright1.classList.add("carousel-control-next-icon");
    spanright1.setAttribute('aria-hidden', "true");
    let spanright2 = document.createElement('span');
    spanright2.classList.add("sr-only");
    spanright2.innerText = "Next";
    right.appendChild(spanright1);
    right.appendChild(spanright2);

    kolomArtikel.appendChild(left);
    kolomArtikel.appendChild(right);
  };
</script>