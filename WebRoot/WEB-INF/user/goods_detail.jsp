<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"
	+request.getServerName()+":"+request.getServerPort()+path+"/";
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html class="is1280">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<link rel="dns-prefetch" href="http://s.lizi.com/">
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

		<title>丽人美妆</title>
		<link rel="shortcut icon" href="http://s.lizi.com/favicon.ico"
			type="image/x-icon">
		<script type="text/javascript">
    	function change(id,inputObj){
      	  var quantity=inputObj.value;
   
       	 	location.href="${pageContext.request.contextPath}/user/update?id="+id+"&num="+quantity;
    	}
	</script>
		<script type="text/javascript">
  <!-- 获取一个序列 -->
  function addColle(obj){ 
    var parent = $(obj).parent();
      var gid = parent.children().eq(0).val();
      $.post(
        'addCollection',
        {'gid':gid},
        function(data){
             var pass = data;
             if(pass){
               alert("该美妆你已添加！O(∩_∩)O~");
             }else{
               alert("恭喜你，美妆添加成功！O(∩_∩)O~");
             }
        }
      );
  } 
  </script>
		<style type="text/css">
#shoucang {
	margin-left: 170px;
	margin-top: -52px;
}
.logo {
	height: 100px;
	padding-left:30px;
	margin-top: -20px;
}
</style>
		<link rel="stylesheet" href="../style/detail/global.css">
		<link rel="stylesheet" href="../style/detail/common.css">
		<iframe style="display: none;" scrolling="no"
			src="../js/detail/analyze.htm" width="1" height="1"></iframe>
		<script src="../js/detail/mv.js" async type="text/javascript"></script>
		<script src="../js/detail/mba.js" async type="text/javascript"></script>
		<script src="../js/detail/piwik.js" defer async type="text/javascript"></script>
		<script src="../js/detail/s.js" async type="text/javascript"></script>
		<script src="../js/detail/lizi_liontrack.js" defer async
			type="text/javascript"></script>
		<script src="../js/detail/mvl.js" async type="text/javascript"></script>
		<script src="../js/detail/pixel.php" async type="text/javascript"></script>
		<script src="../js/detail/analytics.js" async></script>
		<script src="../js/detail/lib.js"></script>
		<script src="../js/detail/global.js"></script>
		<script src="../js/detail/common.js"></script>
		<meta name="layout" content="shop_layout">
		<link rel="stylesheet" href="../style/detail/a.css">
		<script src="../js/detail/tip.js" data-requiremodule="tip"
			data-requirecontext="_" async charset="utf-8" type="text/javascript"></script>
		<script src="../js/detail/dialog.js" data-requiremodule="dialog"
			data-requirecontext="_" async charset="utf-8" type="text/javascript"></script>
		<script src="../js/detail/topbar.js"
			data-requiremodule="tpl/public/topbar" data-requirecontext="_" async
			charset="utf-8" type="text/javascript"></script>
		<script src="../js/detail/t_002" type="text/javascript"></script>
		<script src="../js/detail/t" type="text/javascript"></script>
		<script src="../js/detail/template.js"
			data-requiremodule="tpl/template" data-requirecontext="_" async
			charset="utf-8" type="text/javascript"></script>
		<script src="../js/detail/css.js" data-requiremodule="css"
			data-requirecontext="_" async charset="utf-8" type="text/javascript"></script>
		<link href="../style/detail/dialog.css" rel="stylesheet"
			type="text/css">
		<script src="../js/detail/imglazyload.js"
			data-requiremodule="imglazyload" data-requirecontext="_" async
			charset="utf-8" type="text/javascript"></script>
		<script src="../js/detail/sidebar.js" data-requiremodule="sidebar"
			data-requirecontext="_" async charset="utf-8" type="text/javascript"></script>
		<script src="../js/detail/seemore.js"
			data-requiremodule="tpl/shop/seemore" data-requirecontext="_" async
			charset="utf-8" type="text/javascript"></script>
		<script src="../js/detail/view_photos.js"
			data-requiremodule="view_photos" data-requirecontext="_" async
			charset="utf-8" type="text/javascript"></script>
		<script src="../js/detail/pagenav.js" data-requiremodule="pagenav"
			data-requirecontext="_" async charset="utf-8" type="text/javascript"></script>
		<script src="../js/detail/cart_ajax.js" data-requiremodule="cart_ajax"
			data-requirecontext="_" async charset="utf-8" type="text/javascript"></script>
		<script src="../js/detail/imagesloaded.js"
			data-requiremodule="imagesloaded" data-requirecontext="_" async
			charset="utf-8" type="text/javascript"></script>
		<script src="../js/detail/ajax_skuinfo.js"
			data-requiremodule="tpl/shop/ajax_skuinfo" data-requirecontext="_"
			async charset="utf-8" type="text/javascript"></script>
		<link href="../style/detail/sidebar.css" rel="stylesheet"
			type="text/css">
		<!-- 	<link rel="stylesheet" href="../style/global_cart.css"/>
	<link rel="stylesheet" href="../style/common.css"/>
	<link rel="stylesheet" href="../style/cart.css"/> -->
		<script src="../js/detail/scrollfixed.js"
			data-requiremodule="scrollfixed" data-requirecontext="_" async
			charset="utf-8" type="text/javascript"></script>
		<script type="text/javascript">
	
		 //跳转到目标页
            function toPage(targetPage){
            	document.getElementById("targetPage").value=targetPage;
            	document.forms[0].submit();
            }
	</script>
	</head>
	</head>
	<body>
		<!-- 顶部导航条 -->
		<div id="top_bar" class="top_bar">
	<div class="top_bar_bd cle">
    	<ul class="bar_fl"></ul>
        <ul class="bar_fr" id="topbar_nav">
        	<li class="topbar_user">
            	${sessionScope.user.userName }，欢迎你！ [<a href="logout">退出</a>]
            </li>
            <li class="more_menu hover">
            	<a href="#">我的丽人</a>
                <i class="iconfont arrow"></i>
                <div class="more_bd">
                	<div class="list">
                    	<a href="#">我的订单</a>
                        <a href="http://localhost:8080/LRMZ/user/toUpdateUser">修改收货地址</a>
                        <a href="http://localhost:8080/LRMZ/user/findAllCollection">我的收藏</a>
                    </div>
                </div>
            </li>
            <li>
            	<a id="favorite_wb" href="#">
                	<i class="iconfont"></i>
                	收藏丽人
                </a>
            </li>        
        </ul>
    </div>
