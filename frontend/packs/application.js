/* eslint no-console:0 */
/* eslint no-unused-vars: "error" */

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
import "./application.css";
import "bootstrap/dist/js/bootstrap";
import Rails from "rails-ujs";
import Routes from "./route.js.erb";

import "components/home/home";

Rails.start();
window.Routes = Routes;
console.log("I am here");
