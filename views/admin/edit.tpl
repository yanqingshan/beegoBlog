<form method="post" action="/admin/{{.Do_action}}">
    <div class="input-group">
      <span class="input-group-addon">标题</span>
      <input type="text" class="form-control" name="title" placeholder="你想说什么" value="{{.Post.Title}}" style="width: 80%" />
      <span class="input-group-addon">分类</span>
      <select class="form-control" value="{{.Post.Cid}}" name="cid" id="cidSelect">
        {{range .Cates}}
            <option value="{{.Id}}">{{.Name}}</option>
        {{end}}
      </select>
    </div>
    <br>
    <textarea name="content" id="content_id" style="display:none"></textarea>
    <div class="click2edit">
        {{if .Is_update}}
            {{str2html .Post.Content}}
        {{end}}
    </div>
    <!--
    <div class="form-group">
        <textarea id="mark_id" class="form-control" data-provide="markdown" placeholder="请表述" name="content" rows="12">{{.Post.Content}}</textarea>
    </div>
    -->
    <button class="btn btn-lg btn-primary btn-block" onclick="$('#content_id').val($('.click2edit').code())" type="submit">提交</button>
</form>

<link href="/static/css/codemirror.css" rel="stylesheet">
<link href="/static/css/monokai.css" rel="stylesheet">
<link href="/static/css/font-awesome.min.css" rel="stylesheet" />
<link href="/static/css/summernote.css" rel="stylesheet">

<script>
$(document).ready(function() {
  $('.click2edit').summernote({
    focus: true,
    height: 300,
    codemirror: { // codemirror options
        theme: 'monokai'
    }
  });
  $("#cidSelect").val($("#cidSelect").attr("value"))
});
</script>
