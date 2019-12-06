<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="Snoopy.WebForm.News.test" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../Content/kindeditor/themes/default/default.css" rel="stylesheet" />
</head>
<body>
    <textarea id="editor_id" name="content" style="width: 700px; height: 300px;">&lt;strong&gt;HTML内容&lt;/strong&gt;</textarea>
</body>
<script src="../Content/kindeditor/kindeditor-all-min.js"></script>
<script src="../Content/kindeditor/lang/zh-CN.js"></script>
<script>
    //后面根据这个操作富文本
    var editor;
    KindEditor.ready(function (K) {
        editor = K.create('textarea[name="content"]', { //textarea的name值
            allowFileManager: true,
            resizeType: 1,  //允许改变富文本高度
            uploadJson: '../kindeditor/net/upload_json.ashx',  // 上传配置 一般处理文件
            fileManagerJson: '../kindeditor/net/file_manager_json.ashx',
            items: ['bold', 'link', 'indent', 'outdent', 'code', 'image','preview'
            ],
            //工具栏目配置
            afterCreate: function () {
                var self = this;
                //点击保存事件
                document.getElementById("btnSaveWrite").onclick = function () {
                    self.sync(); //同步编辑器内容
                    saveContent(); //保存内容到数据库 我这里是 Ajax提交
                }
                //Ctrl Enter 快捷保存
                K.ctrl(self.edit.doc, 13, function () {
                    self.sync();
                    saveContent();
                });
            }
        });
    });
</script>
</html>
