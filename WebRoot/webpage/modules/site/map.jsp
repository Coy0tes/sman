<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=IhUGZhZ6mFcUP83mNPFysQIZ" charset="utf-8"></script>
<script type="text/javascript" src="http://api.map.baidu.com/library/TrafficControl/1.4/src/TrafficControl_min.js" charset="utf-8"></script>
<link href="http://api.map.baidu.com/library/TrafficControl/1.4/src/TrafficControl_min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://api.map.baidu.com/library/TextIconOverlay/1.2/src/TextIconOverlay_min.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/library/MarkerClusterer/1.2/src/MarkerClusterer_min.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/library/DistanceTool/1.2/src/DistanceTool_min.js"></script>

<div id="pickPointMap" style="width:100%; height:100%;"></div>
<script>
	/**
	 * 初始化百度地图
	 */
	var normalIcon = new BMap.Icon(
			"${ctxStatic}/common/map/normalMarker.png", 
			new BMap.Size(32,32), 
			{
				anchor: new BMap.Size(14, 30)
			});
	var map = new BMap.Map("pickPointMap", {
		enableMapClick: false,
		minZoom: 4,
		maxZoom: 17
	});
	var point;
	// 设置中心点和层级
	map.centerAndZoom(new BMap.Point(119.170134, 36.715592), 11);
	// 设置当前城市
	map.setCurrentCity("潍坊");
	// 启用滚轮放大缩小
	map.enableScrollWheelZoom(true);
	// 设置鼠标样式
	map.setDefaultCursor("crosshair");
	
	var marker = undefined;
	
	//单击获取点击的经纬度
	map.addEventListener("click",function(e){
		point = {};
		point.lng = e.point.lng;
		point.lat = e.point.lat;
		if (marker != undefined) {
			map.removeOverlay(marker);
		}
		var pointLocation = new BMap.Geocoder();
		pointLocation.getLocation(new BMap.Point(point.lng, point.lat), function(gr) {
			if (gr != null) {
				point.address = gr.address;
			} else {
				point.address = '';
			}
		});
		marker = new BMap.Marker(point, {icon: normalIcon});
		map.addOverlay(marker);
		marker.setAnimation(BMAP_ANIMATION_BOUNCE);
	});
	
	function getPoint(){
		return point;
	}

</script>