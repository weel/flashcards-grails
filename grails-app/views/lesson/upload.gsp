<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="main" />
<title><g:message code="default.upload.file" /></title>
</head>
<body>
	<div class="page-header">
		<h1>Forms</h1>
	</div>
	<div class="row">
		<div class="span16 columns">
			<g:form action="uploadFile" method="post"
				enctype="multipart/form-data">
				<fieldset>
					<legend>Upload Form:</legend>

					<g:if test="${flash.message}">
						<div class="alert-message block-message info">
							<p>
								${flash.message}
							</p>
						</div>
					</g:if>

					<div class="clearfix">
						<label for="fileInput">File Input</label>
						<div class="input">
							<input class="input-file" id="fileInput" name="jsonData"
								type="file">
						</div>
					</div>
					<div class="actions">
						<input type="submit" class="btn primary" value="Upload">
					</div>
				</fieldset>
			</g:form>
		</div>
		<!-- /row -->
	</div>
</body>
</html>