</div>


		<div id="shop_header" class="shop_header">
			<div class="shop_header_w cle">
				<div class="logo" >
					
					<img height="70px;" src="../images/logo.png" />
						
					
				</div>
				<div class="shop_line"></div>
				<div class="shop_info" id="shop_info">
					<div style="display: none;" class="shop_info_panel">
						<ul>
							<li class="shop_level">
								<label>
									信誉等级：
								</label>
								<i class="iconfont"></i><i class="iconfont">Ū</i><i
									class="iconfont"></i>
							</li>
							<li class="shop_li">
								<span><label>
										总销量：
									</label>42445</span><span><label>
										创建时间：
									</label>2015-05-07</span>
							</li>
							<li class="shop_li">
								<span><label>
										退货率：
									</label>0%</span><span><label>
										商家坐标：
									</label>浙江省杭州市</span>
							</li>
							<li class="shop_service cle">
								<label>
									提供服务：
								</label>
								<p>

									<i>全场包邮</i>

									<i>48小时发货</i>

									<i>30天退换货</i>

								</p>
							</li>
							<li class="shop_collect cle">
								<a href="javascript:;" class="btn" id="fav_shop"><i
									class="iconfont">ũ</i><em>收藏店铺</em> </a><span>已有35481人收藏</span>
							</li>
						</ul>
					</div>
				</div>

			</div>
		</div>



		<div class="shop_nav">
			<div class="shop_nav_list">
				<ul class="cle">
					<li>
						<a href="toIndex">返回首页</a>
					</li>
				</ul>


				</ul>
			</div>
		</div>


		<div id="content">
			<!-- 商品信息模块 -->
			<div class="detail cle">
				<!-- 商品图片 -->
				<div class="item_cover" id="item_cover">
					<div class="view_bd">
						<img class="view" alt="<s:property value="goods.goodsName"/>"
							src="<%=basePath+"upload/"%><s:property value="goods.image"/>">
						<img alt="<s:property value="goods.goodsName"/>"
							src="<%=basePath+"upload/"%><s:property value="goods.image"/>">
					</div>

					<div class="view_thumbs">

						<ul style="width: 64px;" class="cle">

							<li class="current">
								<img alt="<s:property value="goods.goodsName"/>"
									src="<%=basePath+"upload/"%><s:property value="goods.image"/>">
								<i class="iconfont arrow"></i>
							</li>


						</ul>

					</div>
				</div>

				<!-- 商品 -->
				<div class="item_box">
					<dl class="item_detail">
						<dt class="product_name">
							<h1>
								<s:property value="goods.goodsName" />
							</h1>
							<p class="desc">
								<s:property value="goods.description" />
							</p>
						</dt>
						<dd id="item_info" class="">
							<ul class="property">
								<li>
									<span class="lbl">丽人价</span>
									<span class="rmb">￥</span><em class="price" id="s_price"><s:property
											value="goods.price" /> </em>
									<span class="skucode_hide">B2CZH014909G</span>
								</li>
								<li>
									<span class="lbl">销&nbsp;&nbsp;&nbsp;量</span>
									<span>最近售出<em class="orange">684</em>件</span>
								</li>
								<li>
									<span class="lbl">评&nbsp;&nbsp;&nbsp;价</span>
									<span><cite class="ping_star"><i
											style="width: 100%;"></i> </cite> <em class="orange">5分</em>（<a
										href="#part_comment" id="s_comment">已有500人评价</a>）</span>
								</li>
							</ul>
							<ul class="sku_box">
							</ul>
							<ul class="tobuy_box">
								<li class="skunum_li cle">
									<span class="lbl">数&nbsp;&nbsp;&nbsp;量</span>
									<div>
										<input type="text" value="1" />
										<cite class="storage">件（库存<em id="s_storage"><s:property
													value="goods.goodsNum" /> </em>件）</cite>
									</div>
								</li>
								<li class="add_cart_li">
									<a
										href="cartAction?goodsId=<s:property value="goods.goodsID" />"
										class="btn" id="buy_btn"> <i class="iconfont"></i>加入购物车</a>
								</li>
								<li class="add_cart_li" id="shoucang">
									<input type="hidden" name="gid" id="gid"
										value="<s:property value="goods.goodsID" />" />
									<a name="collection.gid" onclick="addColle(this);" class="btn"
										id="buy_btn">加入收藏夹</a>
								</li>
							</ul>
						</dd>
					</dl>

					<!-- 承诺  -->
					<div class="privileges cle">
						<ul class="cle">


							<li>
								<i class="iconfont"></i>全国包邮
							</li>

							<li>
								<i class="iconfont"></i>48小时发货
							</li>

							<li class="last">
								<i class="iconfont"></i>30天无理由退货
							</li>

						</ul>
					</div>
				</div>
				<div class="seemore_items" id="seemore_items">
					<s:hidden name="page" id="targetPage"></s:hidden>
					<h3>
						同类热门
						<a href="javascript:toPage(<s:property value="page+1"/>);"
							class="refresh" title="换一组"><i class="iconfont"></i> </a>
					</h3>

					<div class="bd">
						<ul>
							<ul>
								<s:iterator value="list">
									<li>
										<a href="toDetail?id=<s:property value="goodsID" />"
											target="_blank" title="<s:property value="goodsName" />">
											<img alt="<s:property value="goodsName" />"
												src="<%=basePath+"upload/"%><s:property value="image"/>" />
											<p class="price">
												<s:property value="price" />
											</p> </a>
									</li>
								</s:iterator>
					</div>

				</div>

				<div class="detail_page">
					<div class="detail_main cle">
						<!-- 左侧栏 开始 -->
						<div class="detail_left">
							<div class="tabs_bar_warp">
								<div class="tabs_bar" id="tabs_bar">
									<ul>
										<li class="current">
											<a href="#part_detail">商品详情</a>
										</li>
										<li>
											<a href="#part_comment">评价详情(<em>500</em>)</a>
										</li>
									</ul>
								</div>
							</div>
							<!-- 分区模块 开始 -->
							<div class="detail_part">

								<!-- 商品详情 -->
								<div class="sectionbox" id="part_detail">
									<!-- 产品参数 -->
									<div class="part_box">
										<h2 class="tit tit_cs">
											<span>产品参数</span>
										</h2>
										<div class="part_bd">
											<table class="item_canshu">
												<tbody>
													<tr>
														<td class="op">
															<table>
																<tbody>
																	<tr>
																		<td class="l">
																			商品名称：
																		</td>
																		<td>
																			<s:property value="goods.goodsName" />
																		</td>
																	</tr>
																	<tr>
																		<td class="l">
																			所属品牌：
																		</td>
																		<td>
																			<s:property value="goods.gbrand" />
																		</td>
																	</tr>


																	<tr>
																		<td class="l">
																			适用肤质：
																		</td>
																		<td>
																			干性肌肤,敏感肌肤,油性肌肤,混合肌肤,中性肌肤
																		</td>
																	</tr>

																	<tr>
																		<td class="l">
																			生产日期：
																		</td>
																		<td>
																			详见商品包装
																		</td>
																	</tr>
																	<tr>
																		<td class="l">
																			保质期：
																		</td>
																		<td>
																			3年
																		</td>
																	</tr>
																	<tr>
																		<td class="l">
																			包装方式：
																		</td>
																		<td>
																			无盒无塑封
																		</td>
																	</tr>
																</tbody>
															</table>
														</td>
														<td class="pic">
															<img
																src="<%=basePath+"upload/"%><s:property value="goods.image"/>"
																data-lazyload="http://nalapic.b0.upaiyun.com/2e455de656f71.jpg!wh200"
																alt="<s:property value="goods.goodsName"/>" width="200"
																height="200">
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<!-- 产品参数 end -->

									<!-- 自定义信息 -->



									<div class="part_box">
										<h2 class="tit tit_zdy">
											<span>丽人说</span>
										</h2>
										<div class="part_bd">
											<div class="nala_say"
												style="background: url(http://img01.taobaocdn.com/imgextra/i1/171367901/T2eA03XhNdXXXXXXXX_!!171367901.jpg) no-repeat 20px 20px transparent; height: 80px; font-size: 13px; line-height: 24px; padding: 40px 20px 25px 140px;">
												<div>
													<s:property value="goods.description" />
												</div>
												<div>
													&nbsp;
												</div>
											</div>

										</div>
									</div>



									<div class="part_box">
										<h2 class="tit tit_zdy">
											<span>商品描述</span>
										</h2>
										<div class="part_bd">
											<div>
												<img alt=""
													src="<%=basePath+"upload/"%><s:property value="goods.image"/>">
												<img alt=""
													src="<%=basePath+"upload/"%><s:property value="goods.image"/>"
													style="width: 750px; height: 523px;">
												<img alt=""
													src="<%=basePath+"upload/"%><s:property value="goods.image"/>"
													style="width: 750px; height: 698px;">
												<img alt="" src="jianjie_files/1d3783eee6107.jpg">
											</div>
											<div>
												&nbsp;
											</div>

										</div>
									</div>
									<div class="part_box">
										<h2 class="tit tit_zdy">
											<span>实拍图</span>
										</h2>
										<div class="part_bd">
											<p style="text-align: center;">
												<img alt=""
													src="<%=basePath+"upload/"%><s:property value="goods.image"/>"
													style="width: 800px; height: 800px;">
											</p>
											<p style="text-align: center;">
												&nbsp;
											</p>
											<p style="text-align: center;">
												<img alt=""
													src="<%=basePath+"upload/"%><s:property value="goods.image"/>"
													style="width: 800px; height: 800px;">
											</p>

										</div>
									</div>

									<!-- 自定义信息 end -->
								</div>
								<!-- 商品详情 end -->

								<!-- 评价详情-->

								<!-- 商品评价 -->
								<div class="sectionbox" id="part_comment">
									<h2 class="tit tit_pj">
										<span>商品评价</span>
									</h2>
									<!-- 评价分数 -->
									<div class="cmt_point cle">
										<div class="d_left">
											<div class="d_total">
												<div class="all_points">
													<b>5.0</b>/5
												</div>
												<div class="big_star">
													<i style="width: 100.0%;"></i>
												</div>
												<div class="all_people">
													共
													<em>500</em>人打分
												</div>
											</div>
											<div class="list">
												<ul id="cmt_point_list">


													<li data-point="5.0">
														<label>
															美白度：
														</label>
														<p>
															<span style="width: 100%;"></span>
														</p>
														<em>5.0</em>
													</li>

													<li data-point="5.0">
														<label>
															滋润度：
														</label>
														<p>
															<span style="width: 100%;"></span>
														</p>
														<em>5.0</em>
													</li>

													<li data-point="5.0">
														<label>
															抗衰老：
														</label>
														<p>
															<span style="width: 100%;"></span>
														</p>
														<em>5.0</em>
													</li>

													<li data-point="5.0">
														<label>
															低刺激：
														</label>
														<p>
															<span style="width: 100%;"></span>
														</p>
														<em>5.0</em>
													</li>

													<li data-point="5.0">
														<label>
															香味：
														</label>
														<p>
															<span style="width: 100%;"></span>
														</p>
														<em>5.0</em>
													</li>


												</ul>
											</div>
										</div>
										<div class="d_right">
											<p>
												对自己使用过的商品进行评价，它将成为菇凉们的购买参考依据。
											</p>
											<div>
												<a
													onclick="location.href='toEvaluate?gid=<s:property value="goods.goodsID" />';"
													target="_blank" class="btn">我要评价</a>
											</div>
										</div>
									</div>
									<!-- 评价分数 end -->

									<div class="comment_box">
										<div class="md_head cle">
											<div class="select" id="comment_sort">

												<select name="skin">
													<option selected="selected" value="ALL">
														全部肤质
													</option>
													<option value="DRYNESS">
														干性肌肤
													</option>
													<option value="SENSITIVE">
														敏感肌肤
													</option>
													<option value="OILY">
														油性肌肤
													</option>
													<option value="MIX">
														混合肌肤
													</option>
													<option value="NEUTER">
														中性肌肤
													</option>
												</select>

												<select name="order">
													<option selected="selected" value="usefulNum">
														最有用
													</option>
													<option value="dateCreated">
														最新
													</option>
												</select>
											</div>
										</div>

										<div class="comment_list" id="comment_list">
											<!-- 循环评价列表 -->
											<s:iterator value="evaluateList">
												<div class="com_md cle">
												
													<div class="com_md_left">
														<img class="face" src="${pageContext.request.contextPath}/faceUpload/<s:property value='user.userID'/>.jpg" />
														
													</div>
													<div class="com_md_right">
														<div class="com_md_right_head cle">
															<div class="fl">
																<span class="name"><s:property value="uid" /> </span>
																<span class="skin"> <s:property value="skin" /></span>
															</div>
															<div class="fr">
																<span class="min_star"><cite class="ping_star"><i
																		style="width: 100%;"></i> </cite> </span>
																<span class="com_time">2014-05-23 12:53:30</span>
															</div>
														</div>
														<div class="com_md_bd">
															<div class="text">
																<div class="text_bd">
																	<s:property value="evalution" />
																</div>
															</div>
														</div>
													</div>
											
										</div>
									</s:iterator>
										<!-- 循环评价列表 end -->

										
									</div>

								</div>
								<!-- 评价列表 end-->


							</div>
							<!-- 商品评价 end -->
							<!-- 评价详情 end-->



						</div>
						<!-- 分区模块 end -->
					</div>
					<!-- 左侧栏 end -->

					<!-- 右侧栏 开始 -->
					<div class="detail_right">



						<!-- 同类 热门销售 -->
						<div class="right_box">
							<div class="hd">
								看了又看
							</div>

							<s:iterator value="goodsList">
								<div class="bd">
									<ul class="cle">
										<li>
											<p class="img">
												<a href="toDetail?id=<s:property value="goodsID"/>"
													target="_blank"> <img data-lazyload=""
														title="<s:property value="goodsName" />"
														alt="<s:property value="goodsName" />"
														src="<%=basePath+"upload/"%><s:property value="image"/>"
														width="150" height="150"> </a>
											</p>
											<p class="name">
												<a href="toGoodsDetail?id=<s:property value="goodsID"/>"><s:property
														value="goodsName" /> </a>
											</p>
											<p class="price">
												￥
												<b><s:property value="price" /> </b>
											</p>
										</li>
									</ul>
								</div>
							</s:iterator>
						</div>
						<!-- 同类 热门销售 end -->
					</div>
					<!-- 右侧栏 end -->
				</div>
			</div>
		</div>
		<script>
    var itemInfo = { //
            storeId : '554b07acf31ef04978652554',
            id: '554dae73e4b0a4e489d1c58b',
            cover:'http://nalapic.b0.upaiyun.com/2e455de656f71.jpg',
            commentPage:50
            }
