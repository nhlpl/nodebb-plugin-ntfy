<div class="acp-page-container">
	{{{ if (version != "2") }}}
	<!-- IMPORT admin/partials/settings/header.tpl -->
	{{{ end }}}

	<div class="row m-0">
		<div id="spy-container" class="col-12 col-md-8 px-0 mb-4" tabindex="0">
			<form role="form" class="ntfy-settings">
				<div class="mb-4">
					<h5 class="fw-bold tracking-tight settings-header">General</h5>

					<div class="mb-3">
						<label class="form-label" for="maxLength">Maximum message length</label>
						<input type="number" min="0" max="4096" id="maxLength" name="maxLength" title="Maximum message length" class="form-control" placeholder="256">
						<p class="form-text">
							Additional characters beyond this specified length will be truncated.
							Due to a software limitation, if the message body is greater than 4096 bytes, the message itself will be an attachment in the push notification.
						</p>
					</div>

					<div class="form-check form-switch">
						<input type="checkbox" class="form-check-input" id="dropBodyLong" name="dropBodyLong">
						<label for="dropBodyLong" class="form-check-label">Send <code>bodyShort</code> only</label>
						<p class="form-text">
							A NodeBB notification contains both <code>bodyShort</code> and <code>bodyLong</code>.
							Typically <code>bodyLong</code> contains user-generated text (like post content, etc.),
							whereas <code>bodyShort</code> would contain a system description or shorter user-generated content (like topic titles).
							Enable this to only use <code>bodyShort</code> in the push notification.
						</p>
					</div>
				</div>
			</form>
		</div>

		{{{ if (version != "2") }}}
		<!-- IMPORT admin/partials/settings/toc.tpl -->
		{{{ end }}}
	</div>
</div>

{{{ if (version == "2") }}}
<button id="save" class="floating-button mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored">
	<i class="material-icons">save</i>
</button>
{{{ end }}}