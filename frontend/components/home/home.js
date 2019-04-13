import "./home.css";

$(function() {
  $("body .home").append(
    `<p class="alert alert-success">Render home url: ${Routes.root_path()}</p>`
  );
});