</script>

		<script src="../js/detail/detail.js"></script>


		<!-- 页尾 -->
		<div id="footer">
			<div class="ft_main">
				<div class="ft_nav">
					<a href="http://www.lizi.com/about-about_us.html" target="_blank"
						class="noborder">关于丽子</a>
					<cite>/</cite>
					<a href="http://www.lizi.com/about-store_invite.html"
						target="_blank">商家入驻</a>
					<cite>/</cite>
					<a href="http://www.lizi.com/about-lizi_agent.html" target="_blank">代理招募</a>
					<cite>/</cite>
					<a href="http://www.lizi.com/job-joinus.html" target="_blank">加入我们</a>
					<cite>/</cite>
					<a
						href="http://www.lizi.com/cms/cmsBuyerOrSeller?uniqueMark=48hours_delivery&mark=buyer"
						target="_blank">配送政策</a>
					<cite>/</cite>
					<a
						href="http://www.lizi.com/cms/cmsBuyerOrSeller?cmsMark=refundProduct_condition&mark=buyer"
						target="_blank">售后保障</a>
					<cite>/</cite>
					<a href="http://www.lizi.com/cms/cmsBuyerOrSeller?mark=buyer"
						target="_blank">帮助中心</a>
					<cite>/</cite>
					<a href="http://www.lizi.com/about-contact_us.html" target="_blank">联系我们</a>
					<cite>/</cite>
					<a
						href="http://www.lizi.com/cms/beautyInformation?uniqueMark=frequentlyAsked_questions"
						target="_blank">平台公告</a>
				</div>
				<div class="ft_txt">
					<p>
						Copyright 2009-2015, 西北农林科技大学 LIZI.COM 增值电信业务经营许可证：浙B2-20110315
						备案号：
						<a href="http://www.miitbeian.gov.cn" target="_blank">浙ICP备11012845号-5</a>
					</p>
					<p class="ft_contact">
						<span>服务时间：09:00-23:00</span>
						<span class="ft_phone">客服热线: <em>4007-112-112</em> </span>
					</p>
					<p class="beian_ico">
						<a
							href="http://www.lizi.com/cms/beautyInformation?uniqueMark=lizi_jingdian"
							target="_blank"><img alt="丽子美妆获得电商金典奖"
								src="http://cdn.lizi.com/images/flogo-jindian.png" /> </a>

						<a
							href="http://www.lizi.com/cms/cmsBuyerOrSeller?cmsMark=PICC_insurance&mark=buyer"
							target="_blank"><img alt="中国人保为丽子化妆品承保"
								src="http://cdn.lizi.com/images/flogo-picc.png" /> </a>

						<a href="http://www.itrust.org.cn/yz/pjwx.asp?wm=1563049676"
							target="_blank"><img alt="互联网协会A级信用认证"
								src="http://cdn.lizi.com/images/flogo-xinyong.png" /> </a>
					</p>
				</div>
				<div class="fsm fsm2">
					<img src="http://cdn.lizi.com/images/pc/lizi-weixin.png">
					<p>
						<i class="iconfont">&#xe616;</i>
						<br>
						扫描关注微信公众号
					</p>
				</div>
				<div class="fsm fsm">
					<a href="http://www.lizi.com/active/lizi-app.html" target="_blank"><img
							src="http://cdn.lizi.com/images/pc/fapp.jpg">
						<p>
							APP
							<br>
							手机客户端下载
						</p> </a>
				</div>
			</div>
		</div>

		<div id="g_sidebar" class="g_sidebar" style="height: 608px;">
			<ul class="sb_top">
				<li class="sb_cart">
					<a href="#cart/"><i class="iconfont"></i><span>购物车</span><em
						id="sidebar_cartnum">0</em> </a>
				</li>
			</ul>
			<ul class="sb_btm">
				<li>
					<a href="#user/home"><i class="iconfont"></i> </a>
					<div class="tip">
						<cite class="iconfont"></cite><a href="#user/home">我的丽人</a>
					</div>
				</li>
				<li class="sb_app">
					<a href="#active/lizi-app.html"><i class="iconfont"></i> </a>
					<div class="tip">
						<cite class="iconfont"></cite>
						<p>
							扫一扫，下载丽人APP
						</p>
						<a href="#active/lizi-app.html"><img
								src="jianjie_files/lizi-2code.png"> </a>
					</div>
				</li>
				<li>
					<a href="#"><i class="iconfont"></i> </a>
					<div class="tip">
						<cite class="iconfont"></cite><a href="#">返回首页</a>
					</div>
				</li>
				<li class="back2top">
					<a href="javascript:;"><i class="iconfont"></i> </a>
					<div class="tip">
						<cite class="iconfont"></cite><a href="#">返回顶部</a>
					</div>
				</li>
			</ul>
		</div>
	</body>
</html>