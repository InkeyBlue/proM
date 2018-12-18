<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="http://netdna.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" media="screen" type="text/css" href="css/chat.css" />
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript" >
	
	 $(document).ready(function() {
		getInfiniteChat();
	}); 
	 var chatNo=0;
function submitFunction(){
		/* var chatName = $(sessionScope.vo.name); */
		var id = "이대리";
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
}
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
		$('#aaaaa').append(
				'<li class="ks-item ks-from">'
				+'<span class="ks-avatar ks-online">'
				+'<img src="http://bootdey.com/img/Content/avatar/avatar2.png" width="36" height="36" class="rounded-circle">'
				+'</span>'
				+'<div class="ks-body">'
				+'<div class="ks-header">'
				+'<span class="ks-name">'+id+'</span>'
				+'<span class="ks-datetime">'+chatTime+'</span>'
				+'</div>'
				+'<div class="ks-message">'+chatContent+'</div>'
				+'</div>'
				+'</li>');
		$('#aaaaa').scrollTop($('#aaaaa')[0].scrollHeight);
		//document.getElementById('#aaaaa').scrollIntoView();
		
		
	}
function getInfiniteChat(){
	setInterval(function(){
		getchatList();
	},2000);
	}

	



</script>
</head>
<body>
<div class="container">
<div class="ks-page-content">
    <div class="ks-page-content-body">
        <div class="ks-messenger">
            <div class="ks-discussions">
                <div class="ks-search">
                    <div class="input-icon icon-right icon icon-lg icon-color-primary">
                        <input id="input-group-icon-text" type="text" class="form-control" placeholder="Search">
                        <span class="icon-addon">
                <span class="la la-search"></span>
                        </span>
                    </div>
                </div>
                <div class="ks-body ks-scrollable jspScrollable" data-auto-height="" style="height: 400px; overflow-y: auto; padding: 0px; width: 339px;" tabindex="0">

                    <div class="jspContainer" style="width: 339px; height: 550px;">
                        <div class="jspPane" style="padding: 0px; top: 0px; width: 329px;">
                            <ul class="ks-items">
                                <li class="ks-item ks-active">
                                    <a href="#">
                                        <span class="ks-group-amount">3</span>
                                        <div class="ks-body">
                                            <div class="ks-name">
                                                Group Chat
                                                <span class="ks-datetime">just now</span>
                                            </div>
                                            <div class="ks-message">
                                                <img src="http://bootdey.com/img/Content/avatar/avatar1.png" width="18" height="18" class="rounded-circle"> The weird future of movie theater food
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="ks-item ks-unread">
                                    <a href="#">
                                        <span class="ks-group-amount">5</span>
                                        <div class="ks-body">
                                            <div class="ks-name">
                                                Eric George
                                                <span class="ks-datetime">just now</span>
                                            </div>
                                            <div class="ks-message">
                                                <img src="http://bootdey.com/img/Content/avatar/avatar2.png" width="18" height="18" class="rounded-circle"> Why didn't he come and talk to me...
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="ks-item">
                                    <a href="#">
                                        <span class="ks-avatar">
                                            <img src="http://bootdey.com/img/Content/avatar/avatar3.png" width="36" height="36">
                                        </span>
                                        <div class="ks-body">
                                            <div class="ks-name">
                                                Eric George
                                                <span class="ks-datetime">just now</span>
                                            </div>
                                            <div class="ks-message">Why didn't he come and talk to me himse...</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="ks-item">
                                    <a href="#">
                                        <span class="ks-avatar">
                                            <img src="http://bootdey.com/img/Content/avatar/avatar4.png" width="36" height="36">
                                            <span class="badge badge-pill badge-danger ks-badge ks-notify">7</span>
                                        </span>
                                        <div class="ks-body">
                                            <div class="ks-name">
                                                Eric George
                                                <span class="ks-datetime">just now</span>
                                            </div>
                                            <div class="ks-message">Why didn't he come and talk to me himse...</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="ks-item">
                                    <a href="#">
                                        <span class="ks-avatar">
                                            <img src="http://bootdey.com/img/Content/avatar/avatar5.png" width="36" height="36">
                                        </span>
                                        <div class="ks-body">
                                            <div class="ks-name">
                                                Eric George
                                                <span class="ks-datetime">just now</span>
                                            </div>
                                            <div class="ks-message">Why didn't he come and talk to me himse...</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="ks-item">
                                    <a href="#">
                                        <span class="ks-avatar">
                                            <img src="http://bootdey.com/img/Content/avatar/avatar6.png" width="36" height="36">
                                        </span>
                                        <div class="ks-body">
                                            <div class="ks-name">
                                                Eric George
                                                <span class="ks-datetime">just now</span>
                                            </div>
                                            <div class="ks-message">Why didn't he come and talk to me himse...</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="ks-item">
                                    <a href="#">
                                        <span class="ks-avatar">
                                            <img src="http://bootdey.com/img/Content/avatar/avatar7.png" width="36" height="36">
                                        </span>
                                        <div class="ks-body">
                                            <div class="ks-name">
                                                Eric George
                                                <span class="ks-datetime">just now</span>
                                            </div>
                                            <div class="ks-message">Why didn't he come and talk to me himse...</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="ks-item">
                                    <a href="#">
                                        <span class="ks-avatar ks-online">
                                            <img src="http://bootdey.com/img/Content/avatar/avatar1.png" width="36" height="36">
                                        </span>
                                        <div class="ks-body">
                                            <div class="ks-name">
                                                Brian Diaz
                                                <span class="ks-datetime">just now</span>
                                            </div>
                                            <div class="ks-message">The weird future of movie theater food</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="ks-item">
                                    <a href="#">
                                        <span class="ks-group-amount">3 <span class="badge badge-pill badge-danger ks-badge ks-notify">7</span></span>
                                        <div class="ks-body">
                                            <div class="ks-name">
                                                Eric George
                                                <span class="ks-datetime">just now</span>
                                            </div>
                                            <div class="ks-message">Why didn't he come and talk to me himse...</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="ks-item">
                                    <a href="#">
                                        <span class="ks-avatar ks-offline">
                                            <img src="http://bootdey.com/img/Content/avatar/avatar2.png" width="36" height="36">
                                        </span>
                                        <div class="ks-body">
                                            <div class="ks-name">
                                                Eric George
                                                <span class="ks-datetime">just now</span>
                                            </div>
                                            <div class="ks-message">Why didn't he come and talk to me himse...</div>
                                        </div>
                                    </a>
                                </li>

                                <li class="ks-item">
                                    <a href="#">
                                        <span class="ks-avatar">
                                            <img src="http://bootdey.com/img/Content/avatar/avatar3.png" width="36" height="36">
                                        </span>
                                        <div class="ks-body">
                                            <div class="ks-name">
                                                Eric George
                                                <span class="ks-datetime">just now</span>
                                            </div>
                                            <div class="ks-message">Why didn't he come and talk to me himse...</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="ks-item">
                                    <a href="#">
                                        <span class="ks-avatar">
                                            <img src="http://bootdey.com/img/Content/avatar/avatar4.png" width="36" height="36">
                                        </span>
                                        <div class="ks-body">
                                            <div class="ks-name">
                                                Eric George
                                                <span class="ks-datetime">just now</span>
                                            </div>
                                            <div class="ks-message">Why didn't he come and talk to me himse...</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="ks-item">
                                    <a href="#">
                                        <span class="ks-avatar">
                                            <img src="http://bootdey.com/img/Content/avatar/avatar5.png" width="36" height="36">
                                        </span>
                                        <div class="ks-body">
                                            <div class="ks-name">
                                                Lauren Sandoval
                                                <span class="ks-datetime">just now</span>
                                            </div>
                                            <div class="ks-message">The weird future of movie theater food</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="ks-item ks-closed">
                                    <a href="#">
                                        <span class="ks-avatar">
                                            <img src="http://bootdey.com/img/Content/avatar/avatar6.png" width="36" height="36">
                                        </span>
                                        <div class="ks-body">
                                            <div class="ks-name">
                                                Brian Diaz
                                                <span class="ks-datetime">just now</span>
                                            </div>
                                            <div class="ks-message">The weird future of movie theater food</div>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                      
                        <div class="jspVerticalBar">
                            <div class="jspCap jspCapTop"></div>
                            <div class="jspTrack" style="height: 550px;">
                                <div class="jspDrag" style="height: 261px;">
                                    <div class="jspDragTop"></div>
                                    <div class="jspDragBottom"></div>
                                </div>
                            </div>
                            <div class="jspCap jspCapBottom"></div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="ks-messages ks-messenger__messages" >
                <div class="ks-header">
                    <div class="ks-description">
                        <div class="ks-name">Chat name</div>
                        <div class="ks-amount">2 members</div>
                    </div>
                    <div class="ks-controls">
                        <div class="dropdown">
                            <button class="btn btn-primary-outline ks-light ks-no-text ks-no-arrow" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="la la-ellipsis-h ks-icon"></span>
                            </button>
                            <div class="dropdown-menu dropdown-menu-right ks-simple" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="#">
                                    <span class="la la-user-plus ks-icon"></span>
                                    <span class="ks-text">Add members</span>
                                </a>
                                <a class="dropdown-item" href="#">
                                    <span class="la la-eye-slash ks-icon"></span>
                                    <span class="ks-text">Mark as unread</span>
                                </a>
                                <a class="dropdown-item" href="#">
                                    <span class="la la-bell-slash-o ks-icon"></span>
                                    <span class="ks-text">Mute notifications</span>
                                </a>
                                <a class="dropdown-item" href="#">
                                    <span class="la la-mail-forward ks-icon"></span>
                                    <span class="ks-text">Forward</span>
                                </a>
                                <a class="dropdown-item" href="#">
                                    <span class="la la-ban ks-icon"></span>
                                    <span class="ks-text">Spam</span>
                                </a>
                                <a class="dropdown-item" href="#">
                                    <span class="la la-trash-o ks-icon"></span>
                                    <span class="ks-text">Delete</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="ks-body ks-scrollable jspScrollable" data-auto-height="" data-reduce-height=".ks-footer" data-fix-height="32" style="height: 350px; overflow: scroll; padding: 0px; width: 701px;" tabindex="0">
                    <div class="jspContainer" style="width: 701px; height: 481px;">
                        <div class="jspPane" style="padding: 0px; top: 0px; width: 691px;">
                            <ul class="ks-items" id="aaaaa">
                                <li class="ks-item ks-self">
                                    <span class="ks-avatar ks-offline">
                                        <img src="http://bootdey.com/img/Content/avatar/avatar1.png" width="36" height="36" class="rounded-circle">
                                    </span>
                                    <div class="ks-body">
                                        <div class="ks-header">
                                            <span class="ks-name">Brian Diaz</span>
                                            <span class="ks-datetime">6:46 PM</span>
                                        </div>
                                        <div class="ks-message">The weird future of movie theater food</div>
                                    </div>
                                </li>
                          
                         
                            </ul>
                        </div>
                        <div class="jspVerticalBar">
                            <div class="jspCap jspCapTop"></div>
                            <div class="jspTrack" style="height: 481px;">
                                <div class="jspDrag" style="height: 206px;">
                                    <div class="jspDragTop"></div>
                                    <div class="jspDragBottom"></div>
                                </div>
                            </div>
                            <div class="jspCap jspCapBottom"></div>
                        </div>
                    </div>
                </div>
                <div class="ks-footer">
                    <textarea class="form-control" id="chatContent"placeholder="Type something..."></textarea>
                    <div class="ks-controls">
                        <button class="btn btn-primary" onclick="submitFunction();">전송</button>
                        <a href="#" class="la la-paperclip ks-attachment"></a>
                        <div class="dropdown dropup">
                            <button class="btn btn-link ks-smile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="la la-smile-o"></span>
                            </button>
                         <!--    <div class="dropdown-menu dropdown-menu-right ks-scrollable ks-smileys" aria-labelledby="dropdownMenuButton" style="overflow: hidden; padding: 0px; width: 200px;">

                                <div class="jspContainer" style="width: 198px; height: 165px;">
                                    <div class="jspPane" style="padding: 0px; top: 0px; left: 0px; width: 100px;">
                                        <div class="ks-smileys-wrapper">
                                            <table>
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <img src="http://bootdey.com/img/Content/avatar/avatar1.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="http://bootdey.com/img/Content/avatar/avatar2.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="http://bootdey.com/img/Content/avatar/avatar3.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="http://bootdey.com/img/Content/avatar/avatar4.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="http://bootdey.com/img/Content/avatar/avatar1.png" width="20" height="20">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <img src="http://bootdey.com/img/Content/avatar/avatar2.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="http://bootdey.com/img/Content/avatar/avatar3.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="http://bootdey.com/img/Content/avatar/avatar4.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="http://bootdey.com/img/Content/avatar/avatar5.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="http://bootdey.com/img/Content/avatar/avatar6.png" width="20" height="20">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <img src="http://bootdey.com/img/Content/avatar/avatar1.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="http://bootdey.com/img/Content/avatar/avatar7.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="http://bootdey.com/img/Content/avatar/avatar1.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="http://bootdey.com/img/Content/avatar/avatar2.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="http://bootdey.com/img/Content/avatar/avatar3.png" width="20" height="20">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <img src="http://bootdey.com/img/Content/avatar/avatar1.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="http://bootdey.com/img/Content/avatar/avatar2.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="http://bootdey.com/img/Content/avatar/avatar3.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="http://bootdey.com/img/Content/avatar/avatar4.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="http://bootdey.com/img/Content/avatar/avatar5.png" width="20" height="20">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <img src="http://bootdey.com/img/Content/avatar/avatar1.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="http://bootdey.com/img/Content/avatar/avatar2.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="http://bootdey.com/img/Content/avatar/avatar3.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="http://bootdey.com/img/Content/avatar/avatar4.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="http://bootdey.com/img/Content/avatar/avatar5.png" width="20" height="20">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <img src="http://bootdey.com/img/Content/avatar/avatar1.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="http://bootdey.com/img/Content/avatar/avatar2.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="http://bootdey.com/img/Content/avatar/avatar3.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="http://bootdey.com/img/Content/avatar/avatar4.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="http://bootdey.com/img/Content/avatar/avatar5.png" width="20" height="20">
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div> -->
                        </div>
                    </div>
                </div>
            </div>
            <div class="ks-info ks-messenger__info">
                <div class="ks-header">
                    User Info
                </div>
                <div class="ks-body">
                    <div class="ks-item ks-user">
                        <span class="ks-avatar ks-online">
                            <img src="http://bootdey.com/img/Content/avatar/avatar1.png" width="36" height="36" class="rounded-circle">
                        </span>
                        <span class="ks-name">
                            Lauren Sandoval
                        </span>
                    </div>

                    <div class="ks-item">
                        <div class="ks-name">Username</div>
                        <div class="ks-text">
                            @lauren.sandoval
                        </div>
                    </div>
                    <div class="ks-item">
                        <div class="ks-name">Email</div>
                        <div class="ks-text">
                            lauren.sandoval@example.com
                        </div>
                    </div>
                    <div class="ks-item">
                        <div class="ks-name">Phone Number</div>
                        <div class="ks-text">
                            +1(555) 555-555
                        </div>
                    </div>
                </div>
                <div class="ks-footer">
                    <div class="ks-item">
                        <div class="ks-name">Created</div>
                        <div class="ks-text">
                            Febriary 17, 2016 at 11:38 PM
                        </div>
                    </div>
                    <div class="ks-item">
                        <div class="ks-name">Last Activity</div>
                        <div class="ks-text">
                            1 minute ago
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</body>
</html>