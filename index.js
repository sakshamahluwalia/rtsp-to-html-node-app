const express = require("express");
const { exec } = require("child_process");
const app = express();
const port = 3000;
const served = 0;

app.use(function (req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header(
    "Access-Control-Allow-Headers",
    "Origin, X-Requested-With, Content-Type, Accept"
  );
  next();
});

app.use(express.static(__dirname + "/public"));

app.set("view engine", "html");
app.engine("html", require("ejs").renderFile);

app.get("/", (req, res) => {
  res.render("indexHP.html");
});

app.get("/stream/output/channel/:channel/:filename", (req, res) => {
  const { channel, filename } = req.params;
  res.sendFile(`/output/channel${channel}/${filename}`, { root: __dirname });
});

app.get("/stream/:channel", (req, res) => {
  const { channel } = req.params;
  res.sendFile(`/output/channel${channel}/playlist.m3u8`, { root: __dirname });
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});


// const cleanUp = () => {
//   exec("./cleanup.sh", (error, stdout, stderr) => {
//     if (error) {
//       console.log(`error: ${error.message}`);
//       return;
//     }
//     if (stderr) {
//       console.log(`stderr: ${stderr}`);
//       return;
//     }
//     console.log(`stdout: ${stdout}`);
//   });
// }
// setInterval(cleanUp, 5000);
