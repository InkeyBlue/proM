<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>ProM Chat</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<link href="http://netdna.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" media="screen" type="text/css" href="css/miniChat.css" />
<script type="text/javascript">
function submitFunction(){
	/* var chatName = $(sessionScope.vo.name); */
	var id = ${sessionScope.mvo.name};
	var chatContent =$('#chatContent').val();
	var chatTime = "0"
	var chatNo = 0
	var serialNo = 0
	var orgfilename ="0"
	var newfilename ="0"
	$.ajax({	
		type:"POST",
		url:"chatSumbit.do",
		data:{
			/* chatName:sessionScope.mvo.name, */
			serialNo: serialNo,
			chatNo : chatNo,
			id : id,
			chatContent : chatContent,
			chatTime : chatTime,
			orgfilename : orgfilename,
			newfilename : newfilename
		},
		success: function(result){
			if(result == 1){
				alert('전송에 성공했습니다.'+'chatContent');
			} else if (result==0){
				alert('데이터베이스 오류가 발생했습니다.');
			}
		}
	});
	$('#chatContent').val('');
}</script>
</head>
<body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.nicescroll/3.6.8-fix/jquery.nicescroll.min.js"></script>
 
<div class="content container-fluid bootstrap snippets">
      <div class="row row-broken" >
      <div class="col-sm-3" style=""></div>
        <div class="col-sm-1.5 col-xs-12" style="">
          <div class="col-inside-lg decor-default chat" id= "minichat" style="overflow: hidden; outline: none; " tabindex="5000">
            <!-- 여기 chat에 jquery nicescroll이 먹을거임 -->
            <div class="chat-users">
              <h6>Online</h6>
                <div class="user">
                    <div class="avatar">
                    <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="User name">
                    <div class="status off"></div>
                    </div>
                    <div class="name">User name</div>
                    <div class="mood">User mood</div>
                </div>
                <div class="user">
                    <div class="avatar">
                    <img src="https://bootdey.com/img/Content/avatar/avatar2.png" alt="User name">
                    <div class="status online"></div>
                    </div>
                    <div class="name">User name</div>
                    <div class="mood">User mood</div>
                </div>
                <div class="user">
                    <div class="avatar">
                    <img src="https://bootdey.com/img/Content/avatar/avatar3.png" alt="User name">
                    <div class="status busy"></div>
                    </div>
                    <div class="name">User name</div>
                    <div class="mood">User mood</div>
                </div>
                <div class="user">
                    <div class="avatar">
                    <img src="https://bootdey.com/img/Content/avatar/avatar4.png" alt="User name">
                    <div class="status offline"></div>
                    </div>
                    <div class="name">User name</div>
                    <div class="mood">User mood</div>
                </div>
                <div class="user">
                    <div class="avatar">
                    <img src="https://bootdey.com/img/Content/avatar/avatar5.png" alt="User name">
                    <div class="status off"></div>
                    </div>
                    <div class="name">User name</div>
                    <div class="mood">User mood</div>
                </div>
                <div class="user">
                    <div class="avatar">
                    <img src="https://bootdey.com/img/Content/avatar/avatar6.png" alt="User name">
                    <div class="status online"></div>
                    </div>
                    <div class="name">User name</div>
                    <div class="mood">User mood</div>
                </div>
                <div class="user">
                    <div class="avatar">
                    <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="User name">
                    <div class="status busy"></div>
                    </div>
                    <div class="name">User name</div>
                    <div class="mood">User mood</div>
                </div>
                <div class="user">
                    <div class="avatar">
                    <img src="https://bootdey.com/img/Content/avatar/avatar2.png" alt="User name">
                    <div class="status offline"></div>
                    </div>
                    <div class="name">User name</div>
                    <div class="mood">User mood</div>
                </div>
                <div class="user">
                    <div class="avatar">
                    <img src="https://bootdey.com/img/Content/avatar/avatar3.png" alt="User name">
                    <div class="status off"></div>
                    </div>
                    <div class="name">User name</div>
                    <div class="mood">User mood</div>
                </div>
                <div class="user">
                    <div class="avatar">
                    <img src="https://bootdey.com/img/Content/avatar/avatar4.png" alt="User name">
                    <div class="status online"></div>
                    </div>
                    <div class="name">User name</div>
                    <div class="mood">User mood</div>
                </div>
                <div class="user">
                    <div class="avatar">
                    <img src="https://bootdey.com/img/Content/avatar/avatar5.png" alt="User name">
                    <div class="status busy"></div>
                    </div>
                    <div class="name">User name</div>
                    <div class="mood">User mood</div>
                </div>
                <div class="user">
                    <div class="avatar">
                    <img src="https://bootdey.com/img/Content/avatar/avatar6.png" alt="User name">
                    <div class="status offline"></div>
                    </div>
                    <div class="name">User name</div>
                    <div class="mood">User mood</div>
                </div>
                <div class="user">
                    <div class="avatar">
                    <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="User name">
                    <div class="status off"></div>
                    </div>
                    <div class="name">User name</div>
                    <div class="mood">User mood</div>
                </div>
                <div class="user">
                    <div class="avatar">
                    <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="User name">
                    <div class="status off"></div>
                    </div>
                    <div class="name">User name</div>
                    <div class="mood">User mood</div>
                </div>
                <div class="user">
                    <div class="avatar">
                    <img src="https://bootdey.com/img/Content/avatar/avatar2.png" alt="User name">
                    <div class="status online"></div>
                    </div>
                    <div class="name">User name</div>
                    <div class="mood">User mood</div>
                </div>
                <div class="user">
                    <div class="avatar">
                    <img src="https://bootdey.com/img/Content/avatar/avatar3.png" alt="User name">
                    <div class="status busy"></div>
                    </div>
                    <div class="name">User name</div>
                    <div class="mood">User mood</div>
                </div>
                <div class="user">
                    <div class="avatar">
                    <img src="https://bootdey.com/img/Content/avatar/avatar4.png" alt="User name">
                    <div class="status offline"></div>
                    </div>
                    <div class="name">User name</div>
                    <div class="mood">User mood</div>
                </div>
                <div class="user">
                    <div class="avatar">
                    <img src="https://bootdey.com/img/Content/avatar/avatar5.png" alt="User name">
                    <div class="status off"></div>
                    </div>
                    <div class="name">User name</div>
                    <div class="mood">User mood</div>
                </div>
                <div class="user">
                    <div class="avatar">
                    <img src="https://bootdey.com/img/Content/avatar/avatar6.png" alt="User name">
                    <div class="status online"></div>
                    </div>
                    <div class="name">User name</div>
                    <div class="mood">User mood</div>
                </div>
                <div class="user">
                    <div class="avatar">
                    <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="User name">
                    <div class="status busy"></div>
                    </div>
                    <div class="name">User name</div>
                    <div class="mood">User mood</div>
                </div>
                <div class="user">
                    <div class="avatar">
                    <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="User name">
                    <div class="status offline"></div>
                    </div>
                    <div class="name">User name</div>
                    <div class="mood">User mood</div>
                </div>
                <div class="user">
                    <div class="avatar">
                    <img src="https://bootdey.com/img/Content/avatar/avatar2.png" alt="User name">
                    <div class="status off"></div>
                    </div>
                    <div class="name">User name</div>
                    <div class="mood">User mood</div>
                </div>
                <div class="user">
                    <div class="avatar">
                    <img src="https://bootdey.com/img/Content/avatar/avatar3.png" alt="User name">
                    <div class="status online"></div>
                    </div>
                    <div class="name">User name</div>
                    <div class="mood">User mood</div>
                </div>
                <div class="user">
                    <div class="avatar">
                    <img src="https://bootdey.com/img/Content/avatar/avatar4.png" alt="User name">
                    <div class="status busy"></div>
                    </div>
                    <div class="name">User name</div>
                    <div class="mood">User mood</div>
                </div>
                <div class="user">
                    <div class="avatar">
                    <img src="https://bootdey.com/img/Content/avatar/avatar5.png" alt="User name">
                    <div class="status offline"></div>
                    </div>
                    <div class="name">User name</div>
                    <div class="mood">User mood</div>
                </div>
                <div class="user">
                    <div class="avatar">
                    <img src="https://bootdey.com/img/Content/avatar/avatar6.png" alt="User name">
                    <div class="status off"></div>
                    </div>
                    <div class="name">User name</div>
                    <div class="mood">User mood</div>
                </div>
            </div>
          </div>
        </div>
        <div class="col-sm-5 col-xs-12 chat" style="overflow: hidden; outline: none;" tabindex="5001">
          <div class="col-inside-lg decor-default" id="chatbody">
            <div class="chat-body">
              <h6>Mini Chat</h6>
              <div class="answer left">
                <div class="avatar">
                  <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="User name">
                  <div class="status offline"></div>
                </div>
                <div class="name">Alexander Herthic</div>
                <div class="text">
                  Lorem ipsum dolor amet, consectetur adipisicing elit Lorem ipsum dolor amet, consectetur adipisicing elit Lorem ipsum dolor amet, consectetur adiping elit
                </div>
                <div class="time">5 min ago</div>
              </div>
              
              <div class="answer right">
                <div class="avatar">
                  <img src="https://bootdey.com/img/Content/avatar/avatar2.png" alt="User name">
                  <div class="status off"></div>
                </div>
                <div class="name">Alexander Herthic</div>
                <div class="text">
                  It is a long established fact that a reader will be. Thanks Mate!
                </div>
                <div class="time">5 min ago</div>
              </div>
			  </div>
			  
              <!--answer부터 고정시켜야 함 -->
              <div class="answer-add">
                <textarea class="form-control" id="chatContent" placeholder="메세지를 입력하세요" required="required"></textarea>
                <br>
                <div align="right">
                <button type="button" class="btn btn-primary" onclick="submitFunction();">전송</button>
			  </div>
			  
            </div>
          </div>
        </div>
      </div>
    </div>
    

<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script type="text/javascript">

	$(function(){
		/* nice scroll */
    $(".chat").niceScroll();
    
	$(".chat").scrollTop($(".chat")[0].scrollHeight);

	
	 $(document).ready(function() {
		getInfiniteChat();
	}); 
	 var chatNo=0;
	 
	
	function getchatList(type){
	/*  var chatName=$(sessionScope.mvo.name);

		var chatContent=$('#chatContent').val(); */
	var serialNo= 0;

	$.ajax({
		type:"get",
		url:"getChatbyRoomNum.do",
		
		data:{
			"serialNo": serialNo,
			"chatNo" : chatNo
		},
		success:function(data){
			var result = data.json.result;
			var result_length=Object.keys(result).length;
			
			//alert(result_length)
			for(var i = 0; i <result_length; i++){
				addChat(result[i].id,result[i].chatContent,result[i].chatTime)
				chatNo=result[i].chatNo;
				
			}
			
			//alert(chatNo)
		}
	});
	}


	function addChat(id,chatContent,chatTime){
		var sessionid = "${sessionScope.mvo.id}";
		if(sessionid == id){
			$('.chat-body').append(
			   		'<div class="answer right">'
		               + '<div class="avatar">'
		               + '<img src="https://bootdey.com/img/Content/avatar/avatar2.png" alt="User name">'
		               + '<div class="status offline"></div>'
		               + '</div>'
		               + '<div class="name">'+id+'</div>'
		               + '<div class="text">'+chatContent+'</div>'
		               + '<div class="time">'+chatTime+'</div>'
		               + '</div>');
	
			 $(".chat").scrollTop($(".answer-add")[0].scrollHeight); 
		/* 	$(".form-control").scrollTop($(".form-control")[0].scrollHeight); */
		/* 	$(".chat").scrollTop($(".chat").height()); */
		}
		$('.chat-body').append(
				   		'<div class="answer left">'
			               + '<div class="avatar">'
			               + '<img src="https://bootdey.com/img/Content/avatar/avatar3.png" alt="User name">'
			               + '<div class="status offline"></div>'
			               + '</div>'
			               + '<div class="name">'+id+'</div>'
			               + '<div class="text">'+chatContent+'</div>'
			               + '<div class="time">'+chatTime+'</div>'
			               + '</div>');
		
		 $(".chat").scrollTop($(".answer-add")[0].scrollHeight); 
		/* $(".form-control").scrollTop($(".form-control")[0].scrollHeight); */
		/* $(".chat").scrollTop($(".chat").height()); */
	};
	
	
	function getInfiniteChat(){
	setInterval(function(){
		getchatList();
	},2000);
	}


	})



</script>
</body>
<!-- <script>'undefined'=== typeof _trfq || (window._trfq = []);'undefined'=== typeof _trfd && (window._trfd=[]),_trfd.push({'tccl.baseHost':'secureserver.net'}),_trfd.push({'ap':'cpsh'},{'server':'p3plcpnl0537'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src='https://img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js'></script> -->
</html>