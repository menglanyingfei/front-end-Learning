// JavaScript Document
// 弹层
$(".test").click(function(){
	$(".test-no").show()
	var num=$(this).index();
	$(".service-testcon ul").show()
	$(".service-testcon ul li").eq(num).show().siblings().hide();
})
$(".test-no").click(function(){
		$(".service-testcon ul li ,.test-no").hide()
	})
// 论坛回复的详情
$(".bbs-testcon").hide()
// 选择人弹层
$(".work-chebox").hide()
// 论坛回复的详情 新页面打开
$(".bbs-test-return-no").show()
function opTest(){
	$(".bbs-test-no").show()
	$(".bbs-testcon").show()
	// 选择人弹层
	$(".work-chebox").show()

}
function bbsclo(){
	$(".bbs-testcon,.work-chebox,.bbs-test-no").hide()
}

// 状态栏
$(".top-down-meau img").hide()
$(".top-down a").hover(function(){
	var num=$(this).index();
	$(".top-down-meau").show();
	$(".top-down-meau img").eq(num).show(function(){}).siblings(".top-down-meau img").hide();
	$(this).parents(".po-re").hover(function(){},
		function(){
			$(".top-down-meau img").hide();
			$(".top-down-meau").hide()
		})
})
$(".nav-navbar a").hover(function(){
	$(".nav-navbar a").removeClass("active");
	$(this).addClass("active");
})
// 状态栏end
// 导航栏
/*导航条下拉动画*/
	$(".down-meau,.down-meau-two").hide();
	// 二级的下拉效果
	$(".down-meau>.down>a").first().addClass("active-blue");
	$(".down-meau>.down>a").hover(function(){
		$(".down-meau .down>a").removeClass("active-blue")
		$(".down-meau-two").hide()
		$(this).addClass("active-blue").parent().next(".down-meau-two").show();
	//获取.down-meau-two的高度给.down-meau
		$(this).parents(".down-meau").height($(this).parent(".down").next(".down-meau-two").height());
	});
	// 一级的下拉效果
	$(".confont-con>ul>.down>a").hover(function(){
		$(this).parent().find("ul.down-meau").slideDown(20).show();
		$(this).parent().hover(function(){}, 
		function(){	
			$(this).parent().find("ul.down-meau").slideUp(50); 
		});
	});
	// 去除导航下拉最后一个的红色底边边线
	$(".down:last").find("a").addClass("hr-no");
	$(".down-meau").find("li:last").addClass("bg-no");
	$(".down-meau").find("li:last").addClass("hr-no");

	// 去除党员缴费表格的最后一个的先线条
	$("table tr").find("td:last").addClass("hr-r-no")
	$("table tr:last").find("td").addClass("hr-b-no")
	// 去除通讯录的线条
	$(".work-book-list:nth-child(2n)").addClass("hr-r-no")
// 导航栏end
// banner轮播
/*banner轮播*/
	/*海报区域*/
	$(".confont-ban .ban-img li").first().show();
	$(".confont-ban .num li").first().addClass("on");
	$(".confont-ban .num li").hover(function(){
		var index=$(this).index();
		i=index;
		$(this).addClass("on").siblings().removeClass("on");
		$(".confont-ban .ban-img li").eq(index).fadeIn().siblings().fadeOut();
	})
	var i=0;
	var size=$(".confont-ban .ban-img li").size();
	var t=setInterval(moveR,3000);
	$(".confont-ban .btn-l").click(function(){
		moveL()
	})
	$(".confont-ban .btn-r").click(function(){
		moveR();
	})
	$(".confont-ban").hover(function(){
		clearInterval(t)	
	},function(){
		t=setInterval(moveR,3000);
	})
	function moveL(){
		i--;
		if(i==-1){
			i=size-1;	
		}
		$(".confont-ban .num li").eq(i).addClass("on").siblings().removeClass("on");
		$(".confont-ban .ban-img li").eq(i).fadeIn().siblings().fadeOut();
	}
	function moveR(){
		i++;
		if(i==size){
			i=0;	
		}
		$(".confont-ban .num li").eq(i).addClass("on").siblings().removeClass("on");
		$(".confont-ban .ban-img li").eq(i).fadeIn().siblings().fadeOut();
	}
// banner轮播end

/*新闻列表左侧图文排列轮播*/
jQuery(".INnews-slide").slide({mainCell:".bd ul",effect:"left",autoPlay:true,easing:"easeOutCirc",interTime:3000,});
// 首页新闻列表标签切换

 $(".INnews-left .slide-list>li").hide().first().show()
 $(".INnews-left .INnews-left-tab li").hover(function(){
 	$(".INnews-left .INnews-left-tab li").removeClass("active")
 	$(this).addClass("active")
 	var num=$(this).index()
	$(".INnews-left .slide-list>li").eq(num).show().siblings().hide();
	
 })
 // 首页新闻列表右侧活动专题
 jQuery(".INnews-right").slide({mainCell:".bd ul",autoPlay:true,effect:"leftLoop",delayTime:1000,interTime:5000,});
 // 首页党员活动展示
 jQuery(".INshow-con").slide({mainCell:".bd ul",autoPage:true,effect:"leftLoop",autoPlay:true,vis:5})

// 流动党员之家亲情互助驿站tab标签页
$(".home-help-con>li").hide().first().show();
$(".home-help-tab li").first().addClass("active")	
$(".home-help-tab li").click(function(){
	$(".home-help-tab li").removeClass("active");
	$(this).addClass("active");
	var index=$(this).index();
	$(".home-help-con>li").eq(index).fadeIn().siblings().fadeOut();

})





// $(".service-img").click(function(){
// 	var num=$(this).index();
// 	$(".test-no").show()
// 	$(".service-testcon ul li").eq(num).show().siblings().hide();
// })

