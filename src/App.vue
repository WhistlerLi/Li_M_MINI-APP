<template>
  <body style="overflow-x: hidden;" >
  <div class="md-header">
    <div class="md-logo">
      <a href="javascript:;">
        <img class="md-logo-image" src="./assets/mini-logo.png">
      </a>
    </div>
    <nav class="md-navigation false">
      <ul class="md-nav">
        <li class="md-nav-item-level1">
          <label class="md-nav-item-link">
            Models
          </label>
        </li>
        <li class="md-nav-item-level1">
          <label class="md-nav-item-link">
            Shopping
          </label>
        </li>
      </ul>
    </nav>
  </div>
  <div class="md-custom-selector">
    <div class="md-cs-accordion-campaign newhomepage">
      <div class="md-cs-selector-level2">
        <div class="md-cs-carousel-large">
          <div style="width: 11418px; transform: translateX(-1903px);">
            <div class="md-cs-carousel-item" style="width: 1903px;">
              <div>
                <div class="md-campaign-teaser-B md-campaign-teaser-orientation-left">

                </div>
              </div>
            </div>
            <div class="md-cs-carousel-item" style="width: 1903px;">
              <div>
                <div class="md-campaign-teaser">
                  <div class="md-cs-item-wrap" style="height: 450px;">
                    <div class="md-image">
                      <video id="video" :src="video" preload="none" controls="controls" autoplay
                             height="100%" width="100%">您的浏览器不支持。
                      </video>
                      <button type="button" style="text-align: center;"
                              onclick="launchFullScreen(document.getElementById('video'))">全屏
                      </button>
                    </div>
                  </div>
                  <div class="md-cs-item-bottom-frame">
                    <span><a href="javascritp:;" v-on:click="videos(1)"><img src="/static/video2.png"/></a></span>
                    <span><a href="javascritp:;" v-on:click="videos(2)"><img src="/static/video3.png"/></a></span>
                    <span><a href="javascritp:;" v-on:click="videos(3)"><img src="/static/video4.png"/></a></span>
                  </div>
                </div>
                <div class="md-campaign-teaser-info md-campaign-teaser-B">
                    <span class="md-heading md-fixedtext">
                        SELECT YOUR MODEL
                    </span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div>
        <div class="md-form-gcdm-ss">
          <div class="md-ss-default md-ss-strip">
            <div class="md-ss-model-range" id="cars">
              <ul class="md-ss-range-list">
                <li class="md-ss-range-item" v-for="car in list">
                  <a href="javascript:;" class="md-ss-range-link false" v-on:click="info(car.id)">
                    <div class="md-image md-image-lazyloaded">
                      <div class="asset-ratio-box" style="padding-bottom: 75.00%;">
                        <img :src=car.pic class="img-fluid"/>
                      </div>
                    </div>
                    <div class="md-ss-range-info">
                      <h5 class="md-ss-range-description">{{car.name}}</h5>
                      <span class="md-ss-range-price">All-Inclusive Price: {{car.price}}</span>
                    </div>
                  </a>
                </li>
                <li class="md-ss-range-item" v-for="v in carInfo">
                  <div class="md-ss-range-image-wrapper">
                    <div class="description">{{v.name}}</div>
                    <div class="description">All-Inclusive Price: ${{v.price}}</div>
                    <div class="description">{{v.description}}</div>
                  </div>
                </li>
              </ul>

            </div>

          </div>
        </div>
      </div>
    </div>
  </div>
  <div id="imageCosySettings" data-china-cosy-enabled="true"></div>
  <footer class="md-footer">
    <section>
      <div class="md-nav-ctas" style="top: 983.9px;">
        <div class="md-component md-footer-ctas" data-tracking-page-index="0">
          <ul class="md-ctas" data-is-root-page="false" data-hide-global="false">
            <li class="md-cta-item">
              <div class="md-component md-cta md-cta-global" data-component-name="cta">
                <a href="javascript:;" target="_self"
                   class="md-nav-item-link" data-form-type="tda" data-configuration-id="none">footer
                </a>
              </div>
            </li>
            <li class="md-cta-item">
              <div class="md-component md-cta md-cta-global" data-component-name="cta">
                <a href="javascript:;" target="_self"
                   class="md-nav-item-link" data-form-type="none" data-configuration-id="none">footer
                </a>
              </div>
            </li>
            <li class="md-cta-item">
              <div class="md-component md-cta md-cta-global" data-component-name="cta">
                <a href="javascript:;" target="_self"
                   class="md-nav-item-link" data-form-type="none" data-configuration-id="none">footer
                </a>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </section>

  </footer>

  </body>

</template>
<style src="./style/main.css" scoped></style>
<script>
  export default {
    data () {
      return {
        list: [],
        carInfo:[],
        video:''
      }
    },
    mounted: function () {
      this.get();
      this.videos(1);
      this.info(1);
    },
    methods: {
      get: function () {
        let _this = this;

        fetch('api/getCars').then(function(res){
          return res.json();
        }).then(function(stories){
          console.log(stories)
          _this.list = stories;
        }).then(function(err){
          console.log(err)
        })
      },
      info:function(id){
        let _this = this;

        fetch('api/info?id='+id).then(function(res){
          return res.json();
        }).then(function(stories){
          console.log(stories)
          _this.carInfo = stories;
        }).then(function(err){
          console.log(err)
        })
      },

      videos:function (id) {
        let _this = this;
          if(id == 1){
            _this.video = '/static/video/video2.mp4';
          } else if(id==2){
            _this.video = '/static/video/video3.mp4';
          } else if(id == 3){
            _this.video = '/static/video/video4.mp4';
          }
      }
    }
  }
</script>

