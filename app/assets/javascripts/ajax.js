    $(window).scroll(function () {
		if ($(window).scrollTop() == $(document).height() - $(window).height()) {
		makeTpl(pageNum);
    	}
	});
    //分页滚动刷新 start
    var pageNum = 1;
    function makeTpl(p){
        $.get('/list?page='+p,function(data){
            console.log(data)
            pageNum++;
        })
    }
    makeTpl(pageNum);
    //分页滚动刷新 end