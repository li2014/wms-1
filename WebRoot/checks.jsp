<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
	
	<meta charset="utf-8">
	<meta name="description" content="仓库管理系统">
	<meta name="author" content="詹娜娜">
	<meta name="keyword" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>仓库管理系统 - WMS - 詹娜娜</title>
 
    <!-- start: Css -->
    <link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css">

      <!-- plugins -->
      <link rel="stylesheet" type="text/css" href="asset/css/plugins/font-awesome.min.css"/>
      <link rel="stylesheet" type="text/css" href="asset/css/plugins/simple-line-icons.css"/>
      <link rel="stylesheet" type="text/css" href="asset/css/plugins/animate.min.css"/>
    <link rel="stylesheet" type="text/css" href="asset/css/plugins/select2.min.css"/>
      <link rel="stylesheet" type="text/css" href="asset/css/plugins/fullcalendar.min.css"/>
    <link rel="stylesheet" type="text/css" href="asset/css/plugins/datatables.bootstrap.min.css"/>
    <link href="asset/css/style.css" rel="stylesheet">
    <style type="text/css">
        .up-img-cover {width: 250px;height: 250px;}
        .up-img-cover img{width: 100%;}
    </style>

    <!-- end: Css -->

	<link rel="shortcut icon" href="asset/img/logomi.png">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="asset/js/plugins/html5shiv.js"></script>
      <script src="asset/js/plugins/respond.min.js"></script>
    <![endif]-->
  </head>

 <body id="mimin" class="dashboard">
      <!-- start: Header -->
        <nav class="navbar navbar-default header navbar-fixed-top">
          <div class="col-md-12 nav-wrapper">
            <div class="navbar-header" style="width:100%;">
              <div class="opener-left-menu is-open">
                <span class="top"></span>
                <span class="middle"></span>
                <span class="bottom"></span>
              </div>
                <a href="index.html" class="navbar-brand"> 
                 <b>仓库管理系统</b>
                </a>

              <ul class="nav navbar-nav search-nav">
                <li>
                   <div class="search">
                    <span class="fa fa-search icon-search" style="font-size:23px;"></span>
                    <div class="form-group form-animate-text">
                      <input name="goodsname" id="goodsname" type="text" class="form-text" required>
                      <span class="bar"></span>
                      <label for="goodsname" class="label-search">查询仓库 <b>货物</b> </label>
                    </div>
                  </div>
                </li>
              </ul>

              <ul class="nav navbar-nav navbar-right user-nav">
                <li class="user-name"><span>詹娜娜</span></li>
                  <li class="dropdown avatar-dropdown">
                   <img src="asset/img/avatar.png" class="img-circle avatar" alt="user name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"/>
                   <ul class="dropdown-menu user-dropdown">
                     <li><a href="#"><span class="fa fa-user"></span> 用户设置</a></li>
                     <li><a href="#"><span class="fa fa-calendar"></span> 我的日程安排</a></li>
                     <li role="separator" class="divider"></li>
                     <li class="more">
                      <ul>
                        <li><a href=""><span class="fa fa-cogs"></span></a></li>
                        <li><a href=""><span class="fa fa-lock"></span></a></li>
                        <li><a href=""><span class="fa fa-power-off "></span></a></li>
                      </ul>
                    </li>
                  </ul>
                </li>
                <li ><a href="#" class="opener-right-menu"><span class="fa fa-coffee"></span></a></li>
              </ul>
            </div>
          </div>
        </nav>
      <!-- end: Header -->

      <div class="container-fluid mimin-wrapper">
  
          <!-- start:Left Menu -->
            <div id="left-menu">
              <div class="sub-left-menu scroll">
                <ul class="nav nav-list">
                    <li><div class="left-bg"></div></li>
                    <li class="time">
                      <h1 class="animated fadeInLeft">21:00</h1>
                      <p class="animated fadeInRight">Sat,October 1st 2029</p>
                    </li>
                    <li class="ripple">
                        <a href="index.html"><span class="fa-home fa"></span> 主页
                        </a>
                    </li>

                    <li class="ripple">
                        <a class="tree-toggle nav-header">
                            <span class=" icon-list"></span> 采购
                            <span class="fa-angle-right fa right-arrow text-right"></span>
                        </a>
                        <ul class="nav nav-list tree">
                            <li><a href="materialreq.html">物料需求信息管理</a></li>
                            <li><a href="factory.html">厂商信息管理</a></li>
                            <li><a href="selectfa.html">筛选厂商</a></li>
                            <li><a href="fasupply.html">供货信息管理</a></li>
                        </ul>
                    </li>

                    <li class="ripple">
                        <a class="tree-toggle nav-header">
                            <span class="fa fa-balance-scale"></span> 质量检验
                            <span class="fa-angle-right fa right-arrow text-right"></span>
                        </a>
                        <ul class="nav nav-list tree">
                            <li><a href="qualityre.html">质检结果管理</a></li>
                            <li><a href="conformity.html">合格证明</a></li>
                        </ul>
                    </li>

                    <li class="ripple">
                        <a class="tree-toggle nav-header">
                            <span class="fa-sign-in fa"></span> 入库管理
                            <span class="fa-angle-right fa right-arrow text-right"></span>
                        </a>
                        <ul class="nav nav-list tree">
                            <li><a href="new-in.html">新建入库申请</a></li>
                            <li><a href="ins.html">入库单</a></li>
                            <li><a href="suppliers.html">供应商管理</a></li>
                        </ul>
                    </li>
                    <li class="ripple">
                        <a class="tree-toggle nav-header">
                            <span class="fa-sign-out fa"></span> 出库管理
                            <span class="fa-angle-right fa right-arrow text-right"></span>
                        </a>
                        <ul class="nav nav-list tree">
                            <li><a href="new-out.html">新建出库申请</a></li>
                            <li><a href="outs.html">出库单</a></li>
                            <li><a href="customers.html">客户管理</a></li>
                        </ul>
                    </li>
                    <li class="ripple">
                        <a class="tree-toggle nav-header">
                            <span class="fa-area-chart fa"></span> 仓库盘点
                            <span class="fa-angle-right fa right-arrow text-right"></span>
                        </a>
                        <ul class="nav nav-list tree">
                            <li><a href="new-check.html">新建库存盘点</a></li>
                            <li><a href="checks.html">库存盘点列表</a></li>
                        </ul>
                    </li>
                    <li class="ripple active">
                        <a class="tree-toggle nav-header">
                            <span class="fa-truck fa"></span> 仓库调度
                            <span class="fa-angle-right fa right-arrow text-right"></span>
                        </a>
                        <ul class="nav nav-list tree">
                            <li><a href="new-transport.html">新建调度任务</a></li>
                            <li><a href="transports.html">仓库调度列表</a></li>
                        </ul>
                    </li>
                    <li class="ripple">
                        <a class="tree-toggle nav-header">
                            <span class="fa-search fa"></span> 产品库存
                            <span class="fa-angle-right fa right-arrow text-right"></span>
                        </a>
                        <ul class="nav nav-list tree">
                            <li><a href="product.html">产品管理</a></li>
                            <li><a href="storage.html">库存查询</a></li>
                            <li><a href="stream.html">仓库流水</a></li>
                        </ul>
                    </li>
                    <li class="ripple"><a href="calendar.html"><span class="fa fa-calendar-o"></span> 日程表 </a></li>
                    <li class="ripple"><a class="tree-toggle nav-header"><span class="fa fa-envelope-o"></span> 邮件 <span class="fa-angle-right fa right-arrow text-right"></span> </a>
                        <ul class="nav nav-list tree">
                            <li><a href="mail-box.html">收件箱</a></li>
                            <li><a href="compose-mail.html">Compose Mail</a></li>
                            <li><a href="view-mail.html">View Mail</a></li>
                        </ul>
                    </li>
                  </ul>
                </div>
            </div>
          <!-- end: Left Menu -->

		<!-- modal -->
          <div class="modal fade" id="select-warehouse" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
              <div class="modal-dialog" role="document">
                  <form class="modal-content" action="checks.html" method="get">
                      <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                          <h4 class="modal-title">选择当前仓库</h4>
                      </div>
                      <div class="modal-body">
                          <div class="row">
                              <div class="col-md-12">
                                  <div class="form-group">
                                      <select class="form-control" name="warehouseId" id="warehouseId-select">
                                          <option value="1">北京海淀仓库</option>
                                      </select>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <div class="modal-footer">
                          <button type="button" class="btn btn-default btn-round btn-gradient" data-dismiss="modal">关 闭</button>
                          <button type="submit" class="btn btn-success btn-round btn-gradient">确 定</button>
                      </div>
                  </form>
              </div>
          </div>
          <!-- modal -->
          <div class="modal fade" id="show-checks" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
              <div class="modal-dialog" role="document" style="width:800px;">
                  <div class="modal-content">
                      <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                          <h4 class="modal-title">盘点信息</h4>
                      </div>
                      <div class="modal-body">
                          <div class="col-md-6" style="font-size: 16px;">
                              <span class="text-primary">盘点单号:</span>
                              	<span id="cd-id">北京海淀仓库</span>
                          </div>
                          <div class="col-md-6" style="font-size: 16px;">
                              <span class="text-primary">盘点仓库:</span>
                              	<span id="cd-warehouse">天津武清仓库</span>
                          </div>
                          <div class="col-md-6" style="font-size: 16px;">
                              <span class="text-primary">盘点时间:</span>
                              <span id="cd-create-time">2017-06-07</span>
                          </div>
                          <div class="col-md-6" style="font-size: 16px;">
                              <span class="text-primary">确认时间:</span>
                              <span id="cd-accept-time">2017-06-07</span>
                          </div>
                          <div class="col-md-6" style="font-size: 16px;">
                              <span class="text-primary">盘点人:</span>
                              	<span id="cd-creator">郝爱国</span>
                          </div>
                          <div class="col-md-6" style="font-size: 16px;">
                              <span class="text-primary">审核人:</span>
                              	<span id="cd-acceptor">詹娜娜</span>
                          </div>
                          <div class="col-md-12" style="font-size: 16px; margin-bottom: 15px">
                              <div class="text-primary">备注信息:</div>
                              <div class="text-default" id="cd-desc">快点给老子盘点</div>
                          </div>
                          <div class="responsive-table" style="padding: 15px;">
                              <table class="table table-striped table-bordered" width="100%" cellspacing="0">
                                  <thead>
                                  <tr>
                                      <th>序号</th>
                                      <th>货品编号</th>
                                      <th>货品名称</th>
                                      <th>货品分类</th>
                                      <th>所在库位</th>
                                      <th>所在货架</th>
                                      <th>记录数量</th>
                                      <th>盘点数量</th>
                                  </tr>
                                  </thead>
                                  <tbody id="cd-items">
                                  
                                  </tbody>
                              </table>
                          </div>
                      </div>
                      <div class="modal-footer">
                          <button type="button" class="btn btn-default btn-round btn-gradient" data-dismiss="modal">关 闭</button>
                      </div>
                  </div>
              </div>
          </div>

          <!-- start: content -->
          <div id="content">
              <div class="tabs-wrapper text-center">
                  <div class="panel box-shadow-none text-left content-header">
                      <div class="panel-body" style="padding-bottom:0px;">
                          <div class="col-md-12">
                              <h3 class="animated fadeInLeft"><a class="text-primary" href="#" id="select-warehouse-bt"><s:property value="warehouseName"/></a> 仓库盘点列表</h3>
                              <p class="animated fadeInDown">
                                  仓库管理系统 <span class="fa-angle-right fa"></span> 仓库盘点<span class="fa-angle-right fa"></span> 仓库盘点列表
                              </p>
                          </div>
                          <ul id="tabs-demo" class="nav nav-tabs content-header-tab" role="tablist" style="padding-top:10px;">
                              <li role="presentation" class="active">
                                  <a href="#checks-info" id="tabs1" data-toggle="tab">待确认盘点表</a>
                              </li>
                              <li role="presentation" class="">
                                  <a href="#checks-position" id="tabs2" data-toggle="tab">所有盘点表</a>
                              </li>
                          </ul>
                      </div>
                  </div>
                  <div class="col-md-12 tab-content">
                      <div role="tabpanel" class="tab-pane fade active in" id="checks-info" aria-labelledby="tabs1">
                          <div class="col-md-12 panel-info">
                              <div class="panel-heading">
                                  <h4 class="panel-title text-white">
                                      待确认调度列表
                                  </h4>
                              </div>
                              <div class="panel panel-default">
                                  <div class="responsive-table" style="padding: 15px;">
                                      <table class="datatable table table-striped table-bordered" width="100%" cellspacing="0">
                                          <thead>
                                          <tr>
                                              <th>盘点编号</th>
                                              <th>盘点时间</th>
                                              <th>盘点仓库</th>
                                              <th>盘点人</th>
                                              <th>盘盈数量</th>
                                              <th>盘亏数量</th>
                                              <th>盘点货架数</th>
                                              <th>盘点货物数</th>
                                              <th>操作</th>
                                          </tr>
                                          </thead>
                                          <tbody>
                                          <s:iterator value="unSummarys" id="us">
                                          <tr>
                                              <td><a href="#" onclick='showCheckDetails("<s:property value="#us.id"/>")'><s:property value="#us.id"/></a></td>
                                              <td><s:property value="#us.createTime"/></td>
                                              <td><s:property value="#us.warehouse"/></td>
                                              <td><s:property value="#us.creator"/></td>
                                              <td class="text-success">+<s:property value="#us.addNumber"/></td>
                                              <td class="text-danger">-<s:property value="#us.lostNumber"/></td>
                                              <td><s:property value="#us.shelfNumber"/></td>
                                              <td><s:property value="#us.productNumber"/></td>
                                              <td>
                                              <a data-id='<s:property value="#us.id"/>' class="btn btn-success btn-circle btn-mn btn-gradient check-ok" style="font-size: 22px"><span class="fa fa-check"></span></a>
                                              <a data-id='<s:property value="#us.id"/>' class="btn btn-danger btn-circle btn-mn btn-gradient check-bad" style="font-size: 22px"><span class="fa fa-times"></span></a>
                                              </td>
                                          </tr>
                                          </s:iterator>
                                          </tbody>
                                      </table>
                                  </div>
                              </div>
                          </div>                      </div>
                      <div role="tabpanel" class="tab-pane fade" id="checks-position" aria-labelledby="tabs2">
                          <div class="col-md-12 panel-info">
                              <div class="panel-heading">
                                  <h4 class="panel-title text-white">
                                      已完成调度列表
                                  </h4>
                              </div>
                              <div class="panel panel-default">
                                  <div class="responsive-table" style="padding: 15px;">
                                      <table class="datatable table table-striped table-bordered" width="100%" cellspacing="0">
                                          <thead>
                                          <tr>
                                              <th>盘点编号</th>
                                              <th>盘点时间</th>
                                              <th>盘点仓库</th>
                                              <th>盘点人</th>
                                              <th>盘点货架数</th>
                                              <th>盘点货物数</th>
                                              <th>确认人</th>
                                              <th>确认时间</th>
                                              <th>状态</th>
                                          </tr>
                                          </thead>
                                          <tbody>
                                          <s:iterator value="allSummarys" id="us">
                                          <tr>
                                              <td><a href="#" onclick='showCheckDetails("<s:property value="#us.id"/>")'><s:property value="#us.id"/></a></td>
                                              <td><s:property value="#us.createTime"/></td>
                                              <td><s:property value="#us.warehouse"/></td>
                                              <td><s:property value="#us.creator"/></td>
                                              <td><s:property value="#us.shelfNumber"/></td>
                                              <td><s:property value="#us.productNumber"/></td>
                                              <td><s:property value="#us.acceptor"/></td>
                                              <td><s:property value="#us.acceptTime"/></td>
                                              <td><s:property value="#us.state"/></td>
                                          </tr>
                                          </s:iterator>
                                          </tbody>
                                      </table>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
          <!-- end: content -->

      </div>

    <!-- start: Javascript -->
    <script src="asset/js/jquery.min.js"></script>
    <script src="asset/js/jquery.ui.min.js"></script>
    <script src="asset/js/bootstrap.min.js"></script>
   
    
    <!-- plugins -->
      <script src="asset/js/plugins/moment.min.js"></script>
      <script src="asset/js/plugins/jquery.nicescroll.js"></script>
      <script src="asset/js/plugins/jquery.mask.min.js"></script>
      <script src="asset/js/plugins/select2.full.min.js"></script>
      <script src="asset/js/plugins/jquery.datatables.min.js"></script>
      <script src="asset/js/plugins/datatables.bootstrap.min.js"></script>
      <script src="asset/js/plugins/chart.min.js"></script>
      <script src="asset/js/check.js"></script>

      <!-- custom -->
      <script src="asset/js/main.js"></script>
      <script type="text/javascript">

          $(document).ready(function(){

              $(".nav-tabs a").click(function (e) {
                  e.preventDefault();
                  $(this).tab('show');
              });
              $('.datatable').DataTable();

			prepareForChecks();
			$("#select-warehouse-bt").click(function(event){
                  event.preventDefault();
                  $("#loading-box").modal({backdrop: 'static', keyboard: false});
                  $.ajax( {  
                	url:'fetchWarehouseList.action',  
                	dataType:'json',
                	type: "POST",
                	success: function(data, textStatus){
                		var widSel = $("#warehouseId-select");
                		widSel.empty();
                		$.each(data,function(i,n){ 
							widSel.append('<option value="'+n["id"]+'">'+n["name"]+'</option>'); 
						}); 
						$("#loading-box").modal("hide");
						$("#select-warehouse").modal();
                	},
                	error: function(){
                		$("#loading-box").modal("hide");
                		alert("请求仓库列表失败！请检查网络设置！"); 
                	}  
         		});
              });
          });

          function showDetail(id){
              $("#show-checks").modal('show');
          }
      </script>

  <!-- end: Javascript -->
  </body>
</html>