/**
 * @license Copyright (c) 2003-2013, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.html or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function (config) {
    // Define changes to default configuration here. For example:
    // config.language = 'fr';
    // config.uiColor = '#AADC6E';
    config.filebrowserImageBrowseUrl = CKEDITOR.basePath + "ImageBrowser.aspx";
    config.filebrowserImageWindowWidth = 780;
    config.filebrowserImageWindowHeight = 720;
    config.filebrowserBrowseUrl = CKEDITOR.basePath + "LinkBrowser.aspx";
    config.filebrowserWindowWidth = 500;
    config.filebrowserWindowHeight = 650;
    config.extraPlugins = 'insertpre,syntaxhighlight';
    config.insertpre_class = 'prettyprint';
    config.insertpre_style = 'background-color:#F8F8F8;border:1px solid #DDD;padding:10px; widht:400px;';
    config.allowedContent = true;
    config.syntaxhighlight_hideGutter = true;
    config.syntaxhighlight_hideControls = true;
    config.syntaxhighlight_collapse = false;
    config.syntaxhighlight_showColumns = false;
    config.syntaxhighlight_noWrap = true;
    config.syntaxhighlight_lang = 'html';
    CKEDITOR.stylesSet.add('brush')
};
