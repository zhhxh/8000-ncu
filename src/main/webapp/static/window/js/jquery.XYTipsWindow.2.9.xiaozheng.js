/*
 * jQuery XYTipsWindow Plus @requires jQuery v1.3.2
 * Dual licensed under the MIT and GPL licenses.
 *
 * Copyright (c) xinyour (http://www.xinyour.com/)
 *
 * Autor: Await
 * webSite: http://leotheme.cn/
 * Date: 星期四 2011年05月15日
 * Version: 2.8.0
 **********************************************************************
 * @example
 * $144("#example").XYTipsWindow();
 **********************************************************************
 * XYTipsWindow o参数可配置项：
 *		    ___title : 窗口标题文字;
 *	  	    ___boxID : 弹出层ID(默认随机);
 *	 	  ___content : 内容(可选内容为){ text | id | img | swf | url | iframe};
 *	 	    ___width : 窗口宽度(默认宽度为300px);
 *	 	   ___height : 窗口离度(默认高度为200px);
 *	   ___titleClass : 窗口标题样式名称;
 *	 	  ___closeID : 关闭窗口ID;
 *	    ___triggerID : 相对于这个ID定位;[暂时取消此功能]
 *	   ___boxBdColor : 弹出层外层边框颜色(默认值:#E9F3FD);
 *   ___boxBdOpacity : 弹出层外层边框透明度(默认值:1,不透明);
 * ___boxWrapBdColor : 弹出层内部边框颜色(默认值:#A6C9E1);
 *  ___windowBgColor : 遮罩层背景颜色(默认值:#000000);
 *___windowBgOpacity : 遮罩层背景透明度(默认值:0.5);
 *		     ___time : 自动关闭等待时间;(单位毫秒);
 *		     ___drag : 拖动手柄ID[当指定___triggerID的时候禁止拖动];
 * ___dragBoxOpacity : 设置窗口拖动时窗口透明度(默认值:1,不透明);
 *	    ___showTitle : 是否显示标题(布尔值 默认为true);
 *	    ___showBoxbg : 是否显示弹出层背景(布尔值 默认为true);
 *		   ___showbg : 是否显示遮罩层(布尔值 默认为false);
 *	  	   ___button : 数组，要显示按钮的文字;
 *		 ___callback : 回调函数，默认返回所选按钮显示的文 ;
 *		  ___offsets : 设定弹出层位置,默认居中;内置固定位置浮动:left-top(左上角);right-top(右上角);left-bottom(左下角);right-bottom(右下角);middle-top(居中置顶);middle-bottom(居中置低);left-middle(靠左居中);right-middle(靠右居中);
 *		      ___fns : 弹出窗口后执行的函数;
 **********************************************************************/
;(function(){
	$144.XYTipsWindow=function(o){
		defaults = $144.extend({
			___title:"Hello World",
			___boxID:boxID(10),
			___content:"text:内容",
			___width: "300",
			___height: "200",
			___titleClass: "boxTitle",
			___closeID:"",
			___triggerID:"",
			___boxBdColor:"#E9F3FD",
			___boxBdOpacity:"1",
			___boxWrapBdColor:"#A6C9E1",
			___windowBgColor:"#000000",
			___windowBgOpacity:"0.5",
			___time:"",
			___drag:"",
			___dragBoxOpacity:"1",
			___showTitle:true,
			___showBoxbg:true,
			___showbg:false,
			___offsets:"",
			___button:"",
			___callback:function(){},
			___fns:function(){}
		},o);
		$144.XYTipsWindow.init(defaults);
	};
	var BOXID,isIE6 = !-[1,] && !window.XMLHttpRequest;
	var $144XYTipsWindowarr = new Array();
	var boxID = function (n){
		var Str = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
		for (var i = 0, r =""; i < n; i++){
			r += Str.charAt(Math.floor(Math.random() * 62));
		};
		return r;
	};
	$144.extend($144.XYTipsWindow,{
		//初始化
		init: function (o){
			BOXID = o;
			if ($144("#"+o.___boxID).length>0){
				alert("对不起，创建弹出层失败！窗口“"+o.___boxID+"”已存在！");
				return false;
			};
			var $144box = $144("#"+o.___boxID);
			$144.XYTipsWindow.showBox(o);
			$144(".___closeBox",$144box).die().live("click",function(){
				$144.XYTipsWindow.removeBox();
			}).css({zIndex:"870618"});
			
			if(o.___closeID != ""){
				$144("#"+o.___closeID,$144box).die().live("click",function(){
					$144.XYTipsWindow.removeBox();
				});
			};
			if(o.___time != "") {
				setTimeout($144.XYTipsWindow.removeBox,o.___time);
			};
			if(o.___showbg != "" && o.___showbg == true){
				var $144boxBgDom = "<div id=\"XYTipsWindowBg\" style=\"position:absolute;background:"+o.___windowBgColor+";filter:alpha(opacity=0);opacity:0;width:100%;left:0;top:0;z-index:870618\"><iframe src=\"about:blank\" style=\"width=100%;height:"+$144(document).height()+"px;filter:alpha(opacity=0);opacity:0;scrolling=no;z-index:870610\"></iframe></div>";
				$144($144boxBgDom).appendTo("body").animate({opacity:o.___windowBgOpacity},200);
			};
			if(o.___drag != "") {
				$144.XYTipsWindow.dragBox(o);
			};
			if(o.___fns != "" && $144.isFunction(o.___fns)){
				o.___fns.call(this);
			};
			$144.XYTipsWindow.contentBox(o);
			if (o.___button!=""){
				$144.XYTipsWindow.ask(o);
			};
			$144.XYTipsWindow.keyDown(o);
			$144.XYTipsWindow.setBoxzIndex(o);
			if(o.___showbg != true){
				$144("#"+o.___boxID).addClass("shadow");
			};
			$144("#"+o.___boxID).die().live("mouseenter",function(){
				BOXID = o;
			});
		},
		getID: function(){
			return thisID = BOXID.___boxID;
		},
		//构造弹出层
		showBox: function(o) {
			var $144titleHeight = o.___showTitle!=true ? 1 : 33,
				$144borderHeight = o.___showTitle!=true ? 0 : 10;
				$144boxDialogHeight = o.___button!="" ? 45 : 0;
				$144boxDialogBorder = $144boxDialogHeight == "0" ? "0" : "1";
			var $144width = parseInt(o.___width) > 1000 ? 1000 : parseInt(o.___width),
				//$144height = parseInt(o.___height) > 550 ? 550 : parseInt(o.___height);
				$144height = "806";
				$144myheight = "850";
			var $144boxDom = "<div id=\""+o.___boxID+"\" class=\"XYTipsWindow\">";
				$144boxDom += "<div class=\"___boxWrap\">";
				$144boxDom += "<div class=\"___boxTitle\"><h3></h3><span class=\"___closeBox\">关闭</span></div>";
				$144boxDom += "<div class=\"___boxContent\"></div>";
				$144boxDom += "<div class=\"___boxDialog\"></div>";
				$144boxDom += "</div>";
				$144boxDom += "<div class=\"___boxBd\"></div>";
				$144boxDom += "<iframe src=\"about:blank\" style=\"position:absolute;left:0;top:0;filter:alpha(opacity=0);opacity:0;scrolling=no;z-index:10714\"></iframe>";
		
				$144boxDom += "</div>";
				$144($144boxDom).appendTo("body");
			var $144box = $144("#"+o.___boxID);
				$144box.css({
					position:"relative",
					width:$144width+12+"px",
					//height:$144height+$144titleHeight+$144borderHeight+$144boxDialogHeight+1+"px",
					height:$144myheight,
					zIndex: "891208"
				});
			var $144iframe = $144("iframe",$144box);
				$144iframe.css({
					width:$144width+12+"px",
					//height:$144height+$144titleHeight+$144borderHeight+$144boxDialogHeight+1+"px"
					height:$144myheight,
				});
			
			var $144boxWrap = $144(".___boxWrap",$144box);
				$144boxWrap.css({
					position:"relative",
					top:"5px",
					margin:"0 auto",
					width:$144width+2+"px",
					//height:$144height+$144titleHeight+$144boxDialogHeight+1+"px",
					height:$144myheight,
					overflow:"hidden",
					zIndex: "20590"
				});
			var $144boxContent = $144(".___boxContent",$144box);
				$144boxContent.css({
					position: "relative",
					width:$144width+"px",
					height:$144height+"px",
					padding:"0",
					borderWidth:"1px",
					borderStyle:"solid",
					borderColor:o.___boxWrapBdColor,
					overflow: "auto",
					backgroundColor:"#fff"
				});
			var $144boxDialog =  $144(".___boxDialog",$144box);
				$144boxDialog.css({
					width:$144width+"px",
					height: $144boxDialogHeight+"px",
					borderWidth:$144boxDialogBorder+"px",
					borderStyle:"solid",
					borderColor:o.___boxWrapBdColor,
					borderTop:"none",
					textAlign:"right"
				});
			var $144boxBg = $144(".___boxBd",$144box);
				$144boxBg.css({
					position: "absolute",
					width:$144width+12+"px",
					//height:$144height+$144titleHeight+$144borderHeight+$144boxDialogHeight+1+"px",
					height:$144myheight,
					left: "0",
					top: "0",
					opacity: o.___boxBdOpacity,
					background:o.___boxBdColor,
					zIndex: "10715"
				});
			var $144title = $144(".___boxTitle>h3",$144box);
				$144title.html(o.___title);
				$144title.parent().css({
					position: "relative",
					width:$144width+"px",
					borderColor:o.___boxWrapBdColor
				});
			if(o.___titleClass != ""){
				$144title.parent().addClass(o.___titleClass);
				$144title.parent().find("span").hover(function(){
					$144(this).addClass("hover");
				},function(){
					$144(this).removeClass("hover");
				});
			};
			if(o.___showTitle!=true){$144(".___boxTitle",$144box).remove();}
			if(o.___showBoxbg!=true){
				$144(".___boxBd",$144box).remove();
				$144box.css({
					width:$144width+2+"px",
					//height:$144height+$144titleHeight+$144boxDialogHeight+1+"px"
					height:$144myheight
				});
				$144boxWrap.css({left:"0",top:"0"});
			};
			//定位弹出层
			var TOP = -1;
				$144.XYTipsWindow.getDomPosition(o);
			var $144location = o.___offsets;
			var $144wrap = $144("<div id=\""+o.___boxID+"parent\"></div>");
			var est = isIE6 ? (o.___triggerID!="" ? 0 : document.documentElement.scrollTop) : "";
			if(o.___offsets=="" || o.___offsets.constructor == String){
				switch($144location){
					case("left-top")://左上角
						$144location={left:"0px",top:"0px"+est};
						TOP=0;
						break;
					case("left-bottom")://左下角
						$144location={left:"0px",bottom:"0px"};
						break;
					case("right-top")://右上角
						$144location={right:"0px",top:"0px"+est};
						TOP=0;
						break;
					case("right-bottom")://右下角
						$144location={right:"0px",bottom:"0px"};
						break;
					case("middle-top")://居中置顶
						$144location={left:"50%",marginLeft:-parseInt($144box.width()/2)+"px",top:"0px"+est};
						TOP=0;
						break;
					case("middle-bottom")://居中置低
						$144location={left:"50%",marginLeft:-parseInt($144box.width()/2)+"px",bottom:"0px"};
						break;
					case("left-middle")://左边居中
						$144location={left:"0px",top:"50%"+est,marginTop:-parseInt($144box.height()/2)+"px"+est};
						TOP=$144getPageSize[1]/2-$144box.height()/2;
						break;
					case("right-middle")://右边居中
						$144location={right:"0px",top:"50%"+est,marginTop:-parseInt($144box.height()/2)+"px"+est};
						TOP=$144getPageSize[1]/2-$144box.height()/2;
						break;
					default://默认为居中
						$144location={left:"50%",marginLeft:-parseInt($144box.width()/2)+"px",top:"50%"+est,marginTop:-parseInt($144box.height()/2)+"px"+est};
						TOP=$144getPageSize[1]/2-$144box.height()/2;
						break;
				};
			}else{
				var str=$144location.top;
					$144location.top = $144location.top+est;
				if (typeof(str)!= 'undefined'){
					str=str.replace("px","");
					TOP=str;
				};
			};
			if (o.___triggerID!="") {
				var $144offset = $144("#"+o.___triggerID).offset();
				var triggerID_W = $144("#"+o.___triggerID).outerWidth(),triggerID_H = $144("#"+o.___triggerID).outerHeight();
				var triggerID_Left = $144offset.left,triggerID_Top = $144offset.top;
				var vL = $144location.left,vT = $144location.top;
				if (typeof(vL)!= 'undefined' || typeof(vT)!= 'undefined' ){
					vL =  parseInt(vL.replace("px",""));
					vT =  parseInt(vT.replace("px",""));
				};
				var ___left = vL >= 0 ? parseInt(vL)+triggerID_Left : parseInt(vL)+triggerID_Left-$144getPageSize[2];
				var ___top = vT >= 0 ? parseInt(vT)+triggerID_Top : parseInt(vT)+triggerID_Top-$144getPageSize[3];
				$144location = {left:___left+"px",top:___top+"px"};
			};
			if (isIE6){
				if (o.___triggerID=="") {
					if (TOP>=0){
						$144.XYTipsWindow.addStyle(".ui_fixed_"+o.___boxID+"{width:100%;height:100%;position:absolute;left:expression(documentElement.scrollLeft+documentElement.clientWidth-this.offsetWidth);top:expression(documentElement.scrollTop+"+TOP+")}");
						$144wrap=$144("<div class=\""+o.___boxID+"IE6FIXED\" id=\""+o.___boxID+"parent\"></div>");
						$144box.appendTo($144wrap);
						$144("body").append($144wrap);
						$144("."+o.___boxID+"IE6FIXED").css($144location).css({
							position:"absolute",
							width:$144width+12+"px",
							//height:$144height+$144titleHeight+$144borderHeight+$144boxDialogHeight+1+"px",
							height:$144myheight,
							zIndex: "891208"
						}).addClass("ui_fixed_"+o.___boxID);
					}else{
						$144.XYTipsWindow.addStyle(".ui_fixed2_"+o.___boxID+"{width:100%;height:100%;position:absolute;left:expression(documentElement.scrollLeft+documentElement.clientWidth-this.offsetWidth);top:expression(documentElement.scrollTop+documentElement.clientHeight-this.offsetHeight)}");
						$144wrap=$144("<div class=\""+o.___boxID+"IE6FIXED\"  id=\""+o.___boxID+"parent\"></div>");
						$144box.appendTo($144wrap);
						$144("body").append($144wrap);
						$144("."+o.___boxID+"IE6FIXED").css($144location).css({
							position:"absolute",
							width:$144width+12+"px",
							//height:$144height+$144titleHeight+$144borderHeight+$144boxDialogHeight+1+"px",
							height:$144myheight,
							zIndex: "891208"
						}).addClass("ui_fixed2_"+o.___boxID);
					};
					$144("body").css("background-attachment","fixed").css("background-image","url(n1othing.txt)");
				}else{
					$144wrap.css({
						position:"absolute",
						left:___left+"px",
						top:___top+"px",
						width:$144width+12+"px",
						//height:$144height+$144titleHeight+$144borderHeight+$144boxDialogHeight+1+"px",
						height:$144myheight,
						zIndex: "891208"
					});
				};
			}else{
				$144wrap.css($144location).css({
					position:"fixed",
					width:$144width+12+"px",
					//height:$144height+$144titleHeight+$144borderHeight+$144boxDialogHeight+1+"px",
					height:$144myheight,
					zIndex: "891208"
				});
				if (o.___triggerID!="") {$144wrap.css({position:"absolute"})};
				$144("body").append($144wrap);
				$144box.appendTo($144wrap);
			};
		},
		//装载弹出层内容
		contentBox: function (o) {
			var $144box = $144("#"+o.___boxID);
			var $144width = parseInt(o.___width) > 1000 ? 1000 : parseInt(o.___width),
				$144height = parseInt(o.___height) > 550 ? 550 : parseInt(o.___height);
			var $144contentID = $144(".___boxContent",$144box);
				$144contentType = o.___content.substring(0,o.___content.indexOf(":"));
				$144content = o.___content.substring(o.___content.indexOf(":")+1,o.___content.length);
				$144.ajaxSetup({global: false});
			switch($144contentType) {
				case "text":
					$144contentID.html($144content);
				break;
				case "id":
					$144("#"+$144content).children().appendTo($144contentID);
				break;
				case "img":
				$144.ajax({
					beforeSend:function() {
						$144contentID.html("<p class='boxLoading'>loading...</p>");
					},
					error:function(){
						$144contentID.html("<p class='boxError'>加载数据出错...</p>");
					},
					success:function(html){
						$144contentID.html("<img src="+$144content+" alt='' />");
					}
				});
				break;
				case "swf":
					$144.ajax({
						beforeSend:function() {
							$144contentID.html("<p class='boxLoading'>loading...</p>");
						},
						error:function(){
							$144contentID.html("<p class='boxError'>加载数据出错...</p>");
						},
						success:function(html){
							$144contentID.html("<div id='"+o.___boxID+"swf'><h1>Alternative content</h1><p><a href=\"http://www.adobe.com/go/getflashplayer\"><img src=\"http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif\" alt=\"Get Adobe Flash player\" /></a></p></div><script type=\"text/javascript\" src=\"swfobject.js\" ></script><script type=\"text/javascript\">swfobject.embedSWF('"+$144content+"', '"+o.___boxID+"swf', '"+$144width+"', '"+$144height+"', '9.0.0', 'expressInstall.swf');</script>");
							$144("#"+o.___boxID+"swf").css({
								position:"absolute",
								left:"0",
								top:"0",
								textAlign:"center"
							});
						}
				});
				break;
				case "url":
				var contentDate=$144content.split("?");
				$144.ajax({
					beforeSend:function() {
						$144contentID.html("<p class='boxLoading'>loading...</p>");
					},
					type:contentDate[0],
					url:contentDate[1],
					data:contentDate[2],
					error:function(){
						$144contentID.html("<p class='boxError'><em></em><span>加载数据出错...</span></p>");
					},
					success:function(html){
						$144contentID.html(html);
					}
				});
				break;
				case "iframe":
				$144contentID.css({overflowY:"hidden"});
				$144.ajax({
					beforeSend:function() {
						$144contentID.html("<p class='boxLoading'>loading...</p>");
					},
					error:function(){
						$144contentID.html("<p class='boxError'>加载数据出错...</p>");
					},
					success:function(html){
						$144contentID.html("<iframe src=\""+$144content+"\" width=\"100%\" height=\""+parseInt(o.___height)+"px\" scrolling=\"auto\" frameborder=\"0\" marginheight=\"0\" marginwidth=\"0\"></iframe>");
					}
				});
			};
		},
		//对话模式
		ask:function(o){
			var $144box = $144("#"+o.___boxID);
				$144boxDialog = $144(".___boxDialog",$144box);
			if (o.___button!=""){
				var map = {}, answerStrings = [];
				if (o.___button instanceof Array) {
					for (var i = 0; i < o.___button.length; i++) {
						map[o.___button[i]] = o.___button[i];
						answerStrings.push(o.___button[i]);
					};
				} else {
					for (var k in o.___button) {
						map[o.___button[k]] = k;
						answerStrings.push(o.___button[k]);
					};
				};
				$144boxDialog.html($144.map(answerStrings, function(v) {
					return "<input class='dialogBtn' type='button'  value='" + v + "' />";
				}).join(' '));
				$144(".dialogBtn", $144boxDialog).hover(function(){
					$144(this).addClass("hover");
				},function(){
					$144(this).removeClass("hover");
				}).click(function() {
					var $144this = this;
					if(o.___callback != "" && $144.isFunction(o.___callback)) {
						//设置回调函数返回值很简单，就是回调函数名后加括号括住的返回值就可以了。
						o.___callback(map[$144this.value]);
					};
					$144.XYTipsWindow.removeBox(o);
				});
			};
		},
		//获取要吸附的ID的left和top值并重新计算弹出层left和top值
		getDomPosition: function (o) {
			var $144box = $144("#"+o.___boxID);
			var	cw=document.documentElement.clientWidth,ch=document.documentElement.clientHeight;
			var sw = $144box.outerWidth(),sh = $144box.outerHeight();
			var $144soffset = $144box.offset(),sl = $144soffset.left,st = $144soffset.top;
			$144getPageSize = new Array();
			$144getPageSize.push(cw,ch,sw,sh,sl,st);
		},
		//设置窗口的zIndex
		setBoxzIndex: function (o) {
			$144XYTipsWindowarr.push(document.getElementById(o.___boxID+"parent"));//存储窗口到数组
			var ___event = "mousedown" || "click";
			var $144box = $144("#"+o.___boxID+"parent");
			$144box.die().live("click",function(){
				for(var i=0; i < $144XYTipsWindowarr.length; i++){
					$144XYTipsWindowarr[i].style.zIndex = 870618;
				};
				this.style.zIndex = 891208;
			});
		},
		//写入CSS样式
		addStyle : function(s) {
			var T = this.style;
			if(!T){
				T = this.style = document.createElement('style');
				T.setAttribute('type', 'text/css');
				document.getElementsByTagName('head')[0].appendChild(T);
			};
			T.styleSheet && (T.styleSheet.cssText += s) || T.appendChild(document.createTextNode(s));
		},
		//绑定拖拽
		dragBox: function (o){
			var $144moveX = 0,$144moveY = 0,
				drag = false;
			var $144ID = $144("#"+o.___boxID);
				$144Handle = $144("."+o.___drag,$144ID);
			$144Handle.mouseover(function() {
				if(o.___triggerID!=""){
					$144(this).css("cursor","default");
				}else{
					$144(this).css("cursor","move");
				};
			});
			$144Handle.mousedown(function(e) {
				drag = o.___triggerID!="" ? false : true;
				if (o.___dragBoxOpacity) {
					if (o.___boxBdOpacity!="1") {
						$144ID.children("div").css("opacity",o.___dragBoxOpacity);
						$144ID.children("div.___boxBd").css("opacity",o.___boxBdOpacity);
					}else{
						$144ID.children("div").css("opacity",o.___dragBoxOpacity);
					};
				};
				e = window.event?window.event:e;
				var ___ID = document.getElementById(o.___boxID);
				$144moveX = e.clientX - ___ID.offsetLeft;
				$144moveY = e.clientY - ___ID.offsetTop;
				$144(document).mousemove(function(e) {
					if (drag) {
						e = window.event?window.event:e;
						window.getSelection ? window.getSelection().removeAllRanges() : document.selection.empty();
						var ___x = e.clientX - $144moveX;
						var ___y = e.clientY - $144moveY;
						$144(___ID).css({
							left : ___x,
							top : ___y
						});
					};
				});
				$144(document).mouseup(function(){
					drag = false;
					if (o.___dragBoxOpacity) {
						if (o.___boxBdOpacity!="1") {
							$144ID.children("div").css("opacity","1");
							$144ID.children("div.___boxBd").css("opacity",o.___boxBdOpacity);
						}else{
							$144ID.children("div").css("opacity","1");
						};
					};
				});
			});
		},
		//关闭弹出层
		removeBox: function (){
			var $144box = $144("#"+BOXID.___boxID);
			var $144boxbg = $144("#XYTipsWindowBg");
			if($144box != null || $144boxbg != null){
				var $144contentID = $144(".___boxContent",$144box);
					$144contentType = BOXID.___content.substring(0,BOXID.___content.indexOf(":"));
					$144content = BOXID.___content.substring(BOXID.___content.indexOf(":")+1,BOXID.___content.length);
				if ($144contentType == "id") {
					$144contentID.children().appendTo($144("#"+$144content));
					$144box.parent().removeAttr("style").remove();
					$144boxbg.animate({opacity:"0"},500,function(){$144(this).remove();});
					$144("body").css("background","#fff");
				}else{
					$144box.parent().removeAttr("style").remove();
					$144boxbg.animate({opacity:"0"},500,function(){$144(this).remove();});
					$144("body").css("background","#fff");
				};
			};
		},
		//健盘事件，当按Esc的时候关闭弹出层
		keyDown: function(o) {
			document.onkeydown = function(e) {
				e = e || event;
				if(e.keyCode == 27){
					$144.XYTipsWindow.removeBox();
				};
			};
		},
		
		//
		myAlert111: function(){
			alert("测试函数");
		}
	});
})($144);