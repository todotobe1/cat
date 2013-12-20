	<%@ page session="false" language="java" pageEncoding="UTF-8" %>
<div class="row-fluid">
      <div class="span2">
		<%@include file="../bugTree.jsp"%>
	</div>
	<div class="span10">
			</br>
			<div class="tabbable "  > <!-- Only required for left/right tabs -->
			<ul class="nav nav-tabs">
			 	<li class="text-right active"><a id="tab1Href" href="#tab1" data-toggle="tab"><strong>Web</strong></a></li>
			 	<li class="text-right "><a id="tab2Href" href="#tab2" data-toggle="tab"><strong>Service</strong></a></li>
			</ul>
			<div class="tab-content">
				<div class="tab-pane active" id="tab1">
					<div class="report">
						<table id="web_content" class="table table-striped table-bordered table-condensed table-hover">
							<thead>
							<tr>
								<th>Web-应用</th>
								<th>机器数</th>
								<th>访问量</th>
								<th>错误量</th>
								<th>错误量%</th>
								<th>响应时间</th>
								<th>95Line</th>
								<th>Load(平均)</th>
								<th>Load(最大)</th>
								<th>FullGc(小时平均)</th>
								<th>FullGc(最大)</th>
								<th>NewGc(小时平均)</th>
								<th>NewGc(最大)</th>
							</tr></thead>
						<tbody>
							<c:forEach var="item" items="${model.utilizationWebList}" varStatus="status">
								<tr>
									<td>${item.id}</td>
									<td style="text-align:right">${item.machineNumber}</td>
									<td style="text-align:right">${w:format(item.applicationStates.URL.count,'###0')}</td>
									<td style="text-align:right">${w:format(item.applicationStates.URL.failureCount,'###0')}</td>
									<td style="text-align:right">${w:format(item.applicationStates.URL.failurePercent,'###0%')}</td>
									<td style="text-align:right">${w:format(item.applicationStates.URL.avg,'#0.0')}</td>
									<td style="text-align:right">${w:format(item.applicationStates.URL.avg95/1000,'#0.0')}</td>
									<td style="text-align:right">${w:format(item.machineStates.load.avg,'#0.0')}</td>
									<td style="text-align:right">${w:format(item.machineStates.load.avgMax,'#0.0')}</td>
									<td style="text-align:right">${w:format(item.machineStates.fullGc.avg,'#0.0')}</td>
									<td style="text-align:right">${w:format(item.machineStates.fullGc.avgMax,'#0.0')}</td>
									<td style="text-align:right">${w:format(item.machineStates.newGc.avg,'#0.0')}</td>
									<td style="text-align:right">${w:format(item.machineStates.newGc.avgMax,'#0.0')}</td>
								</tr>
							</c:forEach></tbody>
						</table>
						
					</div>
				</div>
				<div class="tab-pane" id="tab2">
					<div class="report">
						<table id="service_content" class="table table-striped table-bordered table-condensed table-hover">
							<thead>
								<tr>
									<th>Service-应用</th>
									<th>机器</th>
									<th>访问量</th>
									<th>错误量</th>
									<th>错误量%</th>
									<th>响应时间</th>
									<th>95Line</th>
									<th>Load(平均)</th>
									<th>Load(最大)</th>
									<th>FullGc(小时平均)</th>
									<th>FullGc(最大)</th>
									<th>NewGc(小时平均)</th>
									<th>NewGc(最大)</th>
								</tr></thead>
						<tbody>
							<c:forEach var="item" items="${model.utilizationServiceList}" varStatus="status">
								<tr>
									<td>${item.id}</td>
									<td style="text-align:right">${item.machineNumber}</td>
									<td style="text-align:right">${w:format(item.applicationStates.PigeonService.count,'###0')}</td>
									<td style="text-align:right">${w:format(item.applicationStates.PigeonService.failureCount,'###0')}</td>
									<td style="text-align:right">${w:format(item.applicationStates.PigeonService.failurePercent,'###0%')}</td>
									<td style="text-align:right">${w:format(item.applicationStates.PigeonService.avg,'#0.0')}</td>
									<td style="text-align:right">${w:format(item.applicationStates.PigeonService.avg95/1000,'#0.0')}</td>
									<td style="text-align:right">${w:format(item.machineStates.load.avg,'#0.0')}</td>
									<td style="text-align:right">${w:format(item.machineStates.load.avgMax,'#0.0')}</td>
									<td style="text-align:right">${w:format(item.machineStates.fullGc.avg,'#0.0')}</td>
									<td style="text-align:right">${w:format(item.machineStates.fullGc.avgMax,'#0.0')}</td>
									<td style="text-align:right">${w:format(item.machineStates.newGc.avg,'#0.0')}</td>
									<td style="text-align:right">${w:format(item.machineStates.newGc.avgMax,'#0.0')}</td>
								</tr>
							</c:forEach></tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>