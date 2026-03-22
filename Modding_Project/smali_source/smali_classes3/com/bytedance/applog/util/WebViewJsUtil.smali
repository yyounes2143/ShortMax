.class public Lcom/bytedance/applog/util/WebViewJsUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/applog/util/WebViewJsUtil$g;,
        Lcom/bytedance/applog/util/WebViewJsUtil$h;
    }
.end annotation


# static fields
.field public static final BUNDLE_WEB_INFO:Ljava/lang/String; = "web_info"

.field public static final EMPTY_PAGE:Ljava/lang/String; = "about:blank"

.field public static final JS_CODE_COLLECT:Ljava/lang/String; = "!function(){\"use strict\";function t(t,e){if(!(t instanceof e))throw new TypeError(\"Cannot call a class as a function\")}function e(t,e){for(var n=0;n<e.length;n++){var r=e[n];r.enumerable=r.enumerable||!1,r.configurable=!0,\"value\"in r&&(r.writable=!0),Object.defineProperty(t,r.key,r)}}function n(t,n,r){return n&&e(t.prototype,n),r&&e(t,r),t}function r(t,e){if(\"function\"!=typeof e&&null!==e)throw new TypeError(\"Super expression must either be null or a function\");t.prototype=Object.create(e&&e.prototype,{constructor:{value:t,writable:!0,configurable:!0}}),e&&a(t,e)}function i(t){return(i=Object.setPrototypeOf?Object.getPrototypeOf:function(t){return t.__proto__||Object.getPrototypeOf(t)})(t)}function a(t,e){return(a=Object.setPrototypeOf||function(t,e){return t.__proto__=e,t})(t,e)}function o(t,e){if(e&&(\"object\"==typeof e||\"function\"==typeof e))return e;return function(t){if(void 0===t)throw new ReferenceError(\"this hasn\'t been initialised - super() hasn\'t been called\");return t}(t)}function u(t){var e=function(){if(\"undefined\"==typeof Reflect||!Reflect.construct)return!1;if(Reflect.construct.sham)return!1;if(\"function\"==typeof Proxy)return!0;try{return Date.prototype.toString.call(Reflect.construct(Date,[],(function(){}))),!0}catch(t){return!1}}();return function(){var n,r=i(t);if(e){var a=i(this).constructor;n=Reflect.construct(r,arguments,a)}else n=r.apply(this,arguments);return o(this,n)}}function c(t,e,n){return(c=\"undefined\"!=typeof Reflect&&Reflect.get?Reflect.get:function(t,e,n){var r=function(t,e){for(;!Object.prototype.hasOwnProperty.call(t,e)&&null!==(t=i(t)););return t}(t,e);if(!r)return;var a=Object.getOwnPropertyDescriptor(r,e);if(a.get)return a.get.call(n);return a.value})(t,e,n||t)}function s(t){if([\"LI\",\"TR\",\"DL\"].includes(t.nodeName))return!0;if(t.dataset&&t.dataset.hasOwnProperty(\"teaIdx\"))return!0;if(t.hasAttribute&&t.hasAttribute(\"data-tea-idx\"))return!0;return!1}function l(t){if(!t)return!1;if([\"A\",\"BUTTON\"].includes(t.nodeName))return!0;if(t.dataset&&t.dataset.hasOwnProperty(\"teaContainer\"))return!0;if(t.hasAttribute&&t.hasAttribute(\"data-tea-container\"))return!0;return!1}function h(t){for(var e=t;e&&!l(e);){if(\"HTML\"===e.nodeName||\"BODY\"===e.nodeName)return t;e=e.parentElement}return e||t}function f(t){for(var e=[];null!==t.parentElement;)e.push(t),t=t.parentElement;var n=[],r=[];return e.forEach((function(t){var e=function(t){if(null===t)return{str:\"\",index:0};var e=0,n=t.parentElement;if(n)for(var r=0;r<n.children.length&&n.children[r]!==t;r++)n.children[r].nodeName===t.nodeName&&e++;return{str:[t.nodeName.toLowerCase(),s(t)?\"[]\":\"\"].join(\"\"),index:e}}(t),i=e.str,a=e.index;n.unshift(i),r.unshift(a)})),{element_path:\"/\".concat(n.join(\"/\")),positions:r}}function d(t){var e={element_path:\"\",positions:[],texts:[]},n=f(t),r=n.element_path,i=n.positions,a=function(t){var e=h(t),n=[];return!function t(e){var r=function(t){var e=\"\";return 3===t.nodeType?e=t.textContent.trim():t.dataset&&t.dataset.hasOwnProperty(\"teaTitle\")||t.hasAttribute(\"data-tea-title\")?e=t.getAttribute(\"data-tea-title\"):t.hasAttribute(\"title\")?e=t.getAttribute(\"title\"):\"INPUT\"===t.nodeName&&[\"button\",\"submit\"].includes(t.getAttribute(\"type\"))?e=t.getAttribute(\"value\"):\"IMG\"===t.nodeName&&t.getAttribute(\"alt\")&&(e=t.getAttribute(\"alt\")),e.slice(0,200)}(e);if(r&&-1===n.indexOf(r)&&n.push(r),e.childNodes.length>0)for(var i=e.childNodes,a=0;a<i.length;a++)8!==i[a].nodeType&&t(i[a])}(e),n}(t);e.element_path=r,e.positions=i.map((function(t){return\"\".concat(t)})),e.texts=a;var o=h(t);if(\"A\"===o.tagName&&(e.href=o.getAttribute(\"href\")),\"IMG\"===t.tagName){var u=t.getAttribute(\"src\");u&&0===u.trim().indexOf(\"data:\")&&(u=\"\"),e.src=u}return e.page_title=document.title,e.element_id=t.id,e.element_type=t.tagName,e}var p=function(){function e(n,r){var i=this;t(this,e),this.handler=function(t){var e=(t=i.getEvent(t)).target;if(!i.checkShouldTrackElement(e)||i.checkShouldIgnore(e))return;var n=i.getPositionData(e),r=i.getEventData(t,n),a=i.getElementData(e),o=i.getAllData(r,a,{element_width:Math.floor(n.element_width),element_height:Math.floor(n.element_height)});i.report(o)},this.info=n,this.autoTrack=r,this.listen()}return n(e,[{key:\"listen\",value:function(){this.autoTrack.root.addEventListener(this.info.eventType,this.handler,!0)}},{key:\"_checkShouldTrackElement\",value:function(t){return function(t){var e=window.innerHeight,n=window.innerWidth;if(1!==t.nodeType)return!1;if(function(t){for(var e=t.parentElement,n=!1;e;)\"svg\"===e.tagName.toLowerCase()?(e=null,n=!0):e=e.parentElement;return n}(t))return!1;if([\"HTML\",\"BODY\"].includes(t.tagName.toUpperCase()))return!1;var r=t;if(\"none\"===r.style.display)return!1;if(l(r))return!0;if(!function(t){if(t.children.length>0){var e=t.children;if([].slice.call(e).some((function(t){return t.children.length>0})))return!1;return!0}return!0}(r))return!1;if(r.clientHeight*r.clientWidth>.5*e*n)return!1;return!0}(t)}},{key:\"checkShouldTrackElement\",value:function(t){return!0}},{key:\"checkShouldIgnore\",value:function(t){return function(t){for(var e=t;e&&e.parentNode;){if(e.hasAttribute(\"data-tea-ignore\"))return!0;if(\"HTML\"===e.nodeName||\"body\"===e.nodeName)return!1;e=e.parentNode}return!1}(t)}},{key:\"getEvent\",value:function(t){return t}},{key:\"getEventData\",value:function(){var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{},e=arguments.length>1&&void 0!==arguments[1]?arguments[1]:{},n=t.clientX,r=t.clientY,i=e.left,a=e.top;return{touch_x:Math.floor(n-i),touch_y:Math.floor(r-a)}}},{key:\"getElementData\",value:function(t){return d(t)}},{key:\"getPositionData\",value:function(t){if(!t)return;var e=t.getBoundingClientRect(),n=e.width,r=e.height;return{left:e.left,top:e.top,element_width:n,element_height:r}}},{key:\"getAllData\",value:function(){var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{},e=arguments.length>1&&void 0!==arguments[1]?arguments[1]:{},n=arguments.length>2&&void 0!==arguments[2]?arguments[2]:{};return Object.assign(Object.assign(Object.assign(Object.assign({},t),e),n),{is_html:1,page_key:window.location.href})}},{key:\"report\",value:function(t){this.autoTrack.report(this.info.eventName,t)}},{key:\"destroy\",value:function(){this.autoTrack.root.removeEventListener(this.info.eventName,this.handler,!0),this.autoTrack=null}}]),e}(),v=function(e){r(o,e);var a=u(o);function o(e){var n;t(this,o),(n=a.call(this,{eventName:\"bav2b_page\"},e)).handler=function(t){if(n.checkHref())return;n._handler()},n._handler=function(){n.setHref();var t=n.getAllData();n.report(t)},n._listen();try{\"loading\"===document.readyState?document.addEventListener(\"DOMContentLoaded\",n._handler):setTimeout(n._handler)}catch(t){}return n}return n(o,[{key:\"listen\",value:function(){}},{key:\"_listen\",value:function(){var t=this;this._oldPushState=history.pushState,this._oldReplaceState=history.replaceState,history.pushState=function(){try{for(var e,n=arguments.length,r=new Array(n),i=0;i<n;i++)r[i]=arguments[i];return(e=t._oldPushState).call.apply(e,[history].concat(r))}finally{t._handler()}},history.replaceState=function(){try{for(var e,n=arguments.length,r=new Array(n),i=0;i<n;i++)r[i]=arguments[i];return(e=t._oldReplaceState).call.apply(e,[history].concat(r))}finally{t._handler()}},window.addEventListener(\"hashchange\",this.handler,!0),window.addEventListener(\"popstate\",this.handler,!0)}},{key:\"setHref\",value:function(t){this._currentHref=t||window.location.href}},{key:\"checkHref\",value:function(){return this._currentHref===window.location.href}},{key:\"getAllData\",value:function(){return Object.assign(Object.assign({},c(i(o.prototype),\"getAllData\",this).call(this)),{is_bav:1,page_key:this._currentHref,refer_page_key:document.referrer,page_title:document.title,page_path:this._currentHref,referrer_page_path:document.referrer})}},{key:\"destroy\",value:function(){window.removeEventListener(\"popstate\",this.handler,!0),window.removeEventListener(\"hashchange\",this.handler,!0),history.pushState=this._oldPushState,history.replaceState=this._oldReplaceState,this._oldPushState=null,this._oldReplaceState=null,this.autoTrack=null}}]),o}(p),g=function(e){r(o,e);var a=u(o);function o(e){return t(this,o),a.call(this,{eventType:\"click\",eventName:\"bav2b_click\"},e)}return n(o,[{key:\"checkShouldTrackElement\",value:function(t){return c(i(o.prototype),\"_checkShouldTrackElement\",this).call(this,t)}}]),o}(p),y=function(e){r(o,e);var a=u(o);function o(e){var n;return t(this,o),(n=a.call(this,{eventName:\"bav2b_click\"},e)).startHandler=function(t){var e=n.autoTrack.root,r=!1,i=function(){r=!0};e.addEventListener(\"touchmove\",i,!0),e.addEventListener(\"touchend\",(function t(a){r||n.handler(a),e.removeEventListener(\"touchmove\",i,!0),e.removeEventListener(\"touchend\",t,!0)}),!0)},n._listen(),n}return n(o,[{key:\"listen\",value:function(){}},{key:\"_listen\",value:function(){this.autoTrack.root.addEventListener(\"touchstart\",this.startHandler,!0)}},{key:\"getEvent\",value:function(t){return t.changedTouches[0]}},{key:\"checkShouldTrackElement\",value:function(t){if(!c(i(o.prototype),\"_checkShouldTrackElement\",this).call(this,t))return!1;if(\"input\"===t.nodeName.toLowerCase()&&[\"text\",\"password\",\"email\",\"tel\",\"number\",\"url\"].includes(t.type))return!1;return!0}},{key:\"destroy\",value:function(){this.autoTrack.root.removeEventListener(\"touchstart\",this.startHandler,!0),this.autoTrack=null}}]),o}(p),m=function(){function e(){t(this,e),this.version=\"1.2.1\",this.options={page:!1,touch:!1,click:!1},this.root=document,this.eventInstances=[],this.started=!1}return n(e,[{key:\"init\",value:function(t,e){this.options=Object.assign(Object.assign({},this.options),t),this.reportAdapter=e}},{key:\"start\",value:function(){if(this.started)return;this.started=!0;var t=this.options,e=t.page,n=t.click,r=t.touch;e&&this.eventInstances.push(new v(this)),n&&this.eventInstances.push(new g(this)),r&&this.eventInstances.push(new y(this))}},{key:\"stop\",value:function(){this.started=!1,this.eventInstances.forEach((function(t){return t.destroy()})),this.root=null}},{key:\"report\",value:function(){this.reportAdapter&&this.reportAdapter.apply(this,arguments)}}],[{key:\"getInstance\",value:function(){return e.instance||(e.instance=new e),e.instance}}]),e}();m.instance=null;var w,k,_;if(console.log(\"Winter Is Coming!\"),!window.TEAWebviewAutoTrack){var b=null,E=function(t){b||(b=window.TEANativeReport&&\"function\"==typeof window.TEANativeReport.postMessage?function(t){window.TEANativeReport.postMessage(t)}:window.TEANativeReport&&\"function\"==typeof window.TEANativeReport?function(t){window.TEANativeReport(t)}:window.webkit&&window.webkit.messageHandlers&&window.webkit.messageHandlers.TEANativeReport&&\"function\"==typeof window.webkit.messageHandlers.TEANativeReport.postMessage?function(t){window.webkit.messageHandlers.TEANativeReport.postMessage(t)}:function(t){}),b(t)},T=(w={page:!0,touch:!0,click:!1},k=function(){for(var t=arguments.length,e=new Array(t),n=0;n<t;n++)e[n]=arguments[n];var r=e[0],i=e[1],a=[{event:r,is_bav:1,local_time_ms:+new Date,params:i}];console.log(a[0]),E(JSON.stringify(a))},(_=m.getInstance()).init(w,k),_);T.start(),window.TEAWebviewAutoTrack=T}}();"

.field public static final JS_CODE_MARQUEE:Ljava/lang/String; = "!function(){\"use strict\";function t(t){return function(t){if(Array.isArray(t))return e(t)}(t)||function(t){if(\"undefined\"!=typeof Symbol&&Symbol.iterator in Object(t))return Array.from(t)}(t)||function(t,n){if(!t)return;if(\"string\"==typeof t)return e(t,n);var r=Object.prototype.toString.call(t).slice(8,-1);\"Object\"===r&&t.constructor&&(r=t.constructor.name);if(\"Map\"===r||\"Set\"===r)return Array.from(t);if(\"Arguments\"===r||/^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(r))return e(t,n)}(t)||function(){throw new TypeError(\"Invalid attempt to spread non-iterable instance.\\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.\")}()}function e(t,e){(null==e||e>t.length)&&(e=t.length);for(var n=0,r=new Array(e);n<e;n++)r[n]=t[n];return r}function n(t){if([\"LI\",\"TR\",\"DL\"].includes(t.nodeName))return!0;if(t.dataset&&t.dataset.hasOwnProperty(\"teaIdx\"))return!0;if(t.hasAttribute&&t.hasAttribute(\"data-tea-idx\"))return!0;return!1}function r(t){if(!t)return!1;if([\"A\",\"BUTTON\"].includes(t.nodeName))return!0;if(t.dataset&&t.dataset.hasOwnProperty(\"teaContainer\"))return!0;if(t.hasAttribute&&t.hasAttribute(\"data-tea-container\"))return!0;return!1}function i(t){for(var e=t;e&&!r(e);){if(\"HTML\"===e.nodeName||\"BODY\"===e.nodeName)return t;e=e.parentElement}return e||t}function o(t){for(var e=[];null!==t.parentElement;)e.push(t),t=t.parentElement;var r=[],i=[];return e.forEach((function(t){var e=function(t){if(null===t)return{str:\"\",index:0};var e=0,r=t.parentElement;if(r)for(var i=0;i<r.children.length&&r.children[i]!==t;i++)r.children[i].nodeName===t.nodeName&&e++;return{str:[t.nodeName.toLowerCase(),n(t)?\"[]\":\"\"].join(\"\"),index:e}}(t),o=e.str,a=e.index;r.unshift(o),i.unshift(a)})),{element_path:\"/\".concat(r.join(\"/\")),positions:i}}function a(t){var e={element_path:\"\",positions:[],texts:[]},n=o(t),r=n.element_path,a=n.positions,u=function(t){var e=i(t),n=[];return!function t(e){var r=function(t){var e=\"\";return 3===t.nodeType?e=t.textContent.trim():t.dataset&&t.dataset.hasOwnProperty(\"teaTitle\")||t.hasAttribute(\"data-tea-title\")?e=t.getAttribute(\"data-tea-title\"):t.hasAttribute(\"title\")?e=t.getAttribute(\"title\"):\"INPUT\"===t.nodeName&&[\"button\",\"submit\"].includes(t.getAttribute(\"type\"))?e=t.getAttribute(\"value\"):\"IMG\"===t.nodeName&&t.getAttribute(\"alt\")&&(e=t.getAttribute(\"alt\")),e.slice(0,200)}(e);if(r&&-1===n.indexOf(r)&&n.push(r),e.childNodes.length>0)for(var i=e.childNodes,o=0;o<i.length;o++)8!==i[o].nodeType&&t(i[o])}(e),n}(t);e.element_path=r,e.positions=a.map((function(t){return\"\".concat(t)})),e.texts=u;var c=i(t);if(\"A\"===c.tagName&&(e.href=c.getAttribute(\"href\")),\"IMG\"===t.tagName){var l=t.getAttribute(\"src\");l&&0===l.trim().indexOf(\"data:\")&&(l=\"\"),e.src=l}return e.page_title=document.title,e.element_id=t.id,e.element_type=t.tagName,e}var u=window.__TEA_CHUNK_MAX__||524288;function c(t){try{return new Blob([t]).size}catch(i){for(var e=t.length,n=e-1;n>=0;n--){var r=t.charCodeAt(n);r>127&&r<=2047?e++:r>2047&&r<=65535&&(e+=2),r>=56320&&r<=57343&&n--}return e}}function l(t){if(c(t)<u)return[t];var e=encodeURIComponent(t),n=Math.ceil(c(e)/u);return new Array(n).fill(\"\").map((function(t,n){return e.substr(n*u,u)}))}var f=function(t){var e=a(t),n=e.element_path,r=e.positions,i=e.texts,o=e.href,u=e.src,c=function(t,e){var n={};for(var r in t)Object.prototype.hasOwnProperty.call(t,r)&&e.indexOf(r)<0&&(n[r]=t[r]);if(null!=t&&\"function\"==typeof Object.getOwnPropertySymbols){var i=0;for(r=Object.getOwnPropertySymbols(t);i<r.length;i++)e.indexOf(r[i])<0&&Object.prototype.propertyIsEnumerable.call(t,r[i])&&(n[r[i]]=t[r[i]])}return n}(e,[\"element_path\",\"positions\",\"texts\",\"href\",\"src\"]),l=[].concat(r).reverse(),f=!1;if(-1!==n.indexOf(\"[]\")){f=!0;var s=!1;n.split(\"/\").reverse().forEach((function(t,e){s||-1===t.indexOf(\"[]\")||(s=!0,l[e]=\"*\")}))}var d=[\"absolute\",\"fixed\"],h=0,p=getComputedStyle(t,null).getPropertyValue(\"z-index\");\"auto\"!==p&&(h=parseInt(String(p),10));for(var m=t.parentElement;m;){var g=getComputedStyle(m,null);if(d.includes(g.getPropertyValue(\"position\"))){h+=1e4;break}m=m.parentElement}return Object.assign(Object.assign(Object.assign(Object.assign(Object.assign({},c),{_element_path:n,element_path:\"\".concat(n,\"/*\"),positions:r.concat(\"*\"),zIndex:h,texts:i}),f?{fuzzy_positions:l.reverse().concat(\"*\")}:{}),o?{href:o}:{}),u?{src:u}:{})},s=!1,d=1,h=window.innerWidth,p=window.innerHeight,m=new Set;var g=function(t){var e=t._element_path,n=t.positions,r=t.children;t._checkList=!0;var i=e.split(\"/\").length-2;if(t.fuzzy_positions||(t.fuzzy_positions=[].concat(n)),t.fuzzy_positions[i]=\"*\",r){!function t(e){e.forEach((function(e){e.fuzzy_positions||(e.fuzzy_positions=[].concat(e.positions)),e.fuzzy_positions[i]=\"*\",e.children&&t(e.children)}))}(r)}},y=function e(n){return Array.prototype.slice.call(n,0).reduce((function(n,r){if(!r)return n;var i=r.nodeName;if(function(t){return[\"script\",\"link\",\"style\",\"embed\"].includes(t)}(i=i.toLowerCase())||function(t){var e=getComputedStyle(t,null);if(\"none\"===e.getPropertyValue(\"display\"))return!0;if(\"0\"===e.getPropertyValue(\"opacity\"))return!0;return!1}(r))return n;var o=function(t){var e=arguments.length>1&&void 0!==arguments[1]?arguments[1]:1,n=t.getBoundingClientRect().toJSON();if(1===e)return n;return Object.keys(n).reduce((function(t,r){return t[r]=Math.ceil(n[r]*e),t}),{})}(r,d);if(!function(t,e){var n=t.left,r=t.right,i=t.top,o=t.bottom,a=t.width,u=t.height,c=!(a>0&&u>0),l=getComputedStyle(e,null);if(![\"\",\"static\"].includes(l.getPropertyValue(\"position\"))){if(c&&!e.children.length)return!1;var f=l.getPropertyValue(\"z-index\");if(\"auto\"!==f&&parseInt(f,10)<0)return!1;return!0}if(c)return!1;if(n>window.innerWidth||r<0||i>window.innerHeight||o<0)return!1;return!0}(o,r))return n;o=function(t){var e={x:t.left,y:t.top,width:t.width,height:t.height};return t.top<0&&(e.y=0,e.height+=t.top),t.bottom>p&&(e.height=p-e.y),t.left<0&&(e.x=0,e.width+=t.left),t.right>h&&(e.width=h-e.x),Object.keys(e).forEach((function(t){e[t]=Math.floor(e[t])})),e}(o);var a={};if(!function(t){return[\"button\",\"select\"].includes(t)}(i)&&r.children){var u=e(r.children);u&&u.length&&(a={children:u})}var c=f(r),l=c._element_path,s=!1;if(m.has(l))s=!0;else{var y=r.parentElement;if(y){var v=y.children,b=Array.from(v).filter((function(t){return t.nodeName.toLowerCase()===i})),w=b.length;if(w>=3){var A=Array.from(r.classList),_=A.length,O=Array.from(r.children).map((function(t){return t.nodeName.toLowerCase()})).join(\",\"),x=0;Array.from(b).forEach((function(e){if(e===r)return x++,void 0;var n=!1;if(_){var i=Array.from(e.classList);A.length+i.length-new Set([].concat(t(i),t(A))).size>0&&(n=!0)}else n=!0;if(n){var o=!1;if(O)Array.from(e.children).map((function(t){return t.nodeName.toLowerCase()})).join(\",\")===O&&(o=!0);else o=!0;o&&x++}})),x>=3&&x/w>=.5&&(s=!0),s&&m.add(l)}}}return c=Object.assign(Object.assign({nodeName:i,frame:o},c),a),s&&g(c),c.children&&c.children.forEach((function(t){var e=t._element_path,n=t._checkList;m.has(e)&&!n&&g(t)})),n.push(c),n}),[])},v=function(){if(s)return;s=!0,d=function(){try{var t=window.outerWidth/window.innerWidth;if(1===t)return 1;if(t)return t;var e=document.querySelector(\'meta[name=\"viewport\"]\');if(e){var n=e.content.match(/initial-scale=(.*?)(,|$)/);if(n&&n[1]){var r=parseFloat(n[1]);if(r)return r}}}catch(t){return 1}return 1}(),h=window.innerWidth*d,p=window.innerHeight*d,m=new Set},b=function(t){return JSON.stringify(t)};if(!window.TEAWebviewInfo){var w=[],A=function(){var t=arguments.length>0&&void 0!==arguments[0]&&arguments[0];if(w.length)return console.log(w.length,w),b({value:w.shift(),done:!w.length});v();try{var e=y(document.querySelectorAll(\"body > *\")),n={page:window.location.href,info:e},r=b(n);if(console.log(r),!t)return r;if(1===(w=l(r)).length)return w.shift();return console.log(w.length,w),b({value:w.shift(),done:!1})}catch(t){console.log(t)}return\"\"};A.version=\"1.2.0\",window.TEAWebviewInfo=A}}();\n"

.field public static final JS_URL_PREFIX:Ljava/lang/String; = "javascript:"

.field public static final loggerTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WebViewJsUtil"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/bytedance/applog/util/WebViewJsUtil;->loggerTags:Ljava/util/List;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/applog/util/WebViewJsUtil;->loggerTags:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/applog/util/WebViewJsUtil;->sendWebClick(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Lcom/bytedance/bdtracker/b4;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/applog/util/WebViewJsUtil;->create(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Lcom/bytedance/bdtracker/b4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Lcom/bytedance/bdtracker/b4;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/bdtracker/b4;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object p3, v1

    .line 12
    :goto_0
    invoke-direct {v0, v1, p0, p2, p3}, Lcom/bytedance/bdtracker/b4;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 22
    .line 23
    .line 24
    move-result-wide p0

    .line 25
    invoke-virtual {v0, p0, p1}, Lcom/bytedance/bdtracker/u3;->a(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :catch_0
    move-exception p0

    .line 30
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    sget-object p2, Lcom/bytedance/applog/util/WebViewJsUtil;->loggerTags:Ljava/util/List;

    .line 35
    .line 36
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string p3, "Create eventV3 failed"

    .line 41
    .line 42
    invoke-interface {p1, p2, p3, p0}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static evaluateJavascript(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/applog/util/WebViewJsUtil$c;

    invoke-direct {v0}, Lcom/bytedance/applog/util/WebViewJsUtil$c;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/bytedance/applog/util/WebViewJsUtil;->evaluateJavascript(Landroid/view/View;Ljava/lang/String;Lcom/bytedance/applog/util/WebViewJsUtil$g;)V

    return-void
.end method

.method public static evaluateJavascript(Landroid/view/View;Ljava/lang/String;Lcom/bytedance/applog/util/WebViewJsUtil$g;)V
    .locals 1

    .line 2
    invoke-static {p0}, Lcom/bytedance/bdtracker/k4;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/bytedance/bdtracker/k4;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p0, Lcom/tencent/smtt/sdk/WebView;

    new-instance v0, Lcom/bytedance/applog/util/WebViewJsUtil$d;

    invoke-direct {v0, p2}, Lcom/bytedance/applog/util/WebViewJsUtil$d;-><init>(Lcom/bytedance/applog/util/WebViewJsUtil$g;)V

    invoke-virtual {p0, p1, v0}, Lcom/tencent/smtt/sdk/WebView;->evaluateJavascript(Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V

    goto :goto_0

    :cond_1
    check-cast p0, Landroid/webkit/WebView;

    new-instance v0, Lcom/bytedance/applog/util/WebViewJsUtil$e;

    invoke-direct {v0, p2}, Lcom/bytedance/applog/util/WebViewJsUtil$e;-><init>(Lcom/bytedance/applog/util/WebViewJsUtil$g;)V

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :goto_0
    return-void
.end method

.method public static getJsCodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "javascript:"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string p0, ""

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static getWebInfo(Landroid/webkit/WebView;Landroid/os/Handler;)V
    .locals 2

    .line 1
    const-string v0, "TEAWebviewInfo();"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/applog/util/WebViewJsUtil;->getJsCodeUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/bytedance/applog/util/WebViewJsUtil$a;

    .line 8
    .line 9
    invoke-direct {v1, p1, p0}, Lcom/bytedance/applog/util/WebViewJsUtil$a;-><init>(Landroid/os/Handler;Landroid/webkit/WebView;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static injectCollectJs(Landroid/view/View;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/bytedance/applog/util/WebViewJsUtil;->loggerTags:Ljava/util/List;

    .line 6
    .line 7
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "WebViewJsUtil collect js to: {}"

    .line 12
    .line 13
    invoke-interface {v0, v1, v3, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/bytedance/applog/util/WebViewJsUtil$b;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/bytedance/applog/util/WebViewJsUtil$b;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/bytedance/bdtracker/b;->a(Lcom/bytedance/bdtracker/b$e;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const-string v2, "!function(){\"use strict\";function t(t){return function(t){if(Array.isArray(t))return e(t)}(t)||function(t){if(\"undefined\"!=typeof Symbol&&Symbol.iterator in Object(t))return Array.from(t)}(t)||function(t,n){if(!t)return;if(\"string\"==typeof t)return e(t,n);var r=Object.prototype.toString.call(t).slice(8,-1);\"Object\"===r&&t.constructor&&(r=t.constructor.name);if(\"Map\"===r||\"Set\"===r)return Array.from(t);if(\"Arguments\"===r||/^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(r))return e(t,n)}(t)||function(){throw new TypeError(\"Invalid attempt to spread non-iterable instance.\\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.\")}()}function e(t,e){(null==e||e>t.length)&&(e=t.length);for(var n=0,r=new Array(e);n<e;n++)r[n]=t[n];return r}function n(t){if([\"LI\",\"TR\",\"DL\"].includes(t.nodeName))return!0;if(t.dataset&&t.dataset.hasOwnProperty(\"teaIdx\"))return!0;if(t.hasAttribute&&t.hasAttribute(\"data-tea-idx\"))return!0;return!1}function r(t){if(!t)return!1;if([\"A\",\"BUTTON\"].includes(t.nodeName))return!0;if(t.dataset&&t.dataset.hasOwnProperty(\"teaContainer\"))return!0;if(t.hasAttribute&&t.hasAttribute(\"data-tea-container\"))return!0;return!1}function i(t){for(var e=t;e&&!r(e);){if(\"HTML\"===e.nodeName||\"BODY\"===e.nodeName)return t;e=e.parentElement}return e||t}function o(t){for(var e=[];null!==t.parentElement;)e.push(t),t=t.parentElement;var r=[],i=[];return e.forEach((function(t){var e=function(t){if(null===t)return{str:\"\",index:0};var e=0,r=t.parentElement;if(r)for(var i=0;i<r.children.length&&r.children[i]!==t;i++)r.children[i].nodeName===t.nodeName&&e++;return{str:[t.nodeName.toLowerCase(),n(t)?\"[]\":\"\"].join(\"\"),index:e}}(t),o=e.str,a=e.index;r.unshift(o),i.unshift(a)})),{element_path:\"/\".concat(r.join(\"/\")),positions:i}}function a(t){var e={element_path:\"\",positions:[],texts:[]},n=o(t),r=n.element_path,a=n.positions,u=function(t){var e=i(t),n=[];return!function t(e){var r=function(t){var e=\"\";return 3===t.nodeType?e=t.textContent.trim():t.dataset&&t.dataset.hasOwnProperty(\"teaTitle\")||t.hasAttribute(\"data-tea-title\")?e=t.getAttribute(\"data-tea-title\"):t.hasAttribute(\"title\")?e=t.getAttribute(\"title\"):\"INPUT\"===t.nodeName&&[\"button\",\"submit\"].includes(t.getAttribute(\"type\"))?e=t.getAttribute(\"value\"):\"IMG\"===t.nodeName&&t.getAttribute(\"alt\")&&(e=t.getAttribute(\"alt\")),e.slice(0,200)}(e);if(r&&-1===n.indexOf(r)&&n.push(r),e.childNodes.length>0)for(var i=e.childNodes,o=0;o<i.length;o++)8!==i[o].nodeType&&t(i[o])}(e),n}(t);e.element_path=r,e.positions=a.map((function(t){return\"\".concat(t)})),e.texts=u;var c=i(t);if(\"A\"===c.tagName&&(e.href=c.getAttribute(\"href\")),\"IMG\"===t.tagName){var l=t.getAttribute(\"src\");l&&0===l.trim().indexOf(\"data:\")&&(l=\"\"),e.src=l}return e.page_title=document.title,e.element_id=t.id,e.element_type=t.tagName,e}var u=window.__TEA_CHUNK_MAX__||524288;function c(t){try{return new Blob([t]).size}catch(i){for(var e=t.length,n=e-1;n>=0;n--){var r=t.charCodeAt(n);r>127&&r<=2047?e++:r>2047&&r<=65535&&(e+=2),r>=56320&&r<=57343&&n--}return e}}function l(t){if(c(t)<u)return[t];var e=encodeURIComponent(t),n=Math.ceil(c(e)/u);return new Array(n).fill(\"\").map((function(t,n){return e.substr(n*u,u)}))}var f=function(t){var e=a(t),n=e.element_path,r=e.positions,i=e.texts,o=e.href,u=e.src,c=function(t,e){var n={};for(var r in t)Object.prototype.hasOwnProperty.call(t,r)&&e.indexOf(r)<0&&(n[r]=t[r]);if(null!=t&&\"function\"==typeof Object.getOwnPropertySymbols){var i=0;for(r=Object.getOwnPropertySymbols(t);i<r.length;i++)e.indexOf(r[i])<0&&Object.prototype.propertyIsEnumerable.call(t,r[i])&&(n[r[i]]=t[r[i]])}return n}(e,[\"element_path\",\"positions\",\"texts\",\"href\",\"src\"]),l=[].concat(r).reverse(),f=!1;if(-1!==n.indexOf(\"[]\")){f=!0;var s=!1;n.split(\"/\").reverse().forEach((function(t,e){s||-1===t.indexOf(\"[]\")||(s=!0,l[e]=\"*\")}))}var d=[\"absolute\",\"fixed\"],h=0,p=getComputedStyle(t,null).getPropertyValue(\"z-index\");\"auto\"!==p&&(h=parseInt(String(p),10));for(var m=t.parentElement;m;){var g=getComputedStyle(m,null);if(d.includes(g.getPropertyValue(\"position\"))){h+=1e4;break}m=m.parentElement}return Object.assign(Object.assign(Object.assign(Object.assign(Object.assign({},c),{_element_path:n,element_path:\"\".concat(n,\"/*\"),positions:r.concat(\"*\"),zIndex:h,texts:i}),f?{fuzzy_positions:l.reverse().concat(\"*\")}:{}),o?{href:o}:{}),u?{src:u}:{})},s=!1,d=1,h=window.innerWidth,p=window.innerHeight,m=new Set;var g=function(t){var e=t._element_path,n=t.positions,r=t.children;t._checkList=!0;var i=e.split(\"/\").length-2;if(t.fuzzy_positions||(t.fuzzy_positions=[].concat(n)),t.fuzzy_positions[i]=\"*\",r){!function t(e){e.forEach((function(e){e.fuzzy_positions||(e.fuzzy_positions=[].concat(e.positions)),e.fuzzy_positions[i]=\"*\",e.children&&t(e.children)}))}(r)}},y=function e(n){return Array.prototype.slice.call(n,0).reduce((function(n,r){if(!r)return n;var i=r.nodeName;if(function(t){return[\"script\",\"link\",\"style\",\"embed\"].includes(t)}(i=i.toLowerCase())||function(t){var e=getComputedStyle(t,null);if(\"none\"===e.getPropertyValue(\"display\"))return!0;if(\"0\"===e.getPropertyValue(\"opacity\"))return!0;return!1}(r))return n;var o=function(t){var e=arguments.length>1&&void 0!==arguments[1]?arguments[1]:1,n=t.getBoundingClientRect().toJSON();if(1===e)return n;return Object.keys(n).reduce((function(t,r){return t[r]=Math.ceil(n[r]*e),t}),{})}(r,d);if(!function(t,e){var n=t.left,r=t.right,i=t.top,o=t.bottom,a=t.width,u=t.height,c=!(a>0&&u>0),l=getComputedStyle(e,null);if(![\"\",\"static\"].includes(l.getPropertyValue(\"position\"))){if(c&&!e.children.length)return!1;var f=l.getPropertyValue(\"z-index\");if(\"auto\"!==f&&parseInt(f,10)<0)return!1;return!0}if(c)return!1;if(n>window.innerWidth||r<0||i>window.innerHeight||o<0)return!1;return!0}(o,r))return n;o=function(t){var e={x:t.left,y:t.top,width:t.width,height:t.height};return t.top<0&&(e.y=0,e.height+=t.top),t.bottom>p&&(e.height=p-e.y),t.left<0&&(e.x=0,e.width+=t.left),t.right>h&&(e.width=h-e.x),Object.keys(e).forEach((function(t){e[t]=Math.floor(e[t])})),e}(o);var a={};if(!function(t){return[\"button\",\"select\"].includes(t)}(i)&&r.children){var u=e(r.children);u&&u.length&&(a={children:u})}var c=f(r),l=c._element_path,s=!1;if(m.has(l))s=!0;else{var y=r.parentElement;if(y){var v=y.children,b=Array.from(v).filter((function(t){return t.nodeName.toLowerCase()===i})),w=b.length;if(w>=3){var A=Array.from(r.classList),_=A.length,O=Array.from(r.children).map((function(t){return t.nodeName.toLowerCase()})).join(\",\"),x=0;Array.from(b).forEach((function(e){if(e===r)return x++,void 0;var n=!1;if(_){var i=Array.from(e.classList);A.length+i.length-new Set([].concat(t(i),t(A))).size>0&&(n=!0)}else n=!0;if(n){var o=!1;if(O)Array.from(e.children).map((function(t){return t.nodeName.toLowerCase()})).join(\",\")===O&&(o=!0);else o=!0;o&&x++}})),x>=3&&x/w>=.5&&(s=!0),s&&m.add(l)}}}return c=Object.assign(Object.assign({nodeName:i,frame:o},c),a),s&&g(c),c.children&&c.children.forEach((function(t){var e=t._element_path,n=t._checkList;m.has(e)&&!n&&g(t)})),n.push(c),n}),[])},v=function(){if(s)return;s=!0,d=function(){try{var t=window.outerWidth/window.innerWidth;if(1===t)return 1;if(t)return t;var e=document.querySelector(\'meta[name=\"viewport\"]\');if(e){var n=e.content.match(/initial-scale=(.*?)(,|$)/);if(n&&n[1]){var r=parseFloat(n[1]);if(r)return r}}}catch(t){return 1}return 1}(),h=window.innerWidth*d,p=window.innerHeight*d,m=new Set},b=function(t){return JSON.stringify(t)};if(!window.TEAWebviewInfo){var w=[],A=function(){var t=arguments.length>0&&void 0!==arguments[0]&&arguments[0];if(w.length)return console.log(w.length,w),b({value:w.shift(),done:!w.length});v();try{var e=y(document.querySelectorAll(\"body > *\")),n={page:window.location.href,info:e},r=b(n);if(console.log(r),!t)return r;if(1===(w=l(r)).length)return w.shift();return console.log(w.length,w),b({value:w.shift(),done:!1})}catch(t){console.log(t)}return\"\"};A.version=\"1.2.0\",window.TEAWebviewInfo=A}}();\n"

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    move-object v0, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string v0, "!function(){\"use strict\";function t(t,e){if(!(t instanceof e))throw new TypeError(\"Cannot call a class as a function\")}function e(t,e){for(var n=0;n<e.length;n++){var r=e[n];r.enumerable=r.enumerable||!1,r.configurable=!0,\"value\"in r&&(r.writable=!0),Object.defineProperty(t,r.key,r)}}function n(t,n,r){return n&&e(t.prototype,n),r&&e(t,r),t}function r(t,e){if(\"function\"!=typeof e&&null!==e)throw new TypeError(\"Super expression must either be null or a function\");t.prototype=Object.create(e&&e.prototype,{constructor:{value:t,writable:!0,configurable:!0}}),e&&a(t,e)}function i(t){return(i=Object.setPrototypeOf?Object.getPrototypeOf:function(t){return t.__proto__||Object.getPrototypeOf(t)})(t)}function a(t,e){return(a=Object.setPrototypeOf||function(t,e){return t.__proto__=e,t})(t,e)}function o(t,e){if(e&&(\"object\"==typeof e||\"function\"==typeof e))return e;return function(t){if(void 0===t)throw new ReferenceError(\"this hasn\'t been initialised - super() hasn\'t been called\");return t}(t)}function u(t){var e=function(){if(\"undefined\"==typeof Reflect||!Reflect.construct)return!1;if(Reflect.construct.sham)return!1;if(\"function\"==typeof Proxy)return!0;try{return Date.prototype.toString.call(Reflect.construct(Date,[],(function(){}))),!0}catch(t){return!1}}();return function(){var n,r=i(t);if(e){var a=i(this).constructor;n=Reflect.construct(r,arguments,a)}else n=r.apply(this,arguments);return o(this,n)}}function c(t,e,n){return(c=\"undefined\"!=typeof Reflect&&Reflect.get?Reflect.get:function(t,e,n){var r=function(t,e){for(;!Object.prototype.hasOwnProperty.call(t,e)&&null!==(t=i(t)););return t}(t,e);if(!r)return;var a=Object.getOwnPropertyDescriptor(r,e);if(a.get)return a.get.call(n);return a.value})(t,e,n||t)}function s(t){if([\"LI\",\"TR\",\"DL\"].includes(t.nodeName))return!0;if(t.dataset&&t.dataset.hasOwnProperty(\"teaIdx\"))return!0;if(t.hasAttribute&&t.hasAttribute(\"data-tea-idx\"))return!0;return!1}function l(t){if(!t)return!1;if([\"A\",\"BUTTON\"].includes(t.nodeName))return!0;if(t.dataset&&t.dataset.hasOwnProperty(\"teaContainer\"))return!0;if(t.hasAttribute&&t.hasAttribute(\"data-tea-container\"))return!0;return!1}function h(t){for(var e=t;e&&!l(e);){if(\"HTML\"===e.nodeName||\"BODY\"===e.nodeName)return t;e=e.parentElement}return e||t}function f(t){for(var e=[];null!==t.parentElement;)e.push(t),t=t.parentElement;var n=[],r=[];return e.forEach((function(t){var e=function(t){if(null===t)return{str:\"\",index:0};var e=0,n=t.parentElement;if(n)for(var r=0;r<n.children.length&&n.children[r]!==t;r++)n.children[r].nodeName===t.nodeName&&e++;return{str:[t.nodeName.toLowerCase(),s(t)?\"[]\":\"\"].join(\"\"),index:e}}(t),i=e.str,a=e.index;n.unshift(i),r.unshift(a)})),{element_path:\"/\".concat(n.join(\"/\")),positions:r}}function d(t){var e={element_path:\"\",positions:[],texts:[]},n=f(t),r=n.element_path,i=n.positions,a=function(t){var e=h(t),n=[];return!function t(e){var r=function(t){var e=\"\";return 3===t.nodeType?e=t.textContent.trim():t.dataset&&t.dataset.hasOwnProperty(\"teaTitle\")||t.hasAttribute(\"data-tea-title\")?e=t.getAttribute(\"data-tea-title\"):t.hasAttribute(\"title\")?e=t.getAttribute(\"title\"):\"INPUT\"===t.nodeName&&[\"button\",\"submit\"].includes(t.getAttribute(\"type\"))?e=t.getAttribute(\"value\"):\"IMG\"===t.nodeName&&t.getAttribute(\"alt\")&&(e=t.getAttribute(\"alt\")),e.slice(0,200)}(e);if(r&&-1===n.indexOf(r)&&n.push(r),e.childNodes.length>0)for(var i=e.childNodes,a=0;a<i.length;a++)8!==i[a].nodeType&&t(i[a])}(e),n}(t);e.element_path=r,e.positions=i.map((function(t){return\"\".concat(t)})),e.texts=a;var o=h(t);if(\"A\"===o.tagName&&(e.href=o.getAttribute(\"href\")),\"IMG\"===t.tagName){var u=t.getAttribute(\"src\");u&&0===u.trim().indexOf(\"data:\")&&(u=\"\"),e.src=u}return e.page_title=document.title,e.element_id=t.id,e.element_type=t.tagName,e}var p=function(){function e(n,r){var i=this;t(this,e),this.handler=function(t){var e=(t=i.getEvent(t)).target;if(!i.checkShouldTrackElement(e)||i.checkShouldIgnore(e))return;var n=i.getPositionData(e),r=i.getEventData(t,n),a=i.getElementData(e),o=i.getAllData(r,a,{element_width:Math.floor(n.element_width),element_height:Math.floor(n.element_height)});i.report(o)},this.info=n,this.autoTrack=r,this.listen()}return n(e,[{key:\"listen\",value:function(){this.autoTrack.root.addEventListener(this.info.eventType,this.handler,!0)}},{key:\"_checkShouldTrackElement\",value:function(t){return function(t){var e=window.innerHeight,n=window.innerWidth;if(1!==t.nodeType)return!1;if(function(t){for(var e=t.parentElement,n=!1;e;)\"svg\"===e.tagName.toLowerCase()?(e=null,n=!0):e=e.parentElement;return n}(t))return!1;if([\"HTML\",\"BODY\"].includes(t.tagName.toUpperCase()))return!1;var r=t;if(\"none\"===r.style.display)return!1;if(l(r))return!0;if(!function(t){if(t.children.length>0){var e=t.children;if([].slice.call(e).some((function(t){return t.children.length>0})))return!1;return!0}return!0}(r))return!1;if(r.clientHeight*r.clientWidth>.5*e*n)return!1;return!0}(t)}},{key:\"checkShouldTrackElement\",value:function(t){return!0}},{key:\"checkShouldIgnore\",value:function(t){return function(t){for(var e=t;e&&e.parentNode;){if(e.hasAttribute(\"data-tea-ignore\"))return!0;if(\"HTML\"===e.nodeName||\"body\"===e.nodeName)return!1;e=e.parentNode}return!1}(t)}},{key:\"getEvent\",value:function(t){return t}},{key:\"getEventData\",value:function(){var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{},e=arguments.length>1&&void 0!==arguments[1]?arguments[1]:{},n=t.clientX,r=t.clientY,i=e.left,a=e.top;return{touch_x:Math.floor(n-i),touch_y:Math.floor(r-a)}}},{key:\"getElementData\",value:function(t){return d(t)}},{key:\"getPositionData\",value:function(t){if(!t)return;var e=t.getBoundingClientRect(),n=e.width,r=e.height;return{left:e.left,top:e.top,element_width:n,element_height:r}}},{key:\"getAllData\",value:function(){var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{},e=arguments.length>1&&void 0!==arguments[1]?arguments[1]:{},n=arguments.length>2&&void 0!==arguments[2]?arguments[2]:{};return Object.assign(Object.assign(Object.assign(Object.assign({},t),e),n),{is_html:1,page_key:window.location.href})}},{key:\"report\",value:function(t){this.autoTrack.report(this.info.eventName,t)}},{key:\"destroy\",value:function(){this.autoTrack.root.removeEventListener(this.info.eventName,this.handler,!0),this.autoTrack=null}}]),e}(),v=function(e){r(o,e);var a=u(o);function o(e){var n;t(this,o),(n=a.call(this,{eventName:\"bav2b_page\"},e)).handler=function(t){if(n.checkHref())return;n._handler()},n._handler=function(){n.setHref();var t=n.getAllData();n.report(t)},n._listen();try{\"loading\"===document.readyState?document.addEventListener(\"DOMContentLoaded\",n._handler):setTimeout(n._handler)}catch(t){}return n}return n(o,[{key:\"listen\",value:function(){}},{key:\"_listen\",value:function(){var t=this;this._oldPushState=history.pushState,this._oldReplaceState=history.replaceState,history.pushState=function(){try{for(var e,n=arguments.length,r=new Array(n),i=0;i<n;i++)r[i]=arguments[i];return(e=t._oldPushState).call.apply(e,[history].concat(r))}finally{t._handler()}},history.replaceState=function(){try{for(var e,n=arguments.length,r=new Array(n),i=0;i<n;i++)r[i]=arguments[i];return(e=t._oldReplaceState).call.apply(e,[history].concat(r))}finally{t._handler()}},window.addEventListener(\"hashchange\",this.handler,!0),window.addEventListener(\"popstate\",this.handler,!0)}},{key:\"setHref\",value:function(t){this._currentHref=t||window.location.href}},{key:\"checkHref\",value:function(){return this._currentHref===window.location.href}},{key:\"getAllData\",value:function(){return Object.assign(Object.assign({},c(i(o.prototype),\"getAllData\",this).call(this)),{is_bav:1,page_key:this._currentHref,refer_page_key:document.referrer,page_title:document.title,page_path:this._currentHref,referrer_page_path:document.referrer})}},{key:\"destroy\",value:function(){window.removeEventListener(\"popstate\",this.handler,!0),window.removeEventListener(\"hashchange\",this.handler,!0),history.pushState=this._oldPushState,history.replaceState=this._oldReplaceState,this._oldPushState=null,this._oldReplaceState=null,this.autoTrack=null}}]),o}(p),g=function(e){r(o,e);var a=u(o);function o(e){return t(this,o),a.call(this,{eventType:\"click\",eventName:\"bav2b_click\"},e)}return n(o,[{key:\"checkShouldTrackElement\",value:function(t){return c(i(o.prototype),\"_checkShouldTrackElement\",this).call(this,t)}}]),o}(p),y=function(e){r(o,e);var a=u(o);function o(e){var n;return t(this,o),(n=a.call(this,{eventName:\"bav2b_click\"},e)).startHandler=function(t){var e=n.autoTrack.root,r=!1,i=function(){r=!0};e.addEventListener(\"touchmove\",i,!0),e.addEventListener(\"touchend\",(function t(a){r||n.handler(a),e.removeEventListener(\"touchmove\",i,!0),e.removeEventListener(\"touchend\",t,!0)}),!0)},n._listen(),n}return n(o,[{key:\"listen\",value:function(){}},{key:\"_listen\",value:function(){this.autoTrack.root.addEventListener(\"touchstart\",this.startHandler,!0)}},{key:\"getEvent\",value:function(t){return t.changedTouches[0]}},{key:\"checkShouldTrackElement\",value:function(t){if(!c(i(o.prototype),\"_checkShouldTrackElement\",this).call(this,t))return!1;if(\"input\"===t.nodeName.toLowerCase()&&[\"text\",\"password\",\"email\",\"tel\",\"number\",\"url\"].includes(t.type))return!1;return!0}},{key:\"destroy\",value:function(){this.autoTrack.root.removeEventListener(\"touchstart\",this.startHandler,!0),this.autoTrack=null}}]),o}(p),m=function(){function e(){t(this,e),this.version=\"1.2.1\",this.options={page:!1,touch:!1,click:!1},this.root=document,this.eventInstances=[],this.started=!1}return n(e,[{key:\"init\",value:function(t,e){this.options=Object.assign(Object.assign({},this.options),t),this.reportAdapter=e}},{key:\"start\",value:function(){if(this.started)return;this.started=!0;var t=this.options,e=t.page,n=t.click,r=t.touch;e&&this.eventInstances.push(new v(this)),n&&this.eventInstances.push(new g(this)),r&&this.eventInstances.push(new y(this))}},{key:\"stop\",value:function(){this.started=!1,this.eventInstances.forEach((function(t){return t.destroy()})),this.root=null}},{key:\"report\",value:function(){this.reportAdapter&&this.reportAdapter.apply(this,arguments)}}],[{key:\"getInstance\",value:function(){return e.instance||(e.instance=new e),e.instance}}]),e}();m.instance=null;var w,k,_;if(console.log(\"Winter Is Coming!\"),!window.TEAWebviewAutoTrack){var b=null,E=function(t){b||(b=window.TEANativeReport&&\"function\"==typeof window.TEANativeReport.postMessage?function(t){window.TEANativeReport.postMessage(t)}:window.TEANativeReport&&\"function\"==typeof window.TEANativeReport?function(t){window.TEANativeReport(t)}:window.webkit&&window.webkit.messageHandlers&&window.webkit.messageHandlers.TEANativeReport&&\"function\"==typeof window.webkit.messageHandlers.TEANativeReport.postMessage?function(t){window.webkit.messageHandlers.TEANativeReport.postMessage(t)}:function(t){}),b(t)},T=(w={page:!0,touch:!0,click:!1},k=function(){for(var t=arguments.length,e=new Array(t),n=0;n<t;n++)e[n]=arguments[n];var r=e[0],i=e[1],a=[{event:r,is_bav:1,local_time_ms:+new Date,params:i}];console.log(a[0]),E(JSON.stringify(a))},(_=m.getInstance()).init(w,k),_);T.start(),window.TEAWebviewAutoTrack=T}}();"

    .line 32
    .line 33
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const/4 v3, 0x0

    .line 44
    new-array v3, v3, [Ljava/lang/Object;

    .line 45
    .line 46
    const-string v4, "WebViewJsUtil \u5708\u9009"

    .line 47
    .line 48
    invoke-interface {v2, v1, v4, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-static {v0}, Lcom/bytedance/applog/util/WebViewJsUtil;->getJsCodeUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    invoke-static {p0, v0}, Lcom/bytedance/applog/util/WebViewJsUtil;->evaluateJavascript(Landroid/view/View;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public static injectNativeReportCallback(Landroid/view/View;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/bytedance/applog/util/WebViewJsUtil;->loggerTags:Ljava/util/List;

    .line 6
    .line 7
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "WebViewJsUtil add interface:TEANativeReport to: {}"

    .line 12
    .line 13
    invoke-interface {v0, v1, v3, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/bytedance/applog/util/WebViewJsUtil$h;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, v1}, Lcom/bytedance/applog/util/WebViewJsUtil$h;-><init>(Lcom/bytedance/applog/util/WebViewJsUtil$a;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "TEANativeReport"

    .line 23
    .line 24
    invoke-static {p0}, Lcom/bytedance/bdtracker/k4;->a(Landroid/view/View;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    const-string v3, "addJavascriptInterface"

    .line 36
    .line 37
    :try_start_1
    const-class v4, Ljava/lang/Object;

    .line 38
    .line 39
    const-class v5, Ljava/lang/String;

    .line 40
    .line 41
    filled-new-array {v4, v5}, [Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, "JavaScriptUtils"

    .line 63
    .line 64
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const/4 v2, 0x0

    .line 69
    new-array v2, v2, [Ljava/lang/Object;

    .line 70
    .line 71
    const-string v3, "addJavascriptInterface failed"

    .line 72
    .line 73
    invoke-interface {v0, v1, v3, p0, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    return-void
.end method

.method public static loadData(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/bytedance/bdtracker/k4;->a(Landroid/view/View;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    const-string v2, "loadData"

    .line 15
    .line 16
    :try_start_1
    filled-new-array {v0, v0, v0}, [Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    sget-object p2, Lcom/bytedance/applog/util/WebViewJsUtil;->loggerTags:Ljava/util/List;

    .line 38
    .line 39
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string p3, "Reflect loadData failed"

    .line 44
    .line 45
    invoke-interface {p1, p2, p3, p0}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method public static loadDataWithBaseURL(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/bytedance/bdtracker/k4;->a(Landroid/view/View;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    const-string v2, "loadDataWithBaseURL"

    .line 15
    .line 16
    :try_start_1
    filled-new-array {v0, v0, v0, v0, v0}, [Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    filled-new-array {p1, p2, p3, p4, p5}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    sget-object p2, Lcom/bytedance/applog/util/WebViewJsUtil;->loggerTags:Ljava/util/List;

    .line 38
    .line 39
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string p3, "Reflect loadDataWithBaseURL failed"

    .line 44
    .line 45
    invoke-interface {p1, p2, p3, p0}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method public static loadUrl(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/bytedance/bdtracker/k4;->a(Landroid/view/View;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const-string v1, "loadUrl"

    .line 13
    .line 14
    :try_start_1
    const-class v2, Ljava/lang/String;

    .line 15
    .line 16
    const-class v3, Ljava/util/Map;

    .line 17
    .line 18
    filled-new-array {v2, v3}, [Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    sget-object p2, Lcom/bytedance/applog/util/WebViewJsUtil;->loggerTags:Ljava/util/List;

    .line 40
    .line 41
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string v0, "Reflect loadUrl failed"

    .line 46
    .line 47
    invoke-interface {p1, p2, v0, p0}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method public static sendWebClick(Ljava/lang/String;)V
    .locals 8

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    move v1, p0

    .line 8
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ge v1, v2, :cond_4

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "event"

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v4, "local_time_ms"

    .line 25
    .line 26
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const-string v5, "is_bav"

    .line 31
    .line 32
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    const/4 v6, 0x1

    .line 37
    if-ne v5, v6, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    move v6, p0

    .line 41
    :goto_1
    const-string v5, "params"

    .line 42
    .line 43
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    const-string v5, "page_path"

    .line 50
    .line 51
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    goto :goto_2

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_3

    .line 58
    :cond_1
    const-string v5, ""

    .line 59
    .line 60
    :goto_2
    :try_start_1
    const-string v7, "about:blank"

    .line 61
    .line 62
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_2

    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-nez v5, :cond_3

    .line 74
    .line 75
    new-instance v5, Lcom/bytedance/applog/util/WebViewJsUtil$f;

    .line 76
    .line 77
    invoke-direct {v5, v3, v4, v6, v2}, Lcom/bytedance/applog/util/WebViewJsUtil$f;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)V

    .line 78
    .line 79
    .line 80
    sget-object v2, Lcom/bytedance/bdtracker/b;->a:Lcom/bytedance/bdtracker/b$e;

    .line 81
    .line 82
    invoke-static {v5, v2}, Lcom/bytedance/bdtracker/b;->a(Lcom/bytedance/bdtracker/b$f;Lcom/bytedance/bdtracker/b$e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    .line 85
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :goto_3
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    sget-object v1, Lcom/bytedance/applog/util/WebViewJsUtil;->loggerTags:Ljava/util/List;

    .line 93
    .line 94
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    const-string v2, "sendWebClick failed"

    .line 99
    .line 100
    invoke-interface {v0, v1, v2, p0}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :cond_4
    return-void
.end method
