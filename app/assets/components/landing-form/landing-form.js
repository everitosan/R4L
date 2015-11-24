(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw f.code="MODULE_NOT_FOUND",f}var l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){
"use strict";

var _createClass = (function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; })();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var LandingForm = (function () {
  function LandingForm() {
    _classCallCheck(this, LandingForm);
  }

  _createClass(LandingForm, [{
    key: "beforeRegister",
    value: function beforeRegister() {
      this.is = "landing-form";
      this.properties = {
        username: {
          is: String,
          value: ""
        },
        password: {
          is: String,
          value: ""
        },
        hideFooter: {
          is: Boolean,
          value: false
        },
        ajaxBody: {
          type: String,
          computed: 'processBody(username, password)'
        }
      };
    }
  }, {
    key: "showLogIn",
    value: function showLogIn() {
      this.$.dialog.toggle();
    }
  }, {
    key: "submitForm",
    value: function submitForm() {
      //let form = document.getElementById('signIn');
      //form.submit();
      this.$.logInAjax.generateRequest();
    }
  }, {
    key: "logInResponse",
    value: function logInResponse(request) {

      console.log(request.detail.response.valid);
      if (request.detail.response.valid == 'ok') {
        location.reload();
      } else {
        this.username = '';
        this.password = '';
      }
    }
  }, {
    key: "processBody",
    value: function processBody(username, password) {
      var myJson = {
        utf8: "✓",
        authenticity_token: document.head.querySelector('meta[name="csrf-token"]').getAttribute('content'),
        identity: { email: username, password: password },
        commit: "Log in" };

      return JSON.stringify(myJson);
    }
  }]);

  return LandingForm;
})();

Polymer(LandingForm);

},{}]},{},[1]);
