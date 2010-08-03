module TinymceFilemanager
  class InstallationGenerator < Rails::Generators::Base

    FILES = [
      'plugins',
      'plugins/autosave',
      'plugins/autosave/editor_plugin.js',
      'plugins/autosave/editor_plugin_src.js',
      'plugins/autosave/langs',
      'plugins/autosave/langs/en.js',
      'plugins/visualchars',
      'plugins/visualchars/editor_plugin.js',
      'plugins/visualchars/editor_plugin_src.js',
      'plugins/bbcode',
      'plugins/bbcode/editor_plugin.js',
      'plugins/bbcode/editor_plugin_src.js',
      'plugins/autoresize',
      'plugins/autoresize/editor_plugin.js',
      'plugins/autoresize/editor_plugin_src.js',
      'plugins/save',
      'plugins/save/editor_plugin.js',
      'plugins/save/editor_plugin_src.js',
      'plugins/legacyoutput',
      'plugins/legacyoutput/editor_plugin.js',
      'plugins/legacyoutput/editor_plugin_src.js',
      'plugins/advlink',
      'plugins/advlink/js',
      'plugins/advlink/js/advlink.js',
      'plugins/advlink/link.htm',
      'plugins/advlink/editor_plugin.js',
      'plugins/advlink/css',
      'plugins/advlink/css/advlink.css',
      'plugins/advlink/editor_plugin_src.js',
      'plugins/advlink/langs',
      'plugins/advlink/langs/fr_dlg.js',
      'plugins/advlink/langs/cs_dlg.js',
      'plugins/advlink/langs/en_dlg.js',
      'plugins/advlink/langs/uk_dlg.js',
      'plugins/advlink/langs/es_dlg.js',
      'plugins/advlink/langs/it_dlg.js',
      'plugins/advlink/langs/pl_dlg.js',
      'plugins/advlink/langs/pt_dlg.js',
      'plugins/advlink/langs/ru_dlg.js',
      'plugins/advlink/langs/de_dlg.js',
      'plugins/advlink/langs/zh_dlg.js',
      'plugins/advlink/langs/sk_dlg.js',
      'plugins/advlink/langs/ja_dlg.js',
      'plugins/spellchecker',
      'plugins/spellchecker/editor_plugin.js',
      'plugins/spellchecker/css',
      'plugins/spellchecker/css/content.css',
      'plugins/spellchecker/editor_plugin_src.js',
      'plugins/spellchecker/img',
      'plugins/spellchecker/img/wline.gif',
      'plugins/table',
      'plugins/table/cell.htm',
      'plugins/table/js',
      'plugins/table/js/row.js',
      'plugins/table/js/merge_cells.js',
      'plugins/table/js/cell.js',
      'plugins/table/js/table.js',
      'plugins/table/row.htm',
      'plugins/table/table.htm',
      'plugins/table/editor_plugin.js',
      'plugins/table/css',
      'plugins/table/css/cell.css',
      'plugins/table/css/table.css',
      'plugins/table/css/row.css',
      'plugins/table/editor_plugin_src.js',
      'plugins/table/langs',
      'plugins/table/langs/fr_dlg.js',
      'plugins/table/langs/cs_dlg.js',
      'plugins/table/langs/en_dlg.js',
      'plugins/table/langs/uk_dlg.js',
      'plugins/table/langs/es_dlg.js',
      'plugins/table/langs/it_dlg.js',
      'plugins/table/langs/pl_dlg.js',
      'plugins/table/langs/pt_dlg.js',
      'plugins/table/langs/ru_dlg.js',
      'plugins/table/langs/de_dlg.js',
      'plugins/table/langs/zh_dlg.js',
      'plugins/table/langs/sk_dlg.js',
      'plugins/table/langs/ja_dlg.js',
      'plugins/table/merge_cells.htm',
      'plugins/noneditable',
      'plugins/noneditable/editor_plugin.js',
      'plugins/noneditable/editor_plugin_src.js',
      'plugins/preview',
      'plugins/preview/example.html',
      'plugins/preview/preview.html',
      'plugins/preview/editor_plugin.js',
      'plugins/preview/jscripts',
      'plugins/preview/jscripts/embed.js',
      'plugins/preview/editor_plugin_src.js',
      'plugins/insertdatetime',
      'plugins/insertdatetime/editor_plugin.js',
      'plugins/insertdatetime/editor_plugin_src.js',
      'plugins/pagebreak',
      'plugins/pagebreak/editor_plugin.js',
      'plugins/pagebreak/css',
      'plugins/pagebreak/css/content.css',
      'plugins/pagebreak/editor_plugin_src.js',
      'plugins/pagebreak/img',
      'plugins/pagebreak/img/trans.gif',
      'plugins/pagebreak/img/pagebreak.gif',
      'plugins/xhtmlxtras',
      'plugins/xhtmlxtras/cite.htm',
      'plugins/xhtmlxtras/del.htm',
      'plugins/xhtmlxtras/js',
      'plugins/xhtmlxtras/js/ins.js',
      'plugins/xhtmlxtras/js/element_common.js',
      'plugins/xhtmlxtras/js/del.js',
      'plugins/xhtmlxtras/js/abbr.js',
      'plugins/xhtmlxtras/js/cite.js',
      'plugins/xhtmlxtras/js/attributes.js',
      'plugins/xhtmlxtras/js/acronym.js',
      'plugins/xhtmlxtras/attributes.htm',
      'plugins/xhtmlxtras/editor_plugin.js',
      'plugins/xhtmlxtras/ins.htm',
      'plugins/xhtmlxtras/css',
      'plugins/xhtmlxtras/css/popup.css',
      'plugins/xhtmlxtras/css/attributes.css',
      'plugins/xhtmlxtras/editor_plugin_src.js',
      'plugins/xhtmlxtras/langs',
      'plugins/xhtmlxtras/langs/fr_dlg.js',
      'plugins/xhtmlxtras/langs/cs_dlg.js',
      'plugins/xhtmlxtras/langs/en_dlg.js',
      'plugins/xhtmlxtras/langs/uk_dlg.js',
      'plugins/xhtmlxtras/langs/es_dlg.js',
      'plugins/xhtmlxtras/langs/it_dlg.js',
      'plugins/xhtmlxtras/langs/pl_dlg.js',
      'plugins/xhtmlxtras/langs/pt_dlg.js',
      'plugins/xhtmlxtras/langs/ru_dlg.js',
      'plugins/xhtmlxtras/langs/de_dlg.js',
      'plugins/xhtmlxtras/langs/zh_dlg.js',
      'plugins/xhtmlxtras/langs/sk_dlg.js',
      'plugins/xhtmlxtras/langs/ja_dlg.js',
      'plugins/xhtmlxtras/abbr.htm',
      'plugins/xhtmlxtras/acronym.htm',
      'plugins/media',
      'plugins/media/js',
      'plugins/media/js/media.js',
      'plugins/media/js/embed.js',
      'plugins/media/media.htm',
      'plugins/media/editor_plugin.js',
      'plugins/media/css',
      'plugins/media/css/media.css',
      'plugins/media/css/content.css',
      'plugins/media/editor_plugin_src.js',
      'plugins/media/img',
      'plugins/media/img/trans.gif',
      'plugins/media/img/flash.gif',
      'plugins/media/img/quicktime.gif',
      'plugins/media/img/shockwave.gif',
      'plugins/media/img/realmedia.gif',
      'plugins/media/img/windowsmedia.gif',
      'plugins/media/img/flv_player.swf',
      'plugins/media/langs',
      'plugins/media/langs/fr_dlg.js',
      'plugins/media/langs/cs_dlg.js',
      'plugins/media/langs/en_dlg.js',
      'plugins/media/langs/uk_dlg.js',
      'plugins/media/langs/es_dlg.js',
      'plugins/media/langs/it_dlg.js',
      'plugins/media/langs/pl_dlg.js',
      'plugins/media/langs/pt_dlg.js',
      'plugins/media/langs/ru_dlg.js',
      'plugins/media/langs/de_dlg.js',
      'plugins/media/langs/zh_dlg.js',
      'plugins/media/langs/sk_dlg.js',
      'plugins/media/langs/ja_dlg.js',
      'plugins/contextmenu',
      'plugins/contextmenu/editor_plugin.js',
      'plugins/contextmenu/editor_plugin_src.js',
      'plugins/template',
      'plugins/template/js',
      'plugins/template/js/template.js',
      'plugins/template/blank.htm',
      'plugins/template/editor_plugin.js',
      'plugins/template/template.htm',
      'plugins/template/css',
      'plugins/template/css/template.css',
      'plugins/template/editor_plugin_src.js',
      'plugins/template/langs',
      'plugins/template/langs/fr_dlg.js',
      'plugins/template/langs/cs_dlg.js',
      'plugins/template/langs/en_dlg.js',
      'plugins/template/langs/uk_dlg.js',
      'plugins/template/langs/es_dlg.js',
      'plugins/template/langs/it_dlg.js',
      'plugins/template/langs/pl_dlg.js',
      'plugins/template/langs/pt_dlg.js',
      'plugins/template/langs/ru_dlg.js',
      'plugins/template/langs/de_dlg.js',
      'plugins/template/langs/zh_dlg.js',
      'plugins/template/langs/sk_dlg.js',
      'plugins/template/langs/ja_dlg.js',
      'plugins/advhr',
      'plugins/advhr/rule.htm',
      'plugins/advhr/js',
      'plugins/advhr/js/rule.js',
      'plugins/advhr/editor_plugin.js',
      'plugins/advhr/css',
      'plugins/advhr/css/advhr.css',
      'plugins/advhr/editor_plugin_src.js',
      'plugins/advhr/langs',
      'plugins/advhr/langs/fr_dlg.js',
      'plugins/advhr/langs/cs_dlg.js',
      'plugins/advhr/langs/en_dlg.js',
      'plugins/advhr/langs/uk_dlg.js',
      'plugins/advhr/langs/es_dlg.js',
      'plugins/advhr/langs/it_dlg.js',
      'plugins/advhr/langs/pl_dlg.js',
      'plugins/advhr/langs/pt_dlg.js',
      'plugins/advhr/langs/ru_dlg.js',
      'plugins/advhr/langs/de_dlg.js',
      'plugins/advhr/langs/zh_dlg.js',
      'plugins/advhr/langs/sk_dlg.js',
      'plugins/advhr/langs/ja_dlg.js',
      'plugins/wordcount',
      'plugins/wordcount/editor_plugin.js',
      'plugins/wordcount/editor_plugin_src.js',
      'plugins/advlist',
      'plugins/advlist/editor_plugin.js',
      'plugins/advlist/editor_plugin_src.js',
      'plugins/example',
      'plugins/example/js',
      'plugins/example/js/dialog.js',
      'plugins/example/editor_plugin.js',
      'plugins/example/dialog.htm',
      'plugins/example/editor_plugin_src.js',
      'plugins/example/img',
      'plugins/example/img/example.gif',
      'plugins/example/langs',
      'plugins/example/langs/en_dlg.js',
      'plugins/example/langs/en.js',
      'plugins/iespell',
      'plugins/iespell/editor_plugin.js',
      'plugins/iespell/editor_plugin_src.js',
      'plugins/directionality',
      'plugins/directionality/editor_plugin.js',
      'plugins/directionality/editor_plugin_src.js',
      'plugins/nonbreaking',
      'plugins/nonbreaking/editor_plugin.js',
      'plugins/nonbreaking/editor_plugin_src.js',
      'plugins/advimage',
      'plugins/advimage/js',
      'plugins/advimage/js/image.js',
      'plugins/advimage/image.htm',
      'plugins/advimage/editor_plugin.js',
      'plugins/advimage/css',
      'plugins/advimage/css/advimage.css',
      'plugins/advimage/editor_plugin_src.js',
      'plugins/advimage/img',
      'plugins/advimage/img/sample.gif',
      'plugins/advimage/langs',
      'plugins/advimage/langs/fr_dlg.js',
      'plugins/advimage/langs/cs_dlg.js',
      'plugins/advimage/langs/en_dlg.js',
      'plugins/advimage/langs/uk_dlg.js',
      'plugins/advimage/langs/es_dlg.js',
      'plugins/advimage/langs/it_dlg.js',
      'plugins/advimage/langs/pl_dlg.js',
      'plugins/advimage/langs/pt_dlg.js',
      'plugins/advimage/langs/ru_dlg.js',
      'plugins/advimage/langs/de_dlg.js',
      'plugins/advimage/langs/zh_dlg.js',
      'plugins/advimage/langs/sk_dlg.js',
      'plugins/advimage/langs/ja_dlg.js',
      'plugins/print',
      'plugins/print/editor_plugin.js',
      'plugins/print/editor_plugin_src.js',
      'plugins/searchreplace',
      'plugins/searchreplace/js',
      'plugins/searchreplace/js/searchreplace.js',
      'plugins/searchreplace/editor_plugin.js',
      'plugins/searchreplace/searchreplace.htm',
      'plugins/searchreplace/css',
      'plugins/searchreplace/css/searchreplace.css',
      'plugins/searchreplace/editor_plugin_src.js',
      'plugins/searchreplace/langs',
      'plugins/searchreplace/langs/fr_dlg.js',
      'plugins/searchreplace/langs/cs_dlg.js',
      'plugins/searchreplace/langs/en_dlg.js',
      'plugins/searchreplace/langs/uk_dlg.js',
      'plugins/searchreplace/langs/es_dlg.js',
      'plugins/searchreplace/langs/it_dlg.js',
      'plugins/searchreplace/langs/pl_dlg.js',
      'plugins/searchreplace/langs/pt_dlg.js',
      'plugins/searchreplace/langs/ru_dlg.js',
      'plugins/searchreplace/langs/de_dlg.js',
      'plugins/searchreplace/langs/zh_dlg.js',
      'plugins/searchreplace/langs/sk_dlg.js',
      'plugins/searchreplace/langs/ja_dlg.js',
      'plugins/inlinepopups',
      'plugins/inlinepopups/editor_plugin.js',
      'plugins/inlinepopups/skins',
      'plugins/inlinepopups/skins/clearlooks2',
      'plugins/inlinepopups/skins/clearlooks2/window.css',
      'plugins/inlinepopups/skins/clearlooks2/img',
      'plugins/inlinepopups/skins/clearlooks2/img/buttons.gif',
      'plugins/inlinepopups/skins/clearlooks2/img/horizontal.gif',
      'plugins/inlinepopups/skins/clearlooks2/img/button.gif',
      'plugins/inlinepopups/skins/clearlooks2/img/corners.gif',
      'plugins/inlinepopups/skins/clearlooks2/img/alert.gif',
      'plugins/inlinepopups/skins/clearlooks2/img/vertical.gif',
      'plugins/inlinepopups/skins/clearlooks2/img/confirm.gif',
      'plugins/inlinepopups/template.htm',
      'plugins/inlinepopups/editor_plugin_src.js',
      'plugins/emotions',
      'plugins/emotions/js',
      'plugins/emotions/js/emotions.js',
      'plugins/emotions/editor_plugin.js',
      'plugins/emotions/emotions.htm',
      'plugins/emotions/editor_plugin_src.js',
      'plugins/emotions/img',
      'plugins/emotions/img/smiley-surprised.gif',
      'plugins/emotions/img/smiley-undecided.gif',
      'plugins/emotions/img/smiley-yell.gif',
      'plugins/emotions/img/smiley-cool.gif',
      'plugins/emotions/img/smiley-smile.gif',
      'plugins/emotions/img/smiley-money-mouth.gif',
      'plugins/emotions/img/smiley-laughing.gif',
      'plugins/emotions/img/smiley-innocent.gif',
      'plugins/emotions/img/smiley-sealed.gif',
      'plugins/emotions/img/smiley-wink.gif',
      'plugins/emotions/img/smiley-embarassed.gif',
      'plugins/emotions/img/smiley-cry.gif',
      'plugins/emotions/img/smiley-tongue-out.gif',
      'plugins/emotions/img/smiley-frown.gif',
      'plugins/emotions/img/smiley-kiss.gif',
      'plugins/emotions/img/smiley-foot-in-mouth.gif',
      'plugins/emotions/langs',
      'plugins/emotions/langs/fr_dlg.js',
      'plugins/emotions/langs/cs_dlg.js',
      'plugins/emotions/langs/en_dlg.js',
      'plugins/emotions/langs/uk_dlg.js',
      'plugins/emotions/langs/es_dlg.js',
      'plugins/emotions/langs/it_dlg.js',
      'plugins/emotions/langs/pl_dlg.js',
      'plugins/emotions/langs/pt_dlg.js',
      'plugins/emotions/langs/ru_dlg.js',
      'plugins/emotions/langs/de_dlg.js',
      'plugins/emotions/langs/zh_dlg.js',
      'plugins/emotions/langs/sk_dlg.js',
      'plugins/emotions/langs/ja_dlg.js',
      'plugins/style',
      'plugins/style/js',
      'plugins/style/js/props.js',
      'plugins/style/editor_plugin.js',
      'plugins/style/props.htm',
      'plugins/style/css',
      'plugins/style/css/props.css',
      'plugins/style/editor_plugin_src.js',
      'plugins/style/langs',
      'plugins/style/langs/fr_dlg.js',
      'plugins/style/langs/cs_dlg.js',
      'plugins/style/langs/en_dlg.js',
      'plugins/style/langs/uk_dlg.js',
      'plugins/style/langs/es_dlg.js',
      'plugins/style/langs/it_dlg.js',
      'plugins/style/langs/pl_dlg.js',
      'plugins/style/langs/pt_dlg.js',
      'plugins/style/langs/ru_dlg.js',
      'plugins/style/langs/de_dlg.js',
      'plugins/style/langs/zh_dlg.js',
      'plugins/style/langs/sk_dlg.js',
      'plugins/style/langs/ja_dlg.js',
      'plugins/fullscreen',
      'plugins/fullscreen/fullscreen.htm',
      'plugins/fullscreen/editor_plugin.js',
      'plugins/fullscreen/editor_plugin_src.js',
      'plugins/fullpage',
      'plugins/fullpage/fullpage.htm',
      'plugins/fullpage/js',
      'plugins/fullpage/js/fullpage.js',
      'plugins/fullpage/editor_plugin.js',
      'plugins/fullpage/css',
      'plugins/fullpage/css/fullpage.css',
      'plugins/fullpage/editor_plugin_src.js',
      'plugins/fullpage/langs',
      'plugins/fullpage/langs/fr_dlg.js',
      'plugins/fullpage/langs/cs_dlg.js',
      'plugins/fullpage/langs/en_dlg.js',
      'plugins/fullpage/langs/uk_dlg.js',
      'plugins/fullpage/langs/es_dlg.js',
      'plugins/fullpage/langs/it_dlg.js',
      'plugins/fullpage/langs/pl_dlg.js',
      'plugins/fullpage/langs/pt_dlg.js',
      'plugins/fullpage/langs/ru_dlg.js',
      'plugins/fullpage/langs/de_dlg.js',
      'plugins/fullpage/langs/zh_dlg.js',
      'plugins/fullpage/langs/sk_dlg.js',
      'plugins/fullpage/langs/ja_dlg.js',
      'plugins/layer',
      'plugins/layer/editor_plugin.js',
      'plugins/layer/editor_plugin_src.js',
      'plugins/paste',
      'plugins/paste/pastetext.htm',
      'plugins/paste/js',
      'plugins/paste/js/pasteword.js',
      'plugins/paste/js/pastetext.js',
      'plugins/paste/editor_plugin.js',
      'plugins/paste/pasteword.htm',
      'plugins/paste/editor_plugin_src.js',
      'plugins/paste/langs',
      'plugins/paste/langs/fr_dlg.js',
      'plugins/paste/langs/cs_dlg.js',
      'plugins/paste/langs/en_dlg.js',
      'plugins/paste/langs/uk_dlg.js',
      'plugins/paste/langs/es_dlg.js',
      'plugins/paste/langs/it_dlg.js',
      'plugins/paste/langs/pl_dlg.js',
      'plugins/paste/langs/pt_dlg.js',
      'plugins/paste/langs/ru_dlg.js',
      'plugins/paste/langs/de_dlg.js',
      'plugins/paste/langs/zh_dlg.js',
      'plugins/paste/langs/sk_dlg.js',
      'plugins/paste/langs/ja_dlg.js',
      'plugins/tabfocus',
      'plugins/tabfocus/editor_plugin.js',
      'plugins/tabfocus/editor_plugin_src.js',
      'tiny_mce_popup.js',
      'tiny_mce.js',
      'utils',
      'utils/form_utils.js',
      'utils/validate.js',
      'utils/editable_selects.js',
      'utils/mctabs.js',
      'tiny_mce_src.js',
      'list.txt',
      'langs',
      'langs/pl.js',
      'langs/cs.js',
      'langs/ja.js',
      'langs/zh.js',
      'langs/es.js',
      'langs/fr.js',
      'langs/pt.js',
      'langs/ru.js',
      'langs/de.js',
      'langs/uk.js',
      'langs/it.js',
      'langs/sk.js',
      'langs/en.js',
      'license.txt',
      'themes',
      'themes/advanced',
      'themes/advanced/js',
      'themes/advanced/js/link.js',
      'themes/advanced/js/source_editor.js',
      'themes/advanced/js/color_picker.js',
      'themes/advanced/js/charmap.js',
      'themes/advanced/js/anchor.js',
      'themes/advanced/js/about.js',
      'themes/advanced/js/image.js',
      'themes/advanced/image.htm',
      'themes/advanced/color_picker.htm',
      'themes/advanced/charmap.htm',
      'themes/advanced/link.htm',
      'themes/advanced/skins',
      'themes/advanced/skins/default',
      'themes/advanced/skins/default/content.css',
      'themes/advanced/skins/default/ui.css',
      'themes/advanced/skins/default/dialog.css',
      'themes/advanced/skins/default/img',
      'themes/advanced/skins/default/img/menu_arrow.gif',
      'themes/advanced/skins/default/img/buttons.png',
      'themes/advanced/skins/default/img/menu_check.gif',
      'themes/advanced/skins/default/img/tabs.gif',
      'themes/advanced/skins/default/img/progress.gif',
      'themes/advanced/skins/default/img/items.gif',
      'themes/advanced/skins/o2k7',
      'themes/advanced/skins/o2k7/content.css',
      'themes/advanced/skins/o2k7/ui.css',
      'themes/advanced/skins/o2k7/dialog.css',
      'themes/advanced/skins/o2k7/ui_black.css',
      'themes/advanced/skins/o2k7/img',
      'themes/advanced/skins/o2k7/img/button_bg_silver.png',
      'themes/advanced/skins/o2k7/img/button_bg_black.png',
      'themes/advanced/skins/o2k7/img/button_bg.png',
      'themes/advanced/skins/o2k7/ui_silver.css',
      'themes/advanced/source_editor.htm',
      'themes/advanced/editor_template.js',
      'themes/advanced/about.htm',
      'themes/advanced/editor_template_src.js',
      'themes/advanced/anchor.htm',
      'themes/advanced/img',
      'themes/advanced/img/colorpicker.jpg',
      'themes/advanced/img/icons.gif',
      'themes/advanced/langs',
      'themes/advanced/langs/fr_dlg.js',
      'themes/advanced/langs/cs_dlg.js',
      'themes/advanced/langs/pl.js',
      'themes/advanced/langs/cs.js',
      'themes/advanced/langs/en_dlg.js',
      'themes/advanced/langs/uk_dlg.js',
      'themes/advanced/langs/es_dlg.js',
      'themes/advanced/langs/it_dlg.js',
      'themes/advanced/langs/ja.js',
      'themes/advanced/langs/zh.js',
      'themes/advanced/langs/pl_dlg.js',
      'themes/advanced/langs/pt_dlg.js',
      'themes/advanced/langs/es.js',
      'themes/advanced/langs/fr.js',
      'themes/advanced/langs/pt.js',
      'themes/advanced/langs/ru.js',
      'themes/advanced/langs/de.js',
      'themes/advanced/langs/ru_dlg.js',
      'themes/advanced/langs/de_dlg.js',
      'themes/advanced/langs/uk.js',
      'themes/advanced/langs/zh_dlg.js',
      'themes/advanced/langs/it.js',
      'themes/advanced/langs/sk.js',
      'themes/advanced/langs/sk_dlg.js',
      'themes/advanced/langs/en.js',
      'themes/advanced/langs/ja_dlg.js',
      'themes/simple',
      'themes/simple/skins',
      'themes/simple/skins/default',
      'themes/simple/skins/default/content.css',
      'themes/simple/skins/default/ui.css',
      'themes/simple/skins/o2k7',
      'themes/simple/skins/o2k7/content.css',
      'themes/simple/skins/o2k7/ui.css',
      'themes/simple/skins/o2k7/img',
      'themes/simple/skins/o2k7/img/button_bg.png',
      'themes/simple/editor_template.js',
      'themes/simple/editor_template_src.js',
      'themes/simple/img',
      'themes/simple/img/icons.gif',
      'themes/simple/langs',
      'themes/simple/langs/pl.js',
      'themes/simple/langs/cs.js',
      'themes/simple/langs/ja.js',
      'themes/simple/langs/zh.js',
      'themes/simple/langs/es.js',
      'themes/simple/langs/fr.js',
      'themes/simple/langs/pt.js',
      'themes/simple/langs/ru.js',
      'themes/simple/langs/de.js',
      'themes/simple/langs/uk.js',
      'themes/simple/langs/it.js',
      'themes/simple/langs/sk.js',
      'themes/simple/langs/en.js'
    ]

    desc "Copy TinyMce files to public/javascript folder."

    source_root File.expand_path('../templates', __FILE__)

    def install_tinymce
      src_prefix = File.join('javascripts', 'tiny_mce')
      dest_prefix = File.join('public', 'javascripts', 'tiny_mce')

      FILES.each do |path|
        src = File.join(src_prefix, path)
        dest = File.join(dest_prefix, path)

        copy_file(src, dest) if path =~ /\./
      end

    end

  end

end