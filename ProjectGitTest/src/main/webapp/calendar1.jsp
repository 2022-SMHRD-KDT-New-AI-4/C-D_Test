<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

<style>
table {
            clear: both;
            width: 70%;
        }

        th {
            height: 50px;
            width: 70px;
            background-color: orange;

        }

        td {
            text-align: left;
            height: 100px;
            width: 70px;
            background-color: #FFFDC5;
        }

        input {
            height: 50px;
            width: 70px;
            border: none;
            background-color: orange;
            font-size: 30px;
        }

.date {
vertical-align: top;
} 

.year_mon {
	font-size: 25px;
}

.colToday {
	background-color: #FFA07A;
}
</style>

<script>
        $(function(){
            var today = new Date();
            var date = new Date();           

            $("input[name=preMon]").click(function() { // 이전달
                $("#calendar > tbody > td").remove();
                $("#calendar > tbody > tr").remove();
                today = new Date ( today.getFullYear(), today.getMonth()-1, today.getDate());
                buildCalendar();
            })
            
            $("input[name=nextMon]").click(function(){ //다음달
                $("#calendar > tbody > td").remove();
                $("#calendar > tbody > tr").remove();
                today = new Date ( today.getFullYear(), today.getMonth()+1, today.getDate());
                buildCalendar();
            })


            function buildCalendar() {
                
                nowYear = today.getFullYear();
                nowMonth = today.getMonth();
                firstDate = new Date(nowYear,nowMonth,1).getDate();
                firstDay = new Date(nowYear,nowMonth,1).getDay(); //1st의 요일
                lastDate = new Date(nowYear,nowMonth+1,0).getDate();

                if((nowYear%4===0 && nowYear % 100 !==0) || nowYear%400===0) { //윤년 적용
                    lastDate[1]=29;
                }

                $(".year_mon").text(nowYear+"년 "+(nowMonth+1)+"월");

                for (i=0; i<firstDay; i++) { //첫번째 줄 빈칸
                    $("#calendar tbody:last").append("<td></td>");
                }
                for (i=1; i <=lastDate; i++){ // 날짜 채우기
                    plusDate = new Date(nowYear,nowMonth,i).getDay();
                    if (plusDate==0) {
                        $("#calendar tbody:last").append("<tr></tr>");
                    }
                    $("#calendar tbody:last").append("<td id='dt"+i+"' class='date' onclick='go("+i+")'>" + i + "</td>");
                }
                if($("#calendar > tbody > td").length%7!=0) { //마지막 줄 빈칸
                    for(i=1; i<= $("#calendar > tbody > td").length%7; i++) {
                        $("#calendar tbody:last").append("<td></td>");
                    }
                }
                $(".date").each(function(index){ // 오늘 날짜 표시
                    if(nowYear==date.getFullYear() && nowMonth==date.getMonth() && $(".date").eq(index).text()==date.getDate()) {
                        $(".date").eq(index).addClass('colToday');
                    }
                }) 
            }
            buildCalendar();
            
            function go(i){
                alert("클릭");            
            }



        })
    </script>

</head>
<body>
	<table id="calendar">
		<thead>
			<tr>
				<th><input name="preMon" type="button" value="<"></th>
				<th colspan="5" class="year_mon"></th>
				<th><input name="nextMon" type="button" value=">"></th>
			</tr>
			<tr>
				<th>일</th>
				<th>월</th>
				<th>화</th>
				<th>수</th>
				<th>목</th>
				<th>금</th>
				<th>토</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
</body>
</html>