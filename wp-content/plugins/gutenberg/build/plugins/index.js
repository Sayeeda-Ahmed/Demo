window.wp=window.wp||{},window.wp.plugins=function(e){var t={};function n(r){if(t[r])return t[r].exports;var o=t[r]={i:r,l:!1,exports:{}};return e[r].call(o.exports,o,o.exports,n),o.l=!0,o.exports}return n.m=e,n.c=t,n.d=function(e,t,r){n.o(e,t)||Object.defineProperty(e,t,{enumerable:!0,get:r})},n.r=function(e){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},n.t=function(e,t){if(1&t&&(e=n(e)),8&t)return e;if(4&t&&"object"==typeof e&&e&&e.__esModule)return e;var r=Object.create(null);if(n.r(r),Object.defineProperty(r,"default",{enumerable:!0,value:e}),2&t&&"string"!=typeof e)for(var o in e)n.d(r,o,function(t){return e[t]}.bind(null,o));return r},n.n=function(e){var t=e&&e.__esModule?function(){return e.default}:function(){return e};return n.d(t,"a",t),t},n.o=function(e,t){return Object.prototype.hasOwnProperty.call(e,t)},n.p="",n(n.s=565)}({0:function(e,t){e.exports=window.wp.element},14:function(e,t){e.exports=window.wp.compose},19:function(e,t,n){"use strict";function r(e){if(void 0===e)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return e}n.d(t,"a",(function(){return r}))},2:function(e,t){e.exports=window.lodash},23:function(e,t,n){"use strict";function r(e){return(r=Object.setPrototypeOf?Object.getPrototypeOf:function(e){return e.__proto__||Object.getPrototypeOf(e)})(e)}n.d(t,"a",(function(){return r}))},28:function(e,t,n){"use strict";function r(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}n.d(t,"a",(function(){return r}))},29:function(e,t,n){"use strict";function r(e,t){for(var n=0;n<t.length;n++){var r=t[n];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(e,r.key,r)}}function o(e,t,n){return t&&r(e.prototype,t),n&&r(e,n),e}n.d(t,"a",(function(){return o}))},32:function(e,t,n){"use strict";n.d(t,"a",(function(){return o}));var r=n(60);function o(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function");e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,writable:!0,configurable:!0}}),t&&Object(r.a)(e,t)}},33:function(e,t,n){"use strict";n.d(t,"a",(function(){return u}));var r=n(45),o=n(19);function u(e,t){return!t||"object"!==Object(r.a)(t)&&"function"!=typeof t?Object(o.a)(e):t}},35:function(e,t){e.exports=window.wp.hooks},45:function(e,t,n){"use strict";function r(e){return(r="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(e){return typeof e}:function(e){return e&&"function"==typeof Symbol&&e.constructor===Symbol&&e!==Symbol.prototype?"symbol":typeof e})(e)}n.d(t,"a",(function(){return r}))},5:function(e,t,n){"use strict";function r(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}n.d(t,"a",(function(){return r}))},565:function(e,t,n){"use strict";n.r(t),n.d(t,"PluginArea",(function(){return z})),n.d(t,"withPluginContext",(function(){return m})),n.d(t,"registerPlugin",(function(){return E})),n.d(t,"unregisterPlugin",(function(){return _})),n.d(t,"getPlugin",(function(){return C})),n.d(t,"getPlugins",(function(){return k}));var r=n(28),o=n(29),u=n(19),i=n(32),c=n(33),l=n(23),a=n(0),s=n(2),f=n(78),p=n.n(f),g=n(35),b=n(9),d=n(14),y=Object(a.createContext)({name:null,icon:null}),v=y.Consumer,O=y.Provider,m=function(e){return Object(d.createHigherOrderComponent)((function(t){return function(n){return Object(a.createElement)(v,null,(function(r){return Object(a.createElement)(t,Object(b.a)({},n,e(r,n)))}))}}),"withPluginContext")},j=n(5),h=n(45),w=n(7),P=Object(a.createElement)(w.SVG,{xmlns:"http://www.w3.org/2000/svg",viewBox:"0 0 24 24"},Object(a.createElement)(w.Path,{d:"M10.5 4v4h3V4H15v4h1.5a1 1 0 011 1v4l-3 4v2a1 1 0 01-1 1h-3a1 1 0 01-1-1v-2l-3-4V9a1 1 0 011-1H9V4h1.5zm.5 12.5v2h2v-2l3-4v-3H8v3l3 4z"}));function x(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,r)}return n}var S={};function E(e,t){if("object"!==Object(h.a)(t))return console.error("No settings object provided!"),null;if("string"!=typeof e)return console.error("Plugin name must be string."),null;if(!/^[a-z][a-z0-9-]*$/.test(e))return console.error('Plugin name must include only lowercase alphanumeric characters or dashes, and start with a letter. Example: "my-plugin".'),null;S[e]&&console.error('Plugin "'.concat(e,'" is already registered.'));var n=t=Object(g.applyFilters)("plugins.registerPlugin",t,e),r=n.render,o=n.scope;if(!Object(s.isFunction)(r))return console.error('The "render" property must be specified and must be a valid function.'),null;if(o){if("string"!=typeof o)return console.error("Plugin scope must be string."),null;if(!/^[a-z][a-z0-9-]*$/.test(o))return console.error('Plugin scope must include only lowercase alphanumeric characters or dashes, and start with a letter. Example: "my-page".'),null}return S[e]=function(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?x(Object(n),!0).forEach((function(t){Object(j.a)(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):x(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}({name:e,icon:P},t),Object(g.doAction)("plugins.pluginRegistered",t,e),t}function _(e){if(S[e]){var t=S[e];return delete S[e],Object(g.doAction)("plugins.pluginUnregistered",t,e),t}console.error('Plugin "'+e+'" is not registered.')}function C(e){return S[e]}function k(e){return Object.values(S).filter((function(t){return t.scope===e}))}var z=function(e){Object(i.a)(b,e);var t,n,f=(t=b,n=function(){if("undefined"==typeof Reflect||!Reflect.construct)return!1;if(Reflect.construct.sham)return!1;if("function"==typeof Proxy)return!0;try{return Date.prototype.toString.call(Reflect.construct(Date,[],(function(){}))),!0}catch(e){return!1}}(),function(){var e,r=Object(l.a)(t);if(n){var o=Object(l.a)(this).constructor;e=Reflect.construct(r,arguments,o)}else e=r.apply(this,arguments);return Object(c.a)(this,e)});function b(){var e;return Object(r.a)(this,b),(e=f.apply(this,arguments)).setPlugins=e.setPlugins.bind(Object(u.a)(e)),e.memoizedContext=p()((function(e,t){return{name:e,icon:t}})),e.state=e.getCurrentPluginsState(),e}return Object(o.a)(b,[{key:"getCurrentPluginsState",value:function(){var e=this;return{plugins:Object(s.map)(k(this.props.scope),(function(t){var n=t.icon,r=t.name;return{Plugin:t.render,context:e.memoizedContext(r,n)}}))}}},{key:"componentDidMount",value:function(){Object(g.addAction)("plugins.pluginRegistered","core/plugins/plugin-area/plugins-registered",this.setPlugins),Object(g.addAction)("plugins.pluginUnregistered","core/plugins/plugin-area/plugins-unregistered",this.setPlugins)}},{key:"componentWillUnmount",value:function(){Object(g.removeAction)("plugins.pluginRegistered","core/plugins/plugin-area/plugins-registered"),Object(g.removeAction)("plugins.pluginUnregistered","core/plugins/plugin-area/plugins-unregistered")}},{key:"setPlugins",value:function(){this.setState(this.getCurrentPluginsState)}},{key:"render",value:function(){return Object(a.createElement)("div",{style:{display:"none"}},Object(s.map)(this.state.plugins,(function(e){var t=e.context,n=e.Plugin;return Object(a.createElement)(O,{key:t.name,value:t},Object(a.createElement)(n,null))})))}}]),b}(a.Component)},60:function(e,t,n){"use strict";function r(e,t){return(r=Object.setPrototypeOf||function(e,t){return e.__proto__=t,e})(e,t)}n.d(t,"a",(function(){return r}))},7:function(e,t){e.exports=window.wp.primitives},78:function(e,t,n){e.exports=function(e,t){var n,r,o=0;function u(){var u,i,c=n,l=arguments.length;e:for(;c;){if(c.args.length===arguments.length){for(i=0;i<l;i++)if(c.args[i]!==arguments[i]){c=c.next;continue e}return c!==n&&(c===r&&(r=c.prev),c.prev.next=c.next,c.next&&(c.next.prev=c.prev),c.next=n,c.prev=null,n.prev=c,n=c),c.val}c=c.next}for(u=new Array(l),i=0;i<l;i++)u[i]=arguments[i];return c={args:u,val:e.apply(null,u)},n?(n.prev=c,c.next=n):r=c,o===t.maxSize?(r=r.prev).next=null:o++,n=c,c.val}return t=t||{},u.clear=function(){n=null,r=null,o=0},u}},9:function(e,t,n){"use strict";function r(){return(r=Object.assign||function(e){for(var t=1;t<arguments.length;t++){var n=arguments[t];for(var r in n)Object.prototype.hasOwnProperty.call(n,r)&&(e[r]=n[r])}return e}).apply(this,arguments)}n.d(t,"a",(function(){return r}))}});