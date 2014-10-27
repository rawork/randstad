<form class="form-horizontal register" method="post">
    <div class="control-group">
        <label class="control-label" for="inputCompany">Компания <small>/ Company</small></label>
        <div class="controls">
            <input type="text" name="company" id="inputCompany" class="input-block-level">
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="inputName">Имя <small>/ Name</small></label>
        <div class="controls">
            <input type="text" name="name[]" id="inputName" class="input-block-level">
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="inputLastname">Фамилия <small>/ Surname</small></label>
        <div class="controls">
            <input type="text" name="lastname[]" id="inputLastname" class="input-block-level">
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="inputJob">Должность <small>/ Job title</small></label>
        <div class="controls">
            <input type="text" name="job[]" id="inputJob" class="input-block-level">
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="inputEmail">Эл. почта <small>/ E-mail</small></label>
        <div class="controls">
            <input type="text" name="email[]" id="inputEmail" class="input-block-level">
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="inputPhone">Телефон <small>/ Phone</small></label>
        <div class="controls">
            <input type="text" name="phone[]" id="inputPhone" class="input-block-level">
        </div>
    </div>
    <div id="guests">

    </div>
    <div><a class="add">+ Добавить гостя / Invite a guest</a></div>
    <div>
        <button type="submit" class="btn btn-large btn-warning">Сохранить<small>Save</small></button>
    </div>
</form>

<p class="text-center">Если у Вас есть вопросы или Вам требуется помощь с регистрацией на церемонию вручения премии, пожалуйста, пишите нам на электронный адрес <a href="mailto:award@ancor.ru">award@ancor.ru</a></p>

<p class="text-center eng">For any assistance in the registration or additional information about the Randstad Award, please, contact us via  <a href="mailto:award@ancor.ru">award@ancor.ru</a>

<div id="guest-template">
    <div class="guest-info">
        <h5>Гость <a class="remove">удалить</a></h5>
        <div class="control-group">
            <label class="control-label" for="inputName">Имя <small>/ Name</small></label>
            <div class="controls">
                <input type="text" name="name[]" id="inputName" class="input-block-level">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="inputLastname">Фамилия <small>/ Surname</small></label>
            <div class="controls">
                <input type="text" name="lastname[]" id="inputLastname" class="input-block-level">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="inputJob">Должность <small>/ Job title</small></label>
            <div class="controls">
                <input type="text" name="job[]" id="inputJob" class="input-block-level">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="inputEmail">Эл. почта <small>/ E-mail</small></label>
            <div class="controls">
                <input type="text" name="email[]" id="inputEmail" class="input-block-level">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="inputPhone">Телефон <small>/ Phone</small></label>
            <div class="controls">
                <input type="text" name="phone[]" id="inputPhone" class="input-block-level">
            </div>
        </div>
    </div>
</div>

