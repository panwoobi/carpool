
<div class="container">
  <!-- Modal -->
  <div class="modal fade" id="loginProc" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">

        <div class="modal-body" style="padding:40px 50px;">
          <form action="${pageContext.request.contextPath}/myLogin" method="post">
            <div class="form-group">
              <label for="id"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input type="text" class="form-control" name="id" placeholder="Enter email">
            </div>
            <div class="form-group">
              <label for="pw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="text" class="form-control" name="pw" placeholder="Enter password">
            </div>
            <div>
              <label>Forgot <a href="#">Password?</a></label>
            </div>
              <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Login</button>
          </form>
        </div>
      </div>
    </div>
  </div> 
</div>
 
<script>
$(document).ready(function(){
    $("#login").click(function(){
        $("#loginProc").modal();
    });
});
</script>
