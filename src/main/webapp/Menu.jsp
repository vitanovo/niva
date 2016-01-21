<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: voyager
  Date: 2015.11.03.
  Time: 14:57
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Menu</title>
  <jsp:include page="Header.jsp"></jsp:include>
</head>
<%
  String sessionid = session.getId();
  String sid = request.getParameter("sessionId");
  if (sid == null){
    sid=sessionid;
    session.setAttribute("sessionId", sid);
  }

  String parameter = request.getParameter("parameter");
  if(parameter == null ) {
    parameter="TV & Home Theater : ";
    session.setAttribute("parameter", parameter);
  }
%>
<body>
<!--
  <div class="search-bar" role="search">
    <form action="#" name="frmSearch" method="GET">
      <label for="gh-search-input"></label>
      <input autocomplete="off" class="autocomplete-enabled" value="" name="st" maxlength="90" placeholder="" id="gh-search-input" type="text">
      <div id="autocompleteContainer"></div>

      <button type="submit" class="search-button" title="Search" value="Search">
        <span class="header-icon-search" aria-hidden="true">
        </span>
      </button>
      <input value="" name="sp" type="hidden">
-->

</form>
</div>
</div>
</div>
<div class="separotor">
  <ul>

  </ul>
</div>
<div id="main-menu">
  <ul id="navmenu-v">
    <li><a href="#">TV & Home Theater</a>
      <ul>
        <li><a href="#">4K Ultra HD TVs</a>
          <ul id="4K-Ultra-HD">

            <form  method="get"  action="/java2/tv" id="4kuhd1">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd1').submit();">
                <!-- tvdaoimpl.getByScreenSize("1").getTvscreensize()-->
                <%=request.getAttribute("4kid1")%>
                <input type="hidden" name="4kid1" value="1" />
              </a></li>
            </form>

            <form  method="get" action="/java2/tv" id="4kuhd2">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd2').submit();">
                <%=request.getAttribute("4kid2")%>
                <input type="hidden" name="4kid2" value="2" />
              </a></li>
            </form>

            <form  method="get" action="/java2/tv" id="4kuhd3">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd3').submit();">
                <%=request.getAttribute("4kid3")%>
                <input type="hidden" name="4kid3" value="3" /></a></li>
            </form>

            <form  method="get" action="/java2/tv" id="4kuhd4">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd4').submit();">
                <%=request.getAttribute("4kid4")%>
                <input type="hidden" name="4kid4" value="4" /></a></li>
            </form>


            <form  method="get" action="/java2/tv" id="4kuhd5">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd5').submit();">
                <%=request.getAttribute("4kid5")%>
                <input type="hidden" name="4kid5" value="5" /></a></li>
            </form>

            <form  method="get" action="/java2/tv" id="4kuhd6">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd6').submit();">
                <%=request.getAttribute("4kid6")%>
                <input type="hidden" name="4kid6" value="6" /></a></li>
            </form>

            <form  method="get" action="/java2/tv" id="4kuhd7">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd7').submit();">
                <%=request.getAttribute("4kid7")%>
                <input type="hidden" name="4kid7" value="7" /></a></li>
            </form>

          </ul>
        </li>

        <li><a href="#">LED TVs</a>
          <ul>
            <form  method="get"  action="/java2/tv" id="4kuhd10">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd10').submit();">
                <%=request.getAttribute("4kid10")%>
                <input type="hidden" name="4kid10" value="10" /></a></li>
            </form>

            <form  method="get"  action="/java2/tv" id="4kuhd11">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd11').submit();">
                <%=request.getAttribute("4kid11")%>
                <input type="hidden" name="4kid11" value="11" /></a></li>
            </form>

            <form  method="get"  action="/java2/tv" id="4kuhd12">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd12').submit();">
                <%=request.getAttribute("4kid12")%>
                <input type="hidden" name="4kid12" value="12" /></a></li>
            </form>

            <form  method="get"  action="/java2/tv" id="4kuhd13">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd13').submit();">
                <%=request.getAttribute("4kid13")%>
                <input type="hidden" name="4kid13" value="13" /></a></li>
            </form>

            <form  method="get"  action="/java2/tv" id="4kuhd14">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd14').submit();">
                <%=request.getAttribute("4kid14")%>
                <input type="hidden" name="4kid14" value="14" /></a></li>
            </form>

            <form  method="get"  action="/java2/tv" id="4kuhd15">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd15').submit();">
                <%=request.getAttribute("4kid15")%>
                <input type="hidden" name="4kid15" value="15" /></a></li>
            </form>

            <form  method="get"  action="/java2/tv" id="4kuhd16">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd16').submit();">
                <%=request.getAttribute("4kid16")%>
                <input type="hidden" name="4kid16" value="16" /></a></li>
            </form>

            <form  method="get"  action="/java2/tv" id="4kuhd17">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd17').submit();">
                <%=request.getAttribute("4kid17")%>
                <input type="hidden" name="4kid17" value="17" /></a></li>
            </form>

            <form  method="get"  action="/java2/tv" id="4kuhd18">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd18').submit();">
                <%=request.getAttribute("4kid18")%>
                <input type="hidden" name="4kid18" value="18" /></a></li>
            </form>

            <form  method="get"  action="/java2/tv" id="4kuhd19">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd19').submit();">
                <%=request.getAttribute("4kid19")%>
                <input type="hidden" name="4kid18" value="19" /></a></li>
            </form>
          </ul>
        </li>
        <li><a href="#">Outdoor TVs</a>
          <ul>
            <form  method="get"  action="/java2/tv" id="4kuhd20">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd10').submit();">
                <%=request.getAttribute("4kid10")%>
                <input type="hidden" name="4kuhd20" value="10" /></a></li>
            </form>
            <form  method="get"  action="/java2/tv" id="4kuhd21">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd10').submit();">
                <%=request.getAttribute("4kid10")%>
                <input type="hidden" name="4kid10" value="10" /></a></li>
            </form>
            <form  method="get"  action="/java2/tv" id="4kuhd22">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd10').submit();">
                <%=request.getAttribute("4kid10")%>
                <input type="hidden" name="4kid10" value="10" /></a></li>
            </form>
            <form  method="get"  action="/java2/tv" id="4kuhd23">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd10').submit();">
                <%=request.getAttribute("4kid10")%>
                <input type="hidden" name="4kid10" value="10" /></a></li>
            </form>
            <form  method="get"  action="/java2/tv" id="4kuhd24">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd10').submit();">
                <%=request.getAttribute("4kid10")%>
                <input type="hidden" name="4kid10" value="10" /></a></li>
            </form>
            <form  method="get"  action="/java2/tv" id="4kuhd25">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd10').submit();">
                <%=request.getAttribute("4kid10")%>
                <input type="hidden" name="4kid10" value="10" /></a></li>
            </form>
          </ul>
        </li>
        <li><a href="#">OLED TVs</a>
          <ul>
            <form  method="get"  action="/java2/tv" id="4kuhd30">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd10').submit();">
                <%=request.getAttribute("4kid10")%>
                <input type="hidden" name="4kid10" value="10" /></a></li>
            </form>
            <form  method="get"  action="/java2/tv" id="4kuhd31">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd10').submit();">
                <%=request.getAttribute("4kid10")%>
                <input type="hidden" name="4kid10" value="10" /></a></li>
            </form>
            <form  method="get"  action="/java2/tv" id="4kuhd32">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd10').submit();">
                <%=request.getAttribute("4kid10")%>
                <input type="hidden" name="4kid10" value="10" /></a></li>
            </form>
            <form  method="get"  action="/java2/tv" id="4kuhd33">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd10').submit();">
                <%=request.getAttribute("4kid10")%>
                <input type="hidden" name="4kid10" value="10" /></a></li>
            </form>
            <form  method="get"  action="/java2/tv" id="4kuhd34">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd10').submit();">
                <%=request.getAttribute("4kid10")%>
                <input type="hidden" name="4kid10" value="10" /></a></li>
            </form>
            <form  method="get"  action="/java2/tv" id="4kuhd35">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd10').submit();">
                <%=request.getAttribute("4kid10")%>
                <input type="hidden" name="4kid10" value="10" /></a></li>
            </form>
          </ul>
        </li>
        <li><a href="#">Curved TVs</a>
          <ul>
            <form  method="get"  action="/java2/tv" id="4kuhd40">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd10').submit();">
                <%=request.getAttribute("4kid10")%>
                <input type="hidden" name="4kid10" value="10" /></a></li>
            </form>
            <form  method="get"  action="/java2/tv" id="4kuhd41">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd10').submit();">
                <%=request.getAttribute("4kid10")%>
                <input type="hidden" name="4kid10" value="10" /></a></li>
            </form>
            <form  method="get"  action="/java2/tv" id="4kuhd42">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd10').submit();">
                <%=request.getAttribute("4kid10")%>
                <input type="hidden" name="4kid10" value="10" /></a></li>
            </form>
            <form  method="get"  action="/java2/tv" id="4kuhd43">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd10').submit();">
                <%=request.getAttribute("4kid10")%>
                <input type="hidden" name="4kid10" value="10" /></a></li>
            </form>
            <form  method="get"  action="/java2/tv" id="4kuhd44">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd10').submit();">
                <%=request.getAttribute("4kid10")%>
                <input type="hidden" name="4kid10" value="10" /></a></li>
            </form>
            <form  method="get"  action="/java2/tv" id="4kuhd45">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd10').submit();">
                <%=request.getAttribute("4kid10")%>
                <input type="hidden" name="4kid10" value="10" /></a></li>
            </form>
          </ul>
        </li>
        <li><a href="#">Projectors & Screens</a>
          <ul>
            <form  method="get"  action="/java2/tv" id="4kuhd50">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd10').submit();">
                <%=request.getAttribute("4kid10")%>
                <input type="hidden" name="4kid10" value="10" /></a></li>
            </form>
            <form  method="get"  action="/java2/tv" id="4kuhd51">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd10').submit();">
                <%=request.getAttribute("4kid10")%>
                <input type="hidden" name="4kid10" value="10" /></a></li>
            </form>
            <form  method="get"  action="/java2/tv" id="4kuhd52">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd10').submit();">
                <%=request.getAttribute("4kid10")%>
                <input type="hidden" name="4kid10" value="10" /></a></li>
            </form>
            <form  method="get"  action="/java2/tv" id="4kuhd53">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd10').submit();">
                <%=request.getAttribute("4kid10")%>
                <input type="hidden" name="4kid10" value="10" /></a></li>
            </form>
            <form  method="get"  action="/java2/tv" id="4kuhd54">
              <li><a href="javascript:;" onclick="document.getElementById('4kuhd10').submit();">
                <%=request.getAttribute("4kid10")%>
                <input type="hidden" name="4kid10" value="10" /></a></li>
            </form>
          </ul>
        </li>
        <li>
          <form  method="get"  action="/java2/tv" id="4kuhd99">
            <a href="javascript:;" onclick="document.getElementById('4kuhd99').submit();">See All Televisions</a>
            <input type="hidden" name="4kid99" value="99" />
          </form>
        </li>
      </ul>
    <li><a href="#">Cell Phones</a>
      <ul>
        <li><a href="#">Apple</a>
          <ul>
            <li><a href="">Template 1</a></li>
            <li><a href="">Template 2</a></li>
            <li><a href="">Template 3</a></li>
            <li><a href="">Template 4</a></li>
            <li><a href="">Template 5</a></li>
            <li><a href="">Template 6</a></li>
            <li><a href="">Template 7</a></li>
            <li><a href="">Template 8</a></li>
          </ul>
        </li>
        <li><a href="#">Samsung</a></li>
        <li><a href="#">LG</a></li>
        <li><a href="#">HTC</a></li>
        <li><a href="#">Motorola</a></li>
        <li><a href="#">BlackBerry</a></li>
        <li><a href="#">Kyocera</a></li>
        <li><a href="#">Microsoft</a></li>
        <li><a href="#">Pantech</a></li>
        <li><a href="#">Sharp</a></li>
        <li><a href="#">Sony</a></li>
      </ul>
    </li>
    <li><a href="#">Computers & Tablets</a>
      <ul>
        <li><a href="#">Laptops</a>
          <ul>
            <li><a href="">Template 1</a></li>
            <li><a href="">Template 2</a></li>
            <li><a href="">Template 3</a></li>
            <li><a href="">Template 4</a></li>
            <li><a href="">Template 5</a></li>
            <li><a href="">Template 6</a></li>
            <li><a href="">Template 7</a></li>
            <li><a href="">Template 8</a></li>
          </ul>
        </li>
        <li><a href="#">Tablets</a></li>
        <li><a href="#">Desktops & All-in-One Computers</a></li>
        <li><a href="#">Monitors</a></li>
        <li><a href="#">Printers, Ink & Toner</a></li>
        <li><a href="#">Hard Drives & Storage</a></li>
        <li><a href="#">Networking & Wireless</a></li>
        <li><a href="#">Computer Cards & Components</a></li>
        <li><a href="#">iPad</a></li>
        <li><a href="#">PC Gaming</a></li>
      </ul>
    </li>
    <li><a href="#">Cameras & Camcorders</a>
      <ul>
        <li><a href="#">DSLR Cameras</a>
          <ul>
            <li><a href="">Template 1</a></li>
            <li><a href="">Template 2</a></li>
            <li><a href="">Template 3</a></li>
            <li><a href="">Template 4</a></li>
            <li><a href="">Template 5</a></li>
            <li><a href="">Template 6</a></li>
            <li><a href="">Template 7</a></li>
            <li><a href="">Template 8</a></li>
          </ul>
        </li>
        <li><a href="#">Mirrorless Cameras</a></li>
        <li><a href="#">Point & Shoot Cameras </a></li>
        <li><a href="#">Traditional Camcorders</a></li>
        <li><a href="#">Action Camcorders </a></li>
        <li><a href="#">Traditional Camcorders </a></li>
        <li><a href="#">Aerial Drones</a></li>

      </ul>
    </li>
    <li><a href="#">Audio</a>
      <ul>
        <li><a href="#">iPod/MP3</a>
          <ul>
            <li><a href="">Template 1</a></li>
            <li><a href="">Template 2</a></li>
            <li><a href="">Template 3</a></li>
            <li><a href="">Template 4</a></li>
            <li><a href="">Template 5</a></li>
            <li><a href="">Template 6</a></li>
            <li><a href="">Template 7</a></li>
            <li><a href="">Template 8</a></li>
          </ul>
        </li>
        <li><a href="#">Bluetooth & Wireless Speakers</a></li>
        <li><a href="#">Docks, Radios & Boomboxes</a></li>
        <li><a href="#">Headphones</a></li>
        <li><a href="#">Home Audio</a></li>
        <li><a href="#">Speakers</a></li>
        <li><a href="#">Satellite Radio</a></li>
        <li><a href="#">Marine Audio</a></li>
      </ul>
    </li>
    <li><a href="#">Car Electronics & GPS</a>
      <ul>
        <li><a href="#">Car Audio</a>
          <ul>
            <li><a href="">Template 1</a></li>
            <li><a href="">Template 2</a></li>
            <li><a href="">Template 3</a></li>
            <li><a href="">Template 4</a></li>
            <li><a href="">Template 5</a></li>
            <li><a href="">Template 6</a></li>
            <li><a href="">Template 7</a></li>
            <li><a href="">Template 8</a></li>
          </ul>
        </li>
        <li><a href="#">GPS Navigation & Accessories</a></li>
        <li><a href="#">Satellite Radio</a></li>
        <li><a href="#">Car Security & Remote Start</a></li>
        <li><a href="#">Car Safety & Convenience</a></li>
        <li><a href="#">Car Video</a></li>
        <li><a href="#">Radar Detectors</a></li>
      </ul>
    </li>
    <li><a href="#">Video Games, Movies & Music</a>
      <ul>
        <li><a href="">Video Games</a>
          <ul>
            <li><a href="#">Xbox One</a></li>
            <li><a href="#">Xbox 360</a></li>
            <li><a href="#">PlayStation 4</a></li>
            <li><a href="#">PlayStation 3</a></li>
            <li><a href="#">Wii U</a></li>
            <li><a href="#">Nintendo 3DS</a></li>
            <li><a href="#">PC Gaming</a></li>
          </ul>
        </li>
        <li><a href="#">Movies & TV Shows</a></li>
        <li><a href="#">Music</a></li>
      </ul>
    </li>
    <li><a href="#">Health, Fitness & Beauty</a>
      <ul>
        <li><a href="#">Apple</a>
          <ul>
            <li><a href="">Template 1</a></li>
            <li><a href="">Template 2</a></li>
            <li><a href="">Template 3</a></li>
            <li><a href="">Template 4</a></li>
            <li><a href="">Template 5</a></li>
            <li><a href="">Template 6</a></li>
            <li><a href="">Template 7</a></li>
            <li><a href="">Template 8</a></li>
          </ul>
        </li>
        <li><a href="#">Samsung</a></li>
        <li><a href="#">LG</a></li>
        <li><a href="#">HTC</a></li>
        <li><a href="#">Motorola</a></li>
        <li><a href="#">BlackBerry</a></li>
        <li><a href="#">Kyocera</a></li>
        <li><a href="#">Microsoft</a></li>
        <li><a href="#">Pantech</a></li>
        <li><a href="#">Sharp</a></li>
        <li><a href="#">Sony</a></li>
      </ul>
    </li>
    <li><a href="#">Toys, Games & Drones</a>
      <ul>
        <li><a href="#">Action Figures</a>
          <ul>
            <li><a href="">Template 1</a></li>
            <li><a href="">Template 2</a></li>
            <li><a href="">Template 3</a></li>
            <li><a href="">Template 4</a></li>
            <li><a href="">Template 5</a></li>
            <li><a href="">Template 6</a></li>
            <li><a href="">Template 7</a></li>
            <li><a href="">Template 8</a></li>
          </ul>
        </li>
        <li><a href="#">Drones & Accessories</a></li>
        <li><a href="#">App-Enabled Toys</a></li>
        <li><a href="#">Arcade Games</a></li>
        <li><a href="#">Arts & Crafts</a></li>
        <li><a href="#">Building Sets & Blocks</a></li>
        <li><a href="#">Diecast & Toy Vehicles</a></li>
        <li><a href="#">Game Room</a></li>
        <li><a href="#">Games, Puzzles & Cards</a></li>
        <li><a href="#">Kids' Electronics</a></li>
        <li><a href="#">Learning & Education</a></li>
      </ul>
    </li>
    <li><a href="#">Wearable Technology</a>
      <ul>
        <li><a href="#">Apple Watch</a>
          <ul>
            <li><a href="">Template 1</a></li>
            <li><a href="">Template 2</a></li>
            <li><a href="">Template 3</a></li>
            <li><a href="">Template 4</a></li>
            <li><a href="">Template 5</a></li>
            <li><a href="">Template 6</a></li>
            <li><a href="">Template 7</a></li>
            <li><a href="">Template 8</a></li>
          </ul>
        </li>
        <li><a href="#">Activity Trackers & Pedometers</a></li>
        <li><a href="#">Smartwatches & Accessories</a></li>
        <li><a href="#">Fitness & GPS Watches</a></li>
        <li><a href="#">Headphones</a></li>
        <li><a href="#">Smart Sports Equipment</a></li>
      </ul>
    </li>
  </ul>
</div>
</div>

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>