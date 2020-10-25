$(function() {
	//开始
	/**
	 * 获取当前时间
	 */
	function current() {
		var d = new Date(),
			str = '';
		str += d.getFullYear() + '-'; //获取当前年份 
		var mon = d.getMonth();
		if(mon < 10) {
			mon = '0' + mon;
		}
		str += mon + 1 + '-'; //获取当前月份（0——11） 
		var da = d.getDate();
		if(da < 10) {
			da = '0' + da;
		}
		str += da + ' ';
		//获取星期
		var day = d.getDay();
		var xingqi = '';
		if(day == 0) {
			xingqi = '星期日';
		}
		if(day == 1) {
			xingqi = '星期一';
		}
		if(day == 2) {
			xingqi = '星期二';
		}
		if(day == 3) {
			xingqi = '星期三';
		}
		if(day == 4) {
			xingqi = '星期四';
		}
		if(day == 5) {
			xingqi = '星期五';
		}
		if(day == 6) {
			xingqi = '星期六';
		}
		str += xingqi + ' ';

		var ho = d.getHours();
		if(ho < 10) {
			ho = '0' + ho;
		}
		str += ho + ':';
		var m = d.getMinutes()
		if(m < 10) {
			m = '0' + m;
		}
		str += m + ':';
		var s = d.getSeconds();
		if(s < 10) {
			s = '0' + s;
		}
		str += s + '';
		return str;
	}
	setInterval(function() {
		$("#nowTime").html(current)
	}, 1000);

	//导航栏状态
	$("#mydaohang2 li").click(function() {
		$("#mydaohang2 li").removeClass("dhzt");
		$(this).addClass("dhzt");
	});

	//招标公告状态
	$("#mybody11 li").click(function() {
		$("#mybody11 li").removeClass("zbzt");
		$(this).addClass("zbzt");
		$("#mybody1 .col-xs-12").each(function() { //全部隐藏
			$(this).css('display', 'none');
		});
		var str = '';//存放id
		var ahref='';//存放超链接
		var t = $(this).text();
		switch(t) {
			case '正在招标':
				str = '#' + 'zzzb01';
				ahref='zbzzzb_list.html';
				break;
			case '即将开标':
				str = '#' + 'jjkb01';
				ahref='zbjjkb_list.html';
				break;
			case '已经结束':
				str = '#' + 'yjjs01';
				ahref='zbyjjs_list.html';
				break;
			default:
				break;
		}
		$("#mybody12 a").attr("href",ahref);
		
		$(str).css('display', 'block');
	});

	//询价公告状态
	$("#mybody21 li").click(function() {
		$("#mybody21 li").removeClass("zbzt");
		$(this).addClass("zbzt");
		$("#mybody2 .col-xs-12").each(function() { //全部隐藏
			$(this).css('display', 'none');
		});
		var str = '';
		var t = $(this).text();
		switch(t) {
			case '正在进行':
				str = '#' + 'xjggzzjx01';
				break;
			case '已经结束':
				str = '#' + 'xjggyjjs01';
				break;
			default:
				break;
		}
		$(str).css('display', 'block');
	});

	//结束
});