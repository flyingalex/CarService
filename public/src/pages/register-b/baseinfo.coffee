
validate = require "./../../common/validate/validate.coffee"
warn = require "./../../common/warn/warn.coffee"

validate = new validate()
warn = new warn()


$ ()->
	email = $("#email")
	password = $("#password")
	rePassword = $("#re_password")
	validateCodes = $("#validate_codes")
	warnTips = $(".warn-tips")
	protocol = $("#protocol")
	submitBtn = $(".submin-btn a")

	captcha = $(".validate-img img")
	changeCaptcha = $(".change-captcha")

	###
	# 点击”注册“按钮事件
	# 验证输入的信息的合法性
	###
	submit = ()->

		warnTips.hide()

		if !validate.email email.val()
			email.next().fadeIn(100).end().focus()
			return

		if !validate.password password.val()
			password.next().fadeIn(100).end().focus()
			return

		if rePassword.val().length is 0
			rePassword.next().fadeIn(100).end().focus()
			return

		if validateCodes.val().length is 0
			validateCodes.next().fadeIn(100).end().focus()
			return

		if !protocol.prop("checked")
			# protocol.parent().next().fadeIn(100)
			return

		$.post "/user/b_register", {
			login_account: email.val(),
			password: password.val(),
			re_password: rePassword.val(),
			captcha: validateCodes.val()
		}, (msg)->
			if msg["errCode"] isnt 0
				alert msg["message"]
			else
				alert "邮箱注册成功"
				window.location.href = "/user/b_active"

	#获取验证码
	getCaptcha = ()->
		captcha.attr('src', ' ').attr('src', '/user/captcha' + '?id=' + Math.random(12));


	#立即获取
	getCaptcha()

	#绑定”注册“按钮事件
	submitBtn.on "click", submit

	#更换验证码图片
	changeCaptcha.on "click", getCaptcha








