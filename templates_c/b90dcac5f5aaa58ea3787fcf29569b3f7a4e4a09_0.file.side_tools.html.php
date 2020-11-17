<?php
/* Smarty version 3.1.29, created on 2020-11-17 06:00:04
  from "C:\UniServerZ\www\mini_shop\templates\side_tools.html" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_5fb366e4399cd1_76428136',
  'file_dependency' => 
  array (
    'b90dcac5f5aaa58ea3787fcf29569b3f7a4e4a09' => 
    array (
      0 => 'C:\\UniServerZ\\www\\mini_shop\\templates\\side_tools.html',
      1 => 1605592797,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5fb366e4399cd1_76428136 ($_smarty_tpl) {
?>
<div class="alert alert-success">
  <?php echo $_smarty_tpl->tpl_vars['login_user']->value['user_name'];?>
歡迎光臨<?php echo $_smarty_tpl->tpl_vars['shop_name']->value;?>

</div>
<a href="index.php" class="btn btn-block btn-primary">首頁</a>
<a href="user.php?op=user_display&user_sn=<?php echo $_smarty_tpl->tpl_vars['login_user']->value['user_sn'];?>
" class="btn btn-block btn-primary">我的帳號</a>
<?php if ($_smarty_tpl->tpl_vars['isUser']->value) {?>
    <a href="bill.php" class="btn btn-block btn-primary">我的訂單</a>
<?php }
if ($_smarty_tpl->tpl_vars['isAdmin']->value) {?>
    <a href="tool.php?op=goods_form" class="btn btn-block btn-primary">發布商品</a>
<?php }?>
<a href="user.php?op=user_logout" class="btn btn-block btn-primary">登出</a><?php }
}
