<!-- BEGIN switch_user_logged_in -->
<div id="pun-visit" class="clearfix">
	<ul>
			<li><a href="{U_SEARCH_NEW}">{L_SEARCH_NEW}</a></li>
			<li><a href="{U_SEARCH_SELF}">{L_SEARCH_SELF}</a></li>
	</ul>
	<p>{LOGGED_AS}. {LAST_VISIT_DATE}</p>
</div>
<!-- END switch_user_logged_in -->
<!-- BEGIN switch_user_logged_out -->
<div id="pun-visit">
	<p>{L_NOT_CONNECTED} {L_LOGIN_REGISTER}</p>
</div>
<!-- END switch_user_logged_out -->

<div class="pun-crumbs" itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
	<p class="crumbs">
		<a href="{U_INDEX}" itemprop="url"><span itemprop="title">{L_INDEX}</span></a>{NAV_CAT_DESC}&nbsp;&raquo;&nbsp;<strong>{L_SEND_EMAIL_MSG}</strong>
	</p>
</div>

{ERROR_BOX}

<div class="main">
	<form action="{S_POST_ACTION}" method="post" name="post" onsubmit="return checkForm(this)" class="frm-form">
		<div class="main-head">
			<h1 class="page-title">{L_SEND_EMAIL_MSG}</h1>
		</div>

		<div class="main-content">
			<fieldset class="frm-set">
				<dl>
					<dt><label>{L_RECIPIENT}</label></dt>
					<dd><input type="text" name="friendname" value="{USERNAME}" class="inputbox" /></dd>
				</dl>
				<!-- BEGIN switch_tell_friend -->
				<dl>
					<dt><label>{L_TELL_FRIEND_RECIEVER_EMAIL}</label></dt>
					<dd><input type="text" name="friendemail" value="" class="inputbox" /></dd>
				</dl>
				<!-- END switch_tell_friend -->
				<dl>
					<dt><label>{L_SUBJECT}</label></dt>
					<dd><input class="inputbox" type="text" name="subject" value="{SUBJECT}" maxlength="100" /></dd>
				</dl>
				<dl>
					<dt>
						<label>{L_MESSAGE_BODY}</label><br />
						<span class="normal">{L_MESSAGE_BODY_DESC}</span>
					</dt>
					<dd>
						<textarea class="inputbox" name="message" rows="25" cols="40" tabindex="3">{MESSAGE}</textarea>
						<!-- BEGIN switch_tell_friend -->
						<input type="text" class="inputbox" value="{MAIL_LINK}" disabled="disabled" />
						<!-- END switch_tell_friend -->
					</dd>
				</dl>
				<dl>
					<dt>&nbsp;</dt>
					<dd><label><input type="checkbox" name="cc_email" value="1" checked="checked" />{L_CC_EMAIL}</label></dd>
				</dl>

				<dl class="frm-buttons">
					<dt>&nbsp;</dt>
					<dd>{S_HIDDEN_FIELDS}
						<input type="submit" name="submit" value="{L_SEND_EMAIL}" />
					</dd>
				</dl>
			</fieldset>
		</div>
	</form>
</div>