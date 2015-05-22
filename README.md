# Redactor with Dragonfly

## Gemfile

    gem 'redactor-dragonfly', github: 'dnitta/redactor-dragonfly'

## Generate model and migration

    $ rails generate redactor_dragonfly:install

## Install Redactor

1. Buy licence and download latest `redactor.js` from http://imperavi.com/redactor/ .
2. Set `redactor.js` to `/app/assets/javascripts/redactor_dragonfly/` of your app.
3. Add `//= require redactor_dragonfly` to `/app/assets/javascripts/application.js` of your app.
4. Add `//= require redactor_dragonfly/langs/XX` to `/app/assets/javascripts/application.js` of your app, if you need other language.
5. Add ` *= require redactor_dragonfly` to `/app/assets/stylesheets/application.css` of your app.
 
## Use redactor

Sample html is below.

```
<textarea class="redactor"></textarea>
<script>
$(function(){
  $('.redactor').redactor({
    imageGetJson:"/redactor_dragonfly/images",
    imageUpload:"/redactor_dragonfly/images?" + window.csrf_argument,
    fileUpload:"/redactor_dragonfly/files?" + window.csrf_argument,
    lang:"ja"
  });
});
</script>
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

the `redactor-dragonfly` project is MIT-LICENSE.

Redactor has [3 different licenses](http://imperavi.com/redactor/) for any use.
For details please see [License Agreement](http://imperavi.com/redactor/license/).
