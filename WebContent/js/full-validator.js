(function(ns){
	
	Request.XML = new Class({
		Extends: Request,
		success: function(text, xml){
			if(Browser.Features.xpath) {
				xml.selectNodes = function(xpath){
					var nodes = [], node;	
					var result = xml.evaluate(xpath, this, this.createNSResolver(xml.documentElement), XPathResult.ORDERED_NODE_ITERATOR_TYPE, null) ;
					if (result) while(node = result.iterateNext()) nodes.push(node);
					return nodes;
				};	
				xml.selectSingleNode = function(xpath){
					var result = xml.evaluate(xpath, this, this.createNSResolver(xml.documentElement), 9, null);
					return (result && result.singleNodeValue) ? result.singleNodeValue : [];
				};
			}
			this.onSuccess(xml, text);
		}
	});
	
	ns.contains = function(v, or){
		v = $splat(v); or = $pick(or, true);
		for(var result = false, i = 0, l = v.length; i < l; i ++){
			result = ((this & v[i]) == v[i]);
			if(result && or || !result && !or) break;
		}
		return result;
	};

	ns.trim = {
		all : function(txt){return (txt || this).replace(/(^[ \s]+)|([ \s]+$)/g, '');},
		left : function(txt){return (txt || this).replace(/^[ \s]+/, '');},
		right : function(txt){return (txt || this).replace(/[ \s]+$/, '');}
	};
	
	ns.isDateTime = function(format, reObj){
		format = format || 'yyyy-MM-dd';
		var input = this, o = {}, d = new Date();
		var f1 = format.split(/[^a-z]+/gi), f2 = input.split(/\D+/g), f3 = format.split(/[a-z]+/gi), f4 = input.split(/\d+/g);
		var len = f1.length, len1 = f3.length;
		if(len != f2.length || len1 != f4.length) return false;
		for(var i = 0; i < len1; i ++)if(f3[i] != f4[i]) return false;
		for(var i = 0; i < len; i ++) o[f1[i]] = f2[i];
		o.yyyy = s(o.yyyy, o.yy, d.getFullYear(), 9999, 4);
		o.MM = s(o.MM, o.M, d.getMonth() + 1, 12);
		o.dd = s(o.dd, o.d, d.getDate(), 31);
		o.hh = s(o.hh, o.h, d.getHours(), 24);
		o.mm = s(o.mm, o.m, d.getMinutes());
		o.ss = s(o.ss, o.s, d.getSeconds());
		o.ms = s(o.ms, o.ms, d.getMilliseconds(), 999, 3);
		if(o.yyyy + o.MM + o.dd + o.hh + o.mm + o.ss + o.ms < 0) return false;
		if(o.yyyy < 100) o.yyyy += (o.yyyy > 30 ? 1900 : 2000);
		d = new Date(o.yyyy, o.MM - 1, o.dd, o.hh, o.mm, o.ss, o.ms);
		var reVal = d.getFullYear() == o.yyyy && d.getMonth() + 1 == o.MM && d.getDate() == o.dd && d.getHours() == o.hh && d.getMinutes() == o.mm && d.getSeconds() == o.ss && d.getMilliseconds() == o.ms;
		return reVal && reObj ? d : reVal;
		function s(s1, s2, s3, s4, s5){
			s4 = s4 || 60, s5 = s5 || 2;
			var reVal = s3;
			if(s1 != undefined && s1 != '' || !isNaN(s1)) reVal = s1 * 1;
			if(s2 != undefined && s2 != '' && !isNaN(s2)) reVal = s2 * 1;
			return (reVal == s1 && s1.length != s5 || reVal > s4) ? -10000 : reVal;
		}
	};
	
	var $properties = "accept,action,as,code,depend,elements,empty,expression,for,format,max,maxElement,min,minElement,operator,options,pass,pattern,prop,regex,require,rule,tips,to,toElement,trim,warn".split(',');

	var $triggers = {
		submit : 1,
		blur : 2,
		any : 3
	};

	var $regexs = {
		require : /.+/,
		email : /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/,
		phone : /^((\(\d{2,3}\))|(\d{3}\-))?(\(0\d{2,3}\)|0\d{2,3}-)?[1-9]\d{6,7}(\-\d{1,4})?$/,
		mobile : /^((\(\d{2,3}\))|(\d{3}\-))?((13\d{9})|(15[389]\d{8}))$/,
		url : /^http:\/\/[A-Za-z0-9]+\.[A-Za-z0-9]+[\/=\?%\-&_~`@[\]\':+!]*([^<>\"])*$/,
		ip : /^(0|[1-9]\d?|[0-1]\d{2}|2[0-4]\d|25[0-5]).(0|[1-9]\d?|[0-1]\d{2}|2[0-4]\d|25[0-5]).(0|[1-9]\d?|[0-1]\d{2}|2[0-4]\d|25[0-5]).(0|[1-9]\d?|[0-1]\d{2}|2[0-4]\d|25[0-5])$/,
		currency : /^\d+(\.\d+)?$/,
		number : /^\d+$/,
		zip : /^[1-9]\d{5}$/,
		qq : /^[1-9]\d{4,8}$/,
		english : /^[A-Za-z]+$/,
		chinese :  /^[\u0391-\uFFE5]+$/,
		username : /^[a-z]\w{3,19}$/i,
		integer : /^[-\+]?\d+$/,
		'double' : /^[-\+]?\d+(\.\d+)?$/
	};
	
	var util = {
		numberFilter : function(input){
			return input.replace(/\D/g, '');
		},
		ipFix : function(input){
			return $regexs.ip.test(input)?input.replace(/([^\d])(\d{1,2})(?=\.|\b)/g, '$100$2') : false;
		},
		comma : /\s*[,£¬]\s*/
	};
	
	var AbstractMessenger = new Class({
		Implements : Options,
		options : {
			warn : null,
			tips : null,
			pass : null,
			remote : null
		},
		initialize : function(form, options){
			this.form = form;
			this.setOptions(options);
			this.bound = {
				'onSuccess' : this.showPass.bind(this),
				'onFailure' : this.showWarn.bind(this),
				'onTips' : this.showTips.bind(this)
			};
			if (this.options.initialize) this.options.initialize.call(this);
		},
		showWarn : function(o){this.process(o, 'warn');},
		showTips : function(o){o.element.title = this.chk(o, 'tips') ? o.options.tips : '';},
		showPass : function(o){if(o !== this.form) this.process(o, 'pass');},
		process : function(o, key){},
		chk : function(o, key){return o.options && o.options[key] && o.options[key] != ''}
	});
	
	ns.FollowMessenger = new Class({
		Extends : AbstractMessenger,
		options : {
			warn : 'msg block',
			tips : 'msg tips',
			remote : 'msg loading',
			pass : 'msg pass',
			blur : 'msg'
		},
		initialize : function(form, options){
			arguments.callee.parent(form, options);
			this.bound.onRemote = this.showRemote.bind(this);
		},
		showTips : function(o, isBlur){if(o !== this.form && this.chk(o, 'tips')) o.getMessagePanel().setProperties({html : o.options.tips, 'class' : this.options[isBlur ? 'blur' : 'tips']});},
		showRemote : function(o){o.getMessagePanel().setProperties({html : '\u6b63\u5728\u8fdc\u7a0b\u9a8c\u8bc1\uff0c\u8bf7\u7a0d\u5019...', 'class' : this.options.remote}).setStyle('visibility', 'visible');},
		process : function(o, key){
			$splat(o).each(function(e){
				var msg = e.getMessage();
				e.getMessagePanel().setProperties({html : msg, 'class' : this.options[key]}).setStyle('visibility', msg && msg != '' ? 'visible' : 'hidden');
			}.bind(this));
		}
	});
	
		
	ns.ColorMessenger = new Class({
		Extends : AbstractMessenger,
		options : {
			warn : 'red',
			pass : 'green'
		},
		process : function(o, key){
			$splat(o).each(function(e){
				e.element.setStyle('color', this.options[key]).title = e.getMessage();
			}.bind(this));
		}
	});
	
		
	ns.ClassMessenger = new Class({
		Extends : AbstractMessenger,
		options : {
			warn : 'style-warn',
			pass : 'style-pass'
		},
		process : function(o, key){
			var ops = this.options;
			$splat(o).each(function(e){
				e.element.removeClass(ops.warn).removeClass(ops.pass).addClass(ops[key]).title = e.getMessage();
			});
		}
	});

	ns.TipsMessenger = new Class({
		Extends : AbstractMessenger,
		options : {
			offset : {x : 0, y : 0},
			'class' : 'tooltips'
		},
		showTips : function(o, isBlur){
			if(o === this.form || !this.chk(o, 'tips')) return;
			if(isBlur) {this.getDialog().setStyle('visibility', 'hidden');return;}
			var ops = this.options, pos = o.element.getPosition();
			var height = this.getDialog().set('html', o.options.tips).offsetHeight;
			this.dialog.setStyles({left : pos.x + ops.offset.x, top : pos.y + ops.offset.y - height, visibility : 'visible'}).addClass(ops.tips || '');
		},
		showPass : function(){this.getDialog().setStyle('visibility', 'hidden');},
		getDialog : function(){
			return this.dialog = this.dialog || new Element('div', {'class' : this.options['class']}).inject(this.form.getForm());
		},
		process : function(o, key){
			var ops = this.options,o = $splat(o)[0];
			var pos = o.element.getPosition();
			var height = this.getDialog().set('html', o.getMessage()).offsetHeight;
			this.dialog.setStyles({left : pos.x + ops.offset.x, top : pos.y + ops.offset.y - height, visibility : 'visible'}).addClass(ops[key] || '');
		}
	});
	
	ns.AlertMessenger = new Class({
		Extends : AbstractMessenger,
		options : { showOne : false},
		showPass : function(o){
			if(o !== this.form) o.element.title = this.chk(o, 'pass') ? o.options.pass : '';
		},
		process : function(o, key){
			if(o.length){
				var warns = [this.form.options.title];
				o.each(function(e, i){
					warns.push((i + 1) + '.' + e.getMessage());
					e.element.title = e.getMessage();
				});
				alert(warns.join('\n'));
			} else {
				if(this.options.showOne) alert(o.getMessage());
				o.element.title = o.getMessage();
			}
		}
	});
	
	ns.SummaryMessenger = new Class({
		Extends : AbstractMessenger,
		options : {id : ''},
		showPass : function(o){
			if(o !== this.form) {if(this.chk(o, 'pass')) o.element.title = o.options.pass;}
			else $(o.options.summary).setStyle('display', '');
		},
		process : function(o){
			if(o.length){
				var warns = ['<div class="title">' + this.form.options.title + '</div><ol>'];
				o.each(function(e, i){
					warns.push('<li>' + e.getMessage() + '</li>');
					e.element.title = e.getMessage();
				});
				$(this.options.id).setStyle('display', 'block').set('html', warns.join('') + '</ol>');
			}
		}
	});
	
	var AbstractReader = new Class({
		Implements : [Events, Options],
		options : {
			wait : true
		},
		initialize : function(form, options){
			this.form = form;
			this.setOptions(options);
			if (this.options.initialize) this.options.initialize.call(this);
			if(this.options.wait) window.addEvent('domready', this.read.bind(this));
			else this.read();
		},
		read : function(){},
		fill : function(){}
	});
	
	ns.AttributeReader = new Class({
		Extends : AbstractReader,
		read : function(){
			this.form.getForm().getElements('input[rule], select[rule], textarea[rule]', true).each(function(el){
				if (!el.name || el.disabled) return;
				this.fill(el);
			}.bind(this));
		},
		fill : function(el){
			this.form.addElement(ns.Factory.Element.build(ns.Factory.Element.getAttributes(el)));
		}
	});
	
	ns.TagReader = new Class({
		Extends : AbstractReader,
		options : {
			ns : 'ui',
			name : 'v'
		},
		initialize : function(form, options){
			this.setNS(options.ns || this.options.ns);
			arguments.callee.parent(form, options);
		},
		getTag : function(){
			var ops = this.options;
			return (ops.ns == '' || Browser.Engine.trident) ? ops.name : ops.ns + ':' + ops.name;
		},
		setNS : function(ns){
			if(Browser.Engine.trident) document.namespaces.add(ns, 'http://wfsr.net');
			else document.documentElement.setAttribute('xmlns:' + ns, 'http://wfsr.net');
		},
		read : function(){
			var ops = this.options;
			$A(this.form.getForm().getElementsByTagName(this.getTag())).each(function(el, i){
				if (!el.getAttribute('for')) return;
				this.fill(el);
			}.bind(this));
		},
		fill : function(el){
			var  options = ns.Factory.Element.getAttributes(el);
			options.holder = el;
			options.element = this.form.getFormItem(options['for']);
			this.form.addElement(ns.Factory.Element.build(options));
		}
	});
	
	ns.JsonReader = new Class({
		Extends : AbstractReader,
		options : {
			wait : false,
			url : 'rules/validation.js',
			as : 'JSON'
		},
		read : function(){
			var self = this;
			if(!Request[this.options.as]) return;
			var request = new Request[this.options.as]({url: this.options.url, onSuccess : function(data){
				window.addEvent('domready', self.wait.bind(self, data));
				request = null;
			}}).get();
		},
		wait : function(json){
			var self = this;
			json.rules.each(function(rule){
				if (!rule['for']) return;
				self.fill(rule);
			});
		},
		fill : function(rule){
			rule.element = this.form.getFormItem(rule['for']);
			this.form.addElement(ns.Factory.Element.build(rule));
		}
	});
	
	ns.XmlReader = new Class({
		Extends : ns.JsonReader,
		options : {
			url : 'rules/validation.xml',
			xpath : {name : 'demo', path : '/validator/index.html'},
			as : 'XML'
		},
		getXPath : function(){
			var ops = this.options;
			return $type(ops.xpath) == 'string' ? ops.xpath : '//form[@name="' + ops.xpath.name + '" and @path="' + ops.xpath.path + '"]/item';
		},
		wait : function(xml){
			var nodes = xml.selectNodes(this.getXPath()), o;
			for(var i = 0, l = nodes.length; i < l; i ++){
				if (!nodes[i].getAttribute('for')) continue;
				o = ns.Factory.Element.getAttributes(nodes[i]);
				if(nodes[i].getAttribute('apply')) o = $merge(ns.Factory.Element.getAttributes(xml.selectSingleNode(nodes[i].getAttribute('apply'))), o);
				if(o.rule) this.fill(o);
			};
		}
	});

		
	var Validator = ns.Validator = {
		forms : {},
		setup : function(options){
			var form = new ns.Form(options);
			this.forms[options.form] = form;
			return form;
		},
		validate : function(options){
		},
		registerElement : function(className, prototype, autoInherit){
			if(autoInherit !== false) prototype.Extends = AbstractElement;
			ns.ExtendElements[className] = new Class(prototype);
		},
		registerRegex : function(key, regex){
			$regexs[key] = regex;
		},
		registerProperty : function(){
			for(var i = 0, l = arguments.length, ps = $properties.join(','); i < l; i ++) if(!ps.contains(arguments[i], ',')) $properties.push(arguments[i]);
		},
		registerReader : function(className, prototype, autoInherit){
			if(autoInherit !== false) prototype.Extends = AbstractReader;
			ns.ExtendReaders[className] = new Class(prototype);
		},
		registerMessenger : function(className, prototype, autoInherit){
			if(autoInherit !== false) prototype.Extends = AbstractMessenger;
			ns.ExtendMessengers[className] = new Class(prototype);
		},
		toString : function(){return ['Version: 4.0.0 beta', 'Author: \u6211\u4f5b\u5c71\u4eba', 'Email: wfsr-at-msn.com'].join('\n');}
	};
	
	ns.Factory = {
		Element : {
			build : function(o){
				var element, rule = o.rule.capitalize().replace(/Element$/, '') + 'Element';
				return new ($pick(ns[rule], ns.ExtendElements[rule], ns.RegexElement))(o);
			},
			getAttributes : function(el){
				var options = {element : el};
				$properties.each(function(prop){
					if(el.getAttribute(prop)) options[prop] = el.getAttribute(prop);
				});
				return options;
			}
		},
		Messenger : {
			build : function(name, form, options){
				name = name.capitalize().replace(/Messenger$/, '') + 'Messenger';
				return new ($pick(ns[name], ns.ExtendMessengers[name]))(form, options);
			}
		},
		Reader : {
			build : function(name, form, options){
				name = name.capitalize().replace(/Reader$/, '') + 'Reader';
				return new ($pick(ns[name], ns.ExtendReaders[name]))(form, options);
			}
		}
	};
	
	ns.Form = new Class({
		Implements : [Events, Options],
		options : {
			form : null,
			configs : 'tag',
			triggers : 'submit, blur',
			warns : 'follow',
			step : false,
			wait : false,
			title : '\u63d0\u4ea4\u5931\u8d25\uff0c\u8bf7\u6309\u4ee5\u4e0b\u63d0\u793a\u68c0\u67e5\u60a8\u7684\u8f93\u5165\uff1a',
			ignoreOldEvent : true,
			events : null/*,
			onTips : $empty,
			onRemote : $empty,
			onSuccess : $empty,
			onFailure : $empty*/
		},
		initialize : function(options){
			this.isValid = false;
			this.elements = [];
			this.invalids = [];
			this.batch = false;
			this.setOptions(options);
			this.initMessenger();
			this.parseEnmValue('triggers', $triggers);
			this.bound = {onTips : this.tips.bind(this), onRemote : this.remote.bind(this), onFailure : this.failure.bind(this), onSuccess : this.success.bind(this)};
			if (this.options.initialize) this.options.initialize.call(this);
			if(this.options.wait) window.addEvent('domready', this.loadConfigs.bind(this));
			else this.loadConfigs();
		},
		validate : function(){
			this.invalids.empty();
			this.batch = true;
			for(var i = 0, l = this.elements.length; i < l; i ++) if(!this.elements[i].validate() && this.options.step) break;
			(this.isValid = this.invalids.length == 0) ? this.fireEvent('onSuccess', this) : this.fireEvent('onFailure', [this.invalids]);
			this.batch = false;
			return this.isValid;
		},
		tips : function(el, isBlur){
			this.fireEvent('onTips', [el, isBlur]);
		},
		remote : function(el){
			this.fireEvent('onRemote', el);
		},
		success : function(el){
			this.fireEvent('onSuccess', el);
		},
		failure : function(el){
			this.invalids.include(el);
			if(this.options.step || !this.batch) this.fireEvent('onFailure', el);
		},
		initMessenger : function(){
			var self = this;
			this.options.warns.split(util.comma).each(function(warn){
				warn = warn.trim().toLowerCase();
				var messenger = ns.Factory.Messenger.build(warn, self, self.options[warn] || {});
				if(messenger)  self.addEvents(messenger.bound);
			});
		},
		loadConfigs : function(){
			var self = this;
			this.options.configs.split(util.comma).each(function(config, i){
				config = config.trim().toLowerCase();
				ns.Factory.Reader.build(config, self, self.options[config] || {});
			});
			if(Browser.loaded) this._add();
			else window.addEvent('domready', this._add.bind(this));
		},
		getForm : function(){
			if(!this.form){
				this.form = $(this.options.form);
				if(ns.contains.call(this.options.triggers, $triggers.submit)){
					if(this.options.ignoreOldEvent){
						this.form.removeProperty('onsubmit');
						this.form.onsubmit = null;
					} else {
						var oldEvent = this.form.onsubmit;
					}
					this.form.addEvent('submit', function(){
						if(oldEvent) oldEvent();
						return this.validate();
					}.bind(this));
				}
			}
			return this.form;
		},
		getFormItem : function(name){
			var items = this.getForm().getElements('[name=' + name + ']');
			return items.length ? items[items.length - 1] : $(name);
		},
		addElement : function(options){
			var ops = this.options;
			var element = options;
			this.elements.push(element);
			element.addEvents(this.bound);
			if(ops.events && ops.events[element.element.name]) element.addEvents(ops.events[element.element.name]);
			element.attach(ns.contains.call(ops.triggers, $triggers.blur));
		},
		add : function(o){
			if(!Browser.loaded) {
				this.rules = this.rules || [];
				this.rules.push(o);
			} else {
				if(!o.validate) o = ns.Factory.Element.build(o);
				this.addElement(o);
			}
			return this;
		},
		_add : function(){
			if(!this.rules)return;
			for(var i = 0, l = this.rules.length; i < l; i ++) this.add(this.rules[i]);
			this.rules.empty();
			this.rules = null;
			delete this.rules;
		},
		parseEnmValue : function(prop, enums){
			var ops = this.options;
			if(typeof(ops[prop]) == 'string'){
				var properties = ops[prop];
				ops[prop] = 0;
				properties.replace(/\s/g, '').split(',').each(function(key){
					ops[prop] |= enums[key] || 0;
				});
				ops[prop] = ops[prop] || 1;
			}
		}
	});
	
	var AbstractElement = new Class({
		Implements : [Events, Options],
		options : {
			element : null,
			trim : 'all',
			depend : false,
			require : true,
			warn : null,
			tips : null,
			empty : null,
			pass : null,
			action : null/*,
			onTips : $empty,
			onRemote : $empty,
			onSuccess : $empty,
			onFailure : $empty*/
		},
		initialize : function(options){
			this.isValid = false;
			this.setOptions(options);
			this.options.require = this.toBoolean(this.options.require);
			this.element = $(this.options.element || this.options['for']);
			delete this.options.element;
			if (this.options.initialize) this.options.initialize.call(this);
		},
		attach  : function(validateOnBlur){
			this.bound = {focus : this.focus.bind(this), 'blur' : this.blur.bind(this, validateOnBlur)};
			if(Browser.Engine.webkit && this.element.type == 'file') {this.bound.change = this.bound.blur;delete this.bound.blur;}
			this.getMessagePanel();
			this.fireEvent('onTips', [this, true]);
			this.element.addEvents(this.bound);
		},
		focus : function(){
			this.fireEvent('onTips', this);
		},
		blur : function(validate){
			if(!validate) {this.fireEvent('onTips', [this, true]);return;}
			this.validate();
		},
		beforeRemote : function(){},
		afterRemote : function(json){
			this.isValid = (json.state == 1);
			this.$json = json;
			this.$value = this.value;
			this.fireEvent(this.isValid ? 'onSuccess' : 'onFailure', this);			
		},
		remoteValidate : function(){
			if(this.isValid && this.isRemote() && this.value != (this.$value || '')) {
				this.params = {};
				this.params[this.element.name] = this.value;
				this.fireEvent('onRemote', this);
				var remote = new Request.JSON({url:this.options.action, onSuccess : function(json){
					this.afterRemote(json);
					remote = null;
				}.bind(this),
				onFailure : function(){
					this.afterRemote({state : 1, message : '\u62b1\u6b49\uff0c\u8fdc\u7a0b\u8fde\u63a5\u51fa\u9519\uff0c\u4f46\u662f\u60a8\u53ef\u4ee5\u6b63\u5e38\u63d0\u4ea4\u672c\u9879'});
					remote = null;
				}.bind(this)}
				).post(this.params);
			}
		},
		success  : function(){
			if(this.options.require || this.value != '') {
				this.fireEvent('onSuccess', this);
			}
		},
		failure  :  function(){
			this.fireEvent('onFailure', this);
		},
		getValue : function(){
			return this.trim(this.element.get('value') || '');
		},
		getMessage : function(){
			return (this.$json ? this.$json.message : this.options[this.isValid ? 'pass' : (this.value === '' ? 'empty' : 'warn')]) || '\28\u672a\u914d\u7f6e\u63d0\u793a\u4fe1\u606f\29';
		},
		trim : function(text){
			var fn = ns.trim[this.options.trim];
			return fn ? fn.call(text) : text;
		},
		getMessagePanel : function(){
			if(!this.panel && !(this.panel = $(this.element.name + '_message'))){
				this.panel = new Element('div', { id : this.element.name + '_message'});
				if(this.options.holder) this.panel.injectBefore($(this.options.holder));
				else this.panel.injectAfter(this.element);
			}
			return this.panel;
		},
		validate : function(){
			if(this.element.disabled) return true;
			var ops = this.options;
			this.value = this.getValue();
			if(!(this.$value != undefined && this.value == this.$value)){
				if(ops.depend){try{eval(ops.depend);}catch(e){alert(e);}};
				this.isValid = !ops.require && this.value == '';
				if(!this.isValid){
						this.$json = null;
						this.isValid = this.process();
						if(this.isValid && this.isRemote()) this.remoteValidate();
				}
			}
			this.$value = this.value;
			this.isValid ? this.success() : this.failure();
			return this.isValid;
		},
		isRemote : function(){
			return this.options.action && this.options.action != '';
		},
		process : function(){
			return false;
		},
		toBoolean : function(i){
			return i === true || i === false ? i : 'no,0,false'.indexOf(i.toString().toLowerCase()) == -1;
		}
	});

	ns.RegexElement = new Class({
		Extends : AbstractElement,
		options : {
			pattern : null,
			options : ''
		},
		process : function(){
			this.pattern = this.options.pattern && new RegExp(this.options.pattern, this.options.options) || $regexs[this.options.rule];
			return this.pattern != null && this.pattern.test(this.value);
		}
	});
	
	ns.PasswordElement = new Class({
		Extends : AbstractElement,
		options : {
			level : 2/*,
			onLevelChange : $empty*/
		},
		initialize : function(options){
			arguments.callee.parent(options);
			this.element.addEvent('keyup', this.checkLevel.bind(this));
			this.level = 0;
		},
		checkLevel : function(){
			this.value = this.getValue();
			this.getLevel();
		},
		getLevel : function(){
			var v = this.value, l = v.length, min = 6, level = 0;
			if(l < min){
				if(l > 0)	level = 1;
			} else {
				if(/^(\d{6,9}|[a-z]{6,9}|[A-Z]{6,9})$/.test(v)) level = 1;
				else if(/^[^a-z\d]{6,8}$/i.test(v) || !/^(\d{6,9}|[a-z]{6,9}|[A-Z]{6,9})$/.test(v)) level = 2;
				if(!/^(([A-Z]*|[a-z]*|\d*|[-_\~!@#\$%\^&\*\.\(\)\[\]\{\}<>\?\\\/\'\"]*)|.{0,5})$|\s/.test(v)) level = l < 10 ? 3 : 4;
			}
			if(this.leve != level) this.fireEvent('onLevelChange', [level, this]);
			return this.level = level;
		},
		process : function(){
			return this.getLevel() >= this.options.level;
		}
	});
	
	ns.RangeElement = new Class({
		Extends : AbstractElement,
		options : {
			min : 0,
			minElement : null,
			max : 1000,
			maxElement : null,
			format : 'yyyy-MM-dd',
			as : 'number'
		},
		types : {
			string : function(){this.options.format = null;this.min = this.options.min;this.max = this.options.max;},
			caseinsensitivestring : function(){this.value = this.value.toUpperCase();this.min = this.options.min.toUpperCase();this.max = this.options.max.toUpperCase();},
			number : function(){this.value = this.value*1;this.min = this.options.min*1;this.max = this.options.max * 1;},
			datetime : function(){this.value = ns.isDateTime.call(this.value, this.options.format, true);this.min = ns.isDateTime.call(this.options.min, this.options.format, true);this.max = ns.isDateTime.call(this.options.max, this.options.format, true);},
			ip : function(){this.value = util.ipFix(this.value);this.min = util.ipFix(this.options.min);this.max = util.ipFix(this.options.max);}
		},
		process : function(){
			var ops = this.options;
			if(ops.minElement != null) ops.min = $(ops.minElement).value;
			if(ops.maxElement != null) ops.max = $(ops.maxElement).value;
			this.types[ops.as.toLowerCase()].call(this);
			return (this.value === false || this.min === false || this.max === false) ? false : this.min <= this.value && this.value <= this.max;
		}
	});
	
	ns.IdCardElement = new Class({
		Extends : AbstractElement,
		options : {
			length : 'both'
		},
		process : function(){
			if(this.options.length == 18 && 18 != this.value.length) return false;
			var number = this.value.toLowerCase();
			var d, sum = 0, v = '10x98765432', w = [7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2], a = '11,12,13,14,15,21,22,23,31,32,33,34,35,36,37,41,42,43,44,45,46,50,51,52,53,54,61,62,63,64,65,71,81,82,91';
			var re = number.match(/^(\d{2})\d{4}(((\d{2})(\d{2})(\d{2})(\d{3}))|((\d{4})(\d{2})(\d{2})(\d{3}[x\d])))$/);
			if(re == null || a.indexOf(re[1]) < 0) return false;
			if(re[2].length == 9){
				number = number.substr(0, 6) + '19' + number.substr(6);
				d = ['19' + re[4], re[5], re[6]].join('-');				
			} else d = [re[9], re[10], re[11]].join('-');
			if(!ns.isDateTime.call(d, 'yyyy-MM-dd')) return false;
			for(var i = 0;i < 17; i++) sum += number.charAt(i) * w[i];
			return (re[2].length == 9 || number.charAt(17) == v.charAt(sum % 11));
		}
	});

	ns.RepeatElement = new Class({
		Extends : AbstractElement,
		options : {
			to : null
		},
		process : function(){
			return this.options.to && this.value == $(this.options.to).value;
		}
	});

	ns.DateTimeElement = ns.DateElement = ns.TimeElement = new Class({
		Extends : AbstractElement,
		options : {
			format : 'yyyy-MM-dd'
		},
		process : function(){
			return ns.isDateTime.call(this.value, this.options.format);
		}
	});

	ns.GroupElement = new Class({
		Extends : ns.RangeElement,
		options : {
			as : 'number',
			elements : '',
			iterates : [],
			prop : ''
		},
		attach  : function(validateOnBlur){
			arguments.callee.parent(validateOnBlur);
			var ops = this.options;
			if(ops.elements) {
				ops.iterates = $$(ops.elements.split(util.comma).join(',').replace(/\b([^\b#,]+)/g, '#$1'));
				if(!ops.prop) ops.prop = 'value';
			}
			else {
				if(this.element.options) {
					ops.iterates = this.element.options;
					if(!ops.prop) ops.prop = 'selected';
				}
				else {
					ops.iterates = document.getElementsByName(ops['for']);
					if(!ops.prop) ops.prop = 'checked';
				}
			}
			if(!validateOnBlur)return;
			if(this.element.getTag() != 'input')return;
			for(var i = ops.iterates.length - 2; i > -1; i --) $(ops.iterates[i]).addEvents(this.bound);			
		},
		getValue : function(){
			var count = 0, ops = this.options;
			for(var i = ops.iterates.length - 1; i > -1; i --){
				if(ops.iterates[i][ops.prop]) count ++;
			}
			return count;
		}
	});

	ns.LimitElement = new Class({
		Extends : ns.RangeElement,
		options : {as : 'number'},
		getValue : function(){
			return arguments.callee.parent().length;
		}
	});
	
	ns.LimitBElement = new Class({
		Extends : ns.RangeElement,
		options : {as : 'number'},
		getValue : function(){
			return arguments.callee.parent().replace(/[^\x00-\xff]/g,"**").length;
		}
	});
	
	ns.FilterElement = new Class({
		Extends : AbstractElement,
		options : {
			accept : null,
			as : 'file'
		},
		types : {
			file : function(){
				return this.options.accept != null && new RegExp("^.+\\.(?=EXT)(EXT)$".replace(/EXT/g, this.options.accept.split(util.comma).join("|")), "gi").test(this.value);
			},
			badword : function(){
				return !this.types.keyword.call(this);
			},
			keyword : function(){
				return this.options.accept != null && new RegExp(this.options.accept.split(util.comma).join("|"), "gi").test(this.value);
			},
			beginwith : function(){
				return this.options.accept != null && new RegExp("^(?=EXT)(EXT)".replace(/EXT/g, this.options.accept.split(util.comma).join("|")), "gi").test(value);
			},
			endwith : function(){
				return this.options.accept != null && new RegExp(".*(?=EXT)(EXT)$".replace(/EXT/g, this.options.accept.split(util.comma).join("|")), "gi").test(value);
			}
		},
		process : function(){
			return this.types[this.options.as.toLowerCase()].call(this);
		}
	});

	ns.CustomElement = new Class({
		Extends : AbstractElement,
		options : {
			as : 'regex'
		},
		initialize : function(options){
			arguments.callee.parent(options);
			if(this.options.as.toLowerCase() == 'elements') this.init();
		},
		types : {
			regex : function(){
				var reVal = false;
				try{
					reVal = new RegExp(this.options.regex, this.options.options).test(this.value);
				} catch(e) { reVal = false;alert(['\u6b63\u5219\u8868\u8fbe\u5f0f\u9519\u8bef\uff1a', e.description].join('\n'));}
				return reVal;
			},
			script : function(){
				var reVal = false;
				try{
					eval(this.options.code);
				} catch(e){ reVal = false;alert(['\u81ea\u5b9a\u4e49\u811a\u672c\u9519\u8bef\uff1a', e.description].join('\n'));}
				return reVal;
			},
			elements : function(){
				var result = this.expression;
				for(var i = this.elements.length - 1; i > -1; i--){
					result = result.replace(new RegExp('\\{' + i + '\\}', 'g'), this.elements[i].validate());
				}
				return eval(result);
			}
		},
		init : function(){
			var ops = this.options, elements = ops.expression.split(/[^a-z\d]+/ig).sort();
			this.expression = ops.expression;
			delete ops.elements;
			this.elements = [];
			for(var i = 0, l = elements.length; i < l; i ++){
				if(i > 0 && elements[i] == elements[i-1]) continue;
				var o = {}, e;
				for(e in ops){if(typeof(ops[e]) == "string")o[e] = ops[e];}
				o.rule = elements[i];
				this.elements.push(ns.Factory.Element.build(o));
				this.expression = this.expression.replace(new RegExp(elements[i], "gi"), '{' + (this.elements.length - 1) + '}');
			}
		},
		process : function(){
			return this.types[this.options.as.toLowerCase()].call(this);
		}
	});

	ns.CompareElement = new Class({
		Extends : AbstractElement,
		options : {
			to : null,
			toElement : null,
			format : 'yyyy-MM-dd',
			as : 'number',
			operator : 'equal'
		},
		types : {
			string : function(){this.options.format = null;this.to = this.options.to;},
			caseinsensitivestring : function(){this.value = this.value.toUpperCase();this.to = this.options.to.toUpperCase();},
			number : function(){this.value = this.value*1;this.to = this.options.to*1},
			datetime : function(){this.value = ns.isDateTime.call(this.value, this.options.format, true);this.to = ns.isDateTime.call(this.options.to, this.options.format, true);},
			ip : function(){this.value = util.ipFix(this.value);this.to = util.ipFix(this.options.to);}
		},
		operators : {
			notequal : function(){return this.value != this.to;},
			greaterthan : function(){return this.value > this.to;},
			greaterthanequal : function(){return this.value >= this.to;},
			lessthan : function(){return this.value < this.to;},
			lessthanequal : function(){return this.value <= this.to;},
			equal : function(){return this.value == this.to;}
		},
		process : function(){
			if(this.options.toElement != null) this.options.to = $(this.options.toElement).value;
			this.types[this.options.as.toLowerCase()].call(this);
			return !(this.value === false || this.to === false) && this.operators[this.options.operator.toLowerCase()].call(this);
		}
	});
	ns.ExtendElements = {};
	ns.ExtendMessengers = {};
	ns.ExtendReaders = {};
	
})(window);