CKEDITOR.config.filebrowserUploadUrl = '/ckeditor/pictures';
CKEDITOR.config.filebrowserImageBrowseUrl = '/ckeditor/pictures';
CKEDITOR.config.toolbar = [
  { name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ], items: [ 'Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript', '-', 'RemoveFormat' ] },
  { name: 'styles', items: [ 'Styles', 'Format', 'Font', 'FontSize' ] },
  { name: 'colors', items: [ 'TextColor', 'BGColor' ] },
  { name: 'insert', items: ['Image', 'Table', 'HorizontalRule'] },
  { name: 'forms', items: [  'Checkbox' ] },
  '/',
  { name: 'paragraph', groups: [ 'list', 'indent', 'blocks', 'align', 'bidi' ], items: [ 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote',  '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock', '-' ] },
  { name: 'tools', items: [ 'Maximize' ] },
  { name: 'forms' },
  { name: 'tools' },
  { name: 'others' },
  '/',
  { name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
  { name: 'styles' },
  { name: 'colors' },
];
