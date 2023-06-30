<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>

<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">

        <title>中国古代艺术品收藏</title>

        <!-- CSS FILES -->                
        <link rel="preconnect" href="https://fonts.googleapis.com">

        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

        <link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,wght@0,400;0,500;0,700;1,400&display=swap" rel="stylesheet">

        <link href="css/bootstrap.min.css" rel="stylesheet">

        <link href="css/bootstrap-icons.css" rel="stylesheet">

        <link href="css/templatemo-tiya-golf-club.css" rel="stylesheet">
        

    </head>
    
    <body>

        <main>

            <nav class="navbar navbar-expand-lg">                
                <div class="container">
                    <a class="navbar-brand d-flex align-items-center" href="index.html">
                        <img src="images/icon02.png" class="navbar-brand-image img-fluid" alt="Tiya Golf Club">
                        <span class="navbar-brand-text">
                           <font face="Georgia"color="white" size="2">Ephemeral</font>
                            <small><font face="Georgia"color="white">Art Gallery</font></small>
                        </span>
                    </a>

                    <div class="d-lg-none ms-auto me-3">
                        <a class="btn custom-btn custom-border-btn" data-bs-toggle="offcanvas" href="#offcanvasExample" role="button" aria-controls="offcanvasExample">用户登录</a>
                    </div>
    
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
    
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ms-lg-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="index.html#section_1"><font face="楷体" size="4">主页</font></a>
                            </li>
    
                            <li class="nav-item">
                                <a class="nav-link" href="index.html#section_2"><font face="楷体" size="4">关于</font></a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="index.html#section_3"><font face="楷体" size="4">购票须知</font></a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="index.html#section_4"><font face="楷体" size="4">官方活动</font></a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="index.html#section_5"><font face="楷体" size="4">联系我们</font></a>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarLightDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false"><font face="楷体" size="4">当月策展</font></a>

                                <ul class="dropdown-menu dropdown-menu-light" aria-labelledby="navbarLightDropdownMenuLink">
                                    <li><a class="dropdown-item" href="event-listing.html"><font face="楷体" size="2">活动列表</font></a></li>

                                    <li><a class="dropdown-item active" href="event-detail.html"><font face="楷体" size="2">活动详情</font></a></li>
                                </ul>
                            </li>
                        </ul>

                        <div class="d-none d-lg-block ms-lg-3">
                            <a class="btn custom-btn custom-border-btn" data-bs-toggle="offcanvas" href="#offcanvasExample" role="button" aria-controls="offcanvasExample">${userInfo.userName}</a>
                        </div>
                    </div>
                </div>
            </nav>

            <div class="offcanvas offcanvas-end" data-bs-scroll="true" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">                
                <div class="offcanvas-header">
                    <h5 class="offcanvas-title" id="offcanvasExampleLabel"><font face="楷体" size="4">用户登录</font></h5>
                    
                    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                
                <div class="offcanvas-body d-flex flex-column">
                    <form class="custom-form member-login-form" action="login.do" method="post" role="form">

                        <div class="member-login-form-body">
                            <div class="mb-4">
                            
                                <label class="form-label mb-2" for="member-login-number"><font face="楷体" size="4">用户名:</font></label>

                                <input type="email" placeholder="邮箱"
           name="username" id=username size="34" required>
                            </div>

                            <div class="mb-4">
                                <label class="form-label mb-2" for="member-login-password"><font face="楷体" size="4">密码:</font></label>

                                <input type="password" placeholder="密码" name="pwd" id=pwd size="34" required>
                            </div>

                            <div class="form-check mb-4">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                              
                                <label class="form-check-label" for="flexCheckDefault">
                                    <font face="楷体" size="4">记住我</font>
                                </label>
                            </div>

                            <div class="col-lg-5 col-md-7 col-8 mx-auto">
                              <input type="submit" value="登录" > 
                                
                            </div>
                             
                            <div class="text-center my-4">
                                <a href="#"><font face="楷体" size="4">忘记密码？</font></a>
                            </div>
                        </div>
                    </form>

                    <div class="mt-auto mb-5">
                        <p>
                            <strong class="text-white me-3"><font face="楷体" size="4">疑问</font></strong>

                            <a href="tel: 010-020-0340" class="contact-link">
                            	080-1111-2222
                            </a>
                        </p>
                    </div>
                </div>

                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#3D405B" fill-opacity="1" d="M0,224L34.3,192C68.6,160,137,96,206,90.7C274.3,85,343,139,411,144C480,149,549,107,617,122.7C685.7,139,754,213,823,240C891.4,267,960,245,1029,224C1097.1,203,1166,181,1234,160C1302.9,139,1371,117,1406,106.7L1440,96L1440,320L1405.7,320C1371.4,320,1303,320,1234,320C1165.7,320,1097,320,1029,320C960,320,891,320,823,320C754.3,320,686,320,617,320C548.6,320,480,320,411,320C342.9,320,274,320,206,320C137.1,320,69,320,34,320L0,320Z"></path></svg>
            </div>
            

            <section class="hero-section hero-50 d-flex justify-content-center align-items-center" id="section_1">

                <div class="section-overlay"></div>

                <svg viewBox="0 0 1962 178" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><path fill="#3D405B" d="M 0 114 C 118.5 114 118.5 167 237 167 L 237 167 L 237 0 L 0 0 Z" stroke-width="0"></path> <path fill="#3D405B" d="M 236 167 C 373 167 373 128 510 128 L 510 128 L 510 0 L 236 0 Z" stroke-width="0"></path> <path fill="#3D405B" d="M 509 128 C 607 128 607 153 705 153 L 705 153 L 705 0 L 509 0 Z" stroke-width="0"></path><path fill="#3D405B" d="M 704 153 C 812 153 812 113 920 113 L 920 113 L 920 0 L 704 0 Z" stroke-width="0"></path><path fill="#3D405B" d="M 919 113 C 1048.5 113 1048.5 148 1178 148 L 1178 148 L 1178 0 L 919 0 Z" stroke-width="0"></path><path fill="#3D405B" d="M 1177 148 C 1359.5 148 1359.5 129 1542 129 L 1542 129 L 1542 0 L 1177 0 Z" stroke-width="0"></path><path fill="#3D405B" d="M 1541 129 C 1751.5 129 1751.5 138 1962 138 L 1962 138 L 1962 0 L 1541 0 Z" stroke-width="0"></path></svg>

                <div class="container">
                    <div class="row">

                        <div class="col-lg-6 col-12">

                            <h1 class="text-white mb-4 pb-2"><p><font face="Georgia" size="7" color="white">Ephemeral Art Gallery</font></p></h1>

                            <a href="#section_2" class="btn custom-btn smoothscroll me-3"><font face="楷体" size="4">了解更多</font></a>
                        </div>

                    </div>
                </div>

              <svg viewBox="0 0 1962 178" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><path fill="#ffffff" d="M 0 114 C 118.5 114 118.5 167 237 167 L 237 167 L 237 0 L 0 0 Z" stroke-width="0"></path> <path fill="#ffffff" d="M 236 167 C 373 167 373 128 510 128 L 510 128 L 510 0 L 236 0 Z" stroke-width="0"></path> <path fill="#ffffff" d="M 509 128 C 607 128 607 153 705 153 L 705 153 L 705 0 L 509 0 Z" stroke-width="0"></path><path fill="#ffffff" d="M 704 153 C 812 153 812 113 920 113 L 920 113 L 920 0 L 704 0 Z" stroke-width="0"></path><path fill="#ffffff" d="M 919 113 C 1048.5 113 1048.5 148 1178 148 L 1178 148 L 1178 0 L 919 0 Z" stroke-width="0"></path><path fill="#ffffff" d="M 1177 148 C 1359.5 148 1359.5 129 1542 129 L 1542 129 L 1542 0 L 1177 0 Z" stroke-width="0"></path><path fill="#ffffff" d="M 1541 129 C 1751.5 129 1751.5 138 1962 138 L 1962 138 L 1962 0 L 1541 0 Z" stroke-width="0"></path></svg>
            </section>


            <section class="events-section events-detail-section section-padding" id="section_2">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-12 col-12 text-center">
                            <h2 class="mb-lg-5 mb-4"><font face="楷体" size="6">当前展览</font></h2>
                        </div>

                        <div class="col-lg-5 col-12 me-auto mb-4 mb-lg-0">
                            <h3 class="mb-3"><font face="楷体" size="6">关于本馆</font></h3>

                            <p><font face="楷体" size="4">&nbsp&nbsp&nbsp&nbsp本馆以胡扯八道闻名，馆名叫做虚无缥缈艺术画展博物馆，当然这些都是我胡说八道的，我也没有具体的文案。欢迎各位同学观看我的发表，这个网页是没有后端的，没连接数据库。但有用户登录界面。主打的就是一个看上去齐全但啥也没有的局面。</font></p>

                            <p>This museum is famous for its nonsense, and the name of the museum is the Misty Art Exhibition Museum. Of course, these are all my nonsense, and I don't have a specific copy. Welcome all students to watch my publication. This webpage has no backend and no connection to the database. But there is user login interface. The main thing is a situation that looks complete but has nothing.Thank you for visiting.</p>
                        </div>

                        <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0 mb-md-0">
                            <div class="member-block">
                                <div class="member-block-image-wrap">
                                    <img src="images/anna-rosar-ew-olGvgCCs-unsplash.jpeg" class="member-block-image img-fluid" alt="">

                                    <ul class="social-icon">
                                        <li class="social-icon-item">
                                            <a href="#" class="social-icon-link bi-twitter"></a>
                                        </li>

                                        <li class="social-icon-item">
                                            <a href="#" class="social-icon-link bi-whatsapp"></a>
                                        </li>
                                    </ul>
                                </div>

                                <div class="member-block-info d-flex align-items-center">
                                    <h4>Arthur Hughes</h4>

                                    <p class="ms-auto">26 Jun</p>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 col-12">
                            <div class="member-block">
                                <div class="member-block-image-wrap">
                                    <img src="images/3.jpg" class="member-block-image img-fluid" alt="">

                                    <ul class="social-icon">
                                        <li class="social-icon-item">
                                            <a href="#" class="social-icon-link bi-linkedin"></a>
                                        </li>
                                        <li class="social-icon-item">
                                            <a href="#" class="social-icon-link bi-twitter"></a>
                                        </li>
                                    </ul>
                                </div>

                                <div class="member-block-info d-flex align-items-center">
                                    <h4>Joan Miro</h4>

                                    <p class="ms-auto">12 Jul</p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>


            


            <section class="membership-section section-padding" id="section_3">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-12 col-12 text-center mx-auto mb-lg-5 mb-4">
                            <h2><font face="楷体" size="6">本馆票价</font></h2>
                        </div>

                        <div class="col-lg-6 col-12 mb-3 mb-lg-0">
                            <h4 class="mb-4 pb-lg-2"><font face="楷体" size="5">馆内票价</font></h4>

                            <div class="table-responsive">
                                <table class="table text-center">
                                    <thead>
                                        <tr>
                                            <th style="width: 34%;"><font face="楷体" size="3">展名</font></th>
                                            
                                            <th style="width: 22%;"><font face="楷体" size="3">成人 JPY4500</font></th>
                                            
                                            <th style="width: 22%;"><font face="楷体" size="3">学生 JPY2500</font></th>
                                            
                                            <th style="width: 22%;"><font face="楷体" size="3">团体 JPY3000</font></th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <tr>
                                            <th scope="row" class="text-start"><font face="楷体" size="2">19世纪浪漫主义欧洲人像画展</font></th>
                                            
                                            <td>
                                                <i class="bi-check-circle-fill"></i>
                                            </td>
                                            
                                            <td>
                                                <i class="bi-check-circle-fill"></i>
                                            </td>
                                            
                                            <td>
                                                <i class="bi-check-circle-fill"></i>
                                            </td>
                                        </tr>

                                        <tr>
                                            <th scope="row" class="text-start"><font face="楷体" size="2">胡安·米罗&nbsp&nbsp超现实主义画展</font></th>

                                            <td>
                                                <i class="bi-check-circle-fill"></i>
                                            </td>

                                            <td>
                                                <i class="bi-check-circle-fill"></i>
                                            </td>

                                            <td>
                                                <i class="bi-x-circle-fill"></i>
                                            </td>
                                        </tr>

                                        <tr>
                                            <th scope="row" class="text-start"><font face="楷体" size="2">故宫系列艺术品珍藏展</font></th>

                                            <td>
                                                <i class="bi-check-circle-fill"></i>
                                            </td>

                                            <td>
                                                <i class="bi-check-circle-fill"></i>
                                            </td>

                                            <td>
                                                <i class="bi-check-circle-fill"></i>
                                            </td>
                                        </tr>

                                        <tr>
                                            <th scope="row" class="text-start"><font face="楷体" size="2">穆夏新艺术运动展</font></th>

                                            <td>
                                                <i class="bi-check-circle-fill"></i>
                                            </td>

                                            <td>
                                                <i class="bi-check-circle-fill"></i>
                                            </td>

                                            <td>
                                                <i class="bi-check-circle-fill"></i>
                                            </td>
                                        </tr>

                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <div class="col-lg-5 col-12 mx-auto">
                        <h4 class="mb-4 pb-lg-2"><font face="楷体" size="5">团体预购</font></h4>
                            <form action="#" method="post" class="custom-form membership-form shadow-lg" role="form">
                                <h4 class="text-white mb-4"><font face="楷体" size="4">预约信息</font></h4>

                                    <div class="form-floating">
                                        <input type="text" name="full-name" id="full-name" class="form-control" placeholder="Full Name" required="">
                                        
                                        <label for="floatingInput"><font face="楷体" size="3">预约团体名</font></label>
                                    </div>

                                    <div class="form-floating">
                                        <input type="email" name="email" id="email" pattern="[^ @]*@[^ @]*" class="form-control" placeholder="Email address" required="">
                                        
                                        <label for="floatingInput"><font face="楷体" size="3">联系邮箱</font></label>
                                    </div>

                                    <div class="form-floating">
                                        <textarea class="form-control" id="message" name="message" placeholder="Describe message here"></textarea>
                                        
                                        <label for="floatingTextarea"><font face="楷体" size="3">备注信息</font></label>
                                    </div>

                                    <button type="submit" class="form-control"><font face="楷体" size="5">提交</font></button>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </section>


            <section class="events-section section-bg section-padding" id="section_4">
                <div class="container">
                    <div class="row">

                       <div class="col-lg-12 col-12">
                            <h2 class="mb-3"><font face="楷体" size="6">即将开展:</font></h2>
                        </div>

                        <div class="row custom-block mb-3">
                            <div class="col-lg-2 col-md-4 col-12 order-2 order-md-0 order-lg-0">
                                <div class="custom-block-date-wrap d-flex d-lg-block d-md-block align-items-center mt-3 mt-lg-0 mt-md-0">
                                    <h6 class="custom-block-date mb-lg-1 mb-0 me-3 me-lg-0 me-md-0">26</h6>
                                    
                                    <strong class="text-white">JUL 2023</strong>
                                </div>
                            </div>

                            <div class="col-lg-4 col-md-8 col-12 order-1 order-lg-0">
                                <div class="custom-block-image-wrap">
                                    <a href="event-detail.html">
                                        <img src="images/professional-golf-player.jpg" class="custom-block-image img-fluid" alt="">

                                        <i class="custom-block-icon bi-link"></i>
                                    </a>
                                </div>
                            </div>

                            <div class="col-lg-6 col-12 order-3 order-lg-0">
                                <div class="custom-block-info mt-2 mt-lg-0">
                                    <a href="event-detail.html" class="events-title mb-3"><font face="楷体" size="6">故宫系列艺术品珍藏展</font></a>

                                    <p class="mb-0"><font face="楷体" size="3">此次展览由前卢浮宫主席暨馆长亨利· 卢瓦耶特（HenriLoyrette） 作为策展人，共展出300余件艺术杰作，大量18世纪末至21世纪初的尚美巴黎CHAUMET珍宝、绘画以及各式艺术品将贯穿其中，展现了拿破仑一世、约瑟芬皇后，以及当时许多欧洲君主的历史人物故事。拿破仑登基的“加冕之剑”、为玛丽-露易丝皇后设计的麦穗钻冕，法国珠宝史上最具代表性的钻冕作品——“ 波旁· 帕尔玛” 金钟花钻冕（是海德薇·德·拉·罗什富科和西斯德·波旁—帕尔马王子的结婚贺礼） 等重要展品届时亦将亮相展厅。</font> <a href="#" target="_blank">

                                    <div class="d-flex flex-wrap border-top mt-4 pt-3">

                                        <div class="mb-4 mb-lg-0">
                                            <div class="d-flex flex-wrap align-items-center mb-1">
                                                <span class="custom-block-span"><font face="楷体" size="4">位置:</font></span>

                                                <p class="mb-0"><font face="楷体" size="4">千代田区, 东京</font></p>
                                            </div>

                                            <div class="d-flex flex-wrap align-items-center">
                                                <span class="custom-block-span"><font face="楷体" size="4">票价:</font></span>

                                                <p class="mb-0"><font face="楷体" size="4">JPY 5000</font></p>
                                            </div>
                                        </div>

                                        <div class="d-flex align-items-center ms-lg-auto">
                                            <a href="event-detail.html" class="btn custom-btn"><font face="楷体" size="4">购票</font></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row custom-block custom-block-bg">
                            <div class="col-lg-2 col-md-4 col-12 order-2 order-md-0 order-lg-0">
                                <div class="custom-block-date-wrap d-flex d-lg-block d-md-block align-items-center mt-3 mt-lg-0 mt-md-0">
                                    <h6 class="custom-block-date mb-lg-1 mb-0 me-3 me-lg-0 me-md-0">18</h6>
                                    
                                    <strong class="text-white">AUG 2023</strong>
                                </div>
                            </div>

                            <div class="col-lg-4 col-md-8 col-12 order-1 order-lg-0">
                                <div class="custom-block-image-wrap">
                                    <a href="event-detail.html">
                                        <img src="images/4.jpg" class="custom-block-image img-fluid" alt="">

                                        <i class="custom-block-icon bi-link"></i>
                                    </a>
                                </div>
                            </div>

                            <div class="col-lg-6 col-12 order-3 order-lg-0">
                                <div class="custom-block-info mt-2 mt-lg-0">
                                    <a href="detail2.html" class="events-title mb-3"><font face="楷体" size="6">穆夏新艺术运动展</font></a>

                                    <p class="mb-0"><font face="楷体" size="3">本次展览将展出捷克画家穆夏（Alphonse Maria Mucha）的绘画作品，涵盖「花」系列、「艺术」系列等，以及捷克新艺术运动时期的雕塑、家具、玻璃和金属工艺品等，共计298件，呈现极致唯美的新艺术装饰风格。

穆夏（1860 - 1939年）是捷克最重要的画家与装饰艺术家之一，设计了捷克第1套邮票和第1套纸币。他涉足绘画、雕塑、家具、教堂壁画、珠宝首饰等艺术领域的创作与设计工作，曾经被法国政府授予骑士荣誉勋章。</font></p>

                                    <div class="d-flex flex-wrap border-top mt-4 pt-3">

                                        <div class="mb-4 mb-lg-0">
                                            <div class="d-flex flex-wrap align-items-center mb-1">
                                                <span class="custom-block-span"><font face="楷体" size="4">位置:</font></span>

                                                <p class="mb-0"><font face="楷体" size="4">千代田区, 东京</font></p>
                                            </div>

                                            <div class="d-flex flex-wrap align-items-center">
                                                <span class="custom-block-span"><font face="楷体" size="4">票价:</font></span>

                                                <p class="mb-0"><font face="楷体" size="4">JPY 3500</font></p>
                                            </div>
                                        </div>

                                        <div class="d-flex align-items-center ms-lg-auto">
                                            <a href="event-detail.html" class="btn custom-btn"><font face="楷体" size="4">购票</font></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>


            <section class="contact-section section-padding" id="section_5">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-5 col-12">
                            <form action="#" method="post" class="custom-form contact-form" role="form">
                                <h2 class="mb-4 pb-2"><font face="楷体" size="5">联系我们</font></h2>

                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-12">
                                        <div class="form-floating">
                                            <input type="text" name="full-name" id="full-name" class="form-control" placeholder="Full Name" required="">
                                            
                                            <label for="floatingInput"><font face="楷体" size="3">全名</font></label>
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-12"> 
                                        <div class="form-floating">
                                            <input type="email" name="email" id="email" pattern="[^ @]*@[^ @]*" class="form-control" placeholder="Email address" required="">
                                            
                                            <label for="floatingInput"><font face="楷体" size="3">邮箱地址</font></label>
                                        </div>
                                    </div>

                                    <div class="col-lg-12 col-12">
                                        <div class="form-floating">
                                            <textarea class="form-control" id="message" name="message" placeholder="Describe message here"></textarea>
                                            
                                            <label for="floatingTextarea"><font face="楷体" size="3">消息</font></label>
                                        </div>

                                        <button type="submit" class="form-control"><font face="楷体" size="4">提交</font></button>
                                    </div>
                                </div>
                            </form>
                        </div>

                        <div class="col-lg-6 col-12">
                            <div class="contact-info mt-5">
                                <div class="contact-info-item">
                                    <div class="contact-info-body">
                                        <strong><font face="楷体" size="4">日本 东京</font></strong>

                                        <p class="mt-2 mb-1">
                                            <a href="tel: 010-020-0340" class="contact-link">
                                                 
                                                080-1111-2222
                                            </a>
                                        </p>

                                        <p class="mb-0">
                                            <a href="mailto:info@company.com" class="contact-link">
                                                hushuobadao@company.com
                                            </a>
                                        </p>
                                    </div>

                                    <div class="contact-info-footer">
                                        <a href="#"><font face="楷体" size="4">送信</font></a>
                                    </div>
                                </div>

                                <img src="images/WorldMap.svg" class="img-fluid" alt="">
                            </div>
                        </div>

                    </div>
                </div>
            </section>
        </main>

        <footer class="site-footer">
            <div class="container">
                <div class="row">

                     <div class="col-lg-6 col-12 me-auto mb-5 mb-lg-0">
                        <a class="navbar-brand d-flex align-items-center" href="index.html">
                            <img src="images/icon02.png" class="navbar-brand-image img-fluid" alt="">
                            <span class="navbar-brand-text">
                                Ephemeral
                                <small>Art Gallery</small>
                            </span>
                        </a>
                    </div>

                    <div class="col-lg-3 col-12">
                        <h5 class="site-footer-title mb-4"><font face="楷体" size="5">加入我们</font></h5>

                        <p class="d-flex border-bottom pb-3 mb-3 me-lg-3">
                            <span>Mon-Fri</span>
                            9:00 AM - 6:00 PM
                        </p>

                        <p class="d-flex me-lg-3">
                            <span>Sat-Sun</span>
                            9:30 AM - 6:30 PM
                        </p>
                        <br>
                        <p class="copyright-text">Hushuobadao © 2023 Ephemeral Art Gallery</p>
                    </div>

                        <div class="col-lg-2 col-12 ms-auto">
                            <ul class="social-icon mt-lg-5 mt-3 mb-4">
                                <li class="social-icon-item">
                                    <a href="#" class="social-icon-link bi-instagram"></a>
                                </li>

                                <li class="social-icon-item">
                                    <a href="#" class="social-icon-link bi-twitter"></a>
                                </li>

                                <li class="social-icon-item">
                                    <a href="#" class="social-icon-link bi-whatsapp"></a>
                                </li>
                            </ul>

                            <p class="copyright-text">Hushuobadao  &copy; 2023.Ephemeral Art Gallery.</p>
                        </div>

                </div>
            </div>

            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#81B29A" fill-opacity="1" d="M0,224L34.3,192C68.6,160,137,96,206,90.7C274.3,85,343,139,411,144C480,149,549,107,617,122.7C685.7,139,754,213,823,240C891.4,267,960,245,1029,224C1097.1,203,1166,181,1234,160C1302.9,139,1371,117,1406,106.7L1440,96L1440,320L1405.7,320C1371.4,320,1303,320,1234,320C1165.7,320,1097,320,1029,320C960,320,891,320,823,320C754.3,320,686,320,617,320C548.6,320,480,320,411,320C342.9,320,274,320,206,320C137.1,320,69,320,34,320L0,320Z"></path></svg>
        </footer>


        <!-- JAVASCRIPT FILES -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/click-scroll.js"></script>
        <script src="js/animated-headline.js"></script>
        <script src="js/modernizr.js"></script>
        <script src="js/custom.js"></script>

    </body>
</html>