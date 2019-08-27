<?php 
$Query = mysqli_query($CONNECT, 'SELECT `login`, `regdate`, `group` FROM `users` ORDER BY `regdate` DESC LIMIT 4');
while ($Row = mysqli_fetch_assoc($Query)) $INFO1 .= '<div class="ChatBlock"><span>Дата регистрации: '.$Row['regdate'].'</span>'.UserGroup($Row['group']).': '.$Row['login'].'</div>';




Head('Админ панель');
?>
<body>
<div class="wrapper">
<div class="header"></div>
<div class="content">
<?php AdminMenu();
MessageShow() 
?>
<div class="Page">
<div class="Ablock1"><?php echo $INFO1 ?></div>
<div class="Ablock2"><?php echo $INFO2 ?></div>

<form method="POST" action="/admin/query">
<input type="text" name="login" placeholder="Логин пользователя" required>
<select size="1" name="group"><option value="0">Пользователь</option><option value="1">Модератор</option><option value="2">Админимстратор</option><option value="-1">Заблокирован</option></select>
<input type="submit" name="change_group" value="Изменить группу">
</form>

</div>
</div>

<?php Footer() ?>
</div>
</body>
</html>