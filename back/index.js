const mysql      = require('mysql')
const express = require('express')
const bodyParser = require('body-parser')
const app = express()
var cors = require('cors')
var secretKey = "asfbhfhemv72eSDBy7gb"
var jwt = require('jsonwebtoken')
var multer = require('multer')
app.use(cors());
app.use(express.static('public'));
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({extended:true}))
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '',
  database : 'myblog'
});
connection.connect();
app.listen(8000);
console.log("ready")

var storage = multer.diskStorage({
      destination: function (req, file, cb) {
      cb(null, 'public/image')
    },
    filename: function (req, file, cb) {
      cb(null, Date.now() + '-' +file.originalname )
    }
})
var upload = multer({ storage: storage }).single('file')
/*

connection.query('SELECT * from user', function (error, results, fields) {
    if (error) throw error;
    console.log(fields);
  });react 
  in node js e :))  baby
  */
app.use('/:every',function(req,res,next){
    req.body['reqUserName']="";
    if(req.header('token') && parseToken(req.header('token')))req.body['reqUserName']=parseToken(req.header('token')).data;
    console.log(parseToken(req.header('token')))
    next();
})
app.post('/upload',function(req, res) {
  console.log(req.header)
     console.log(req.body)
  upload(req, res, function (err) {
         if (err instanceof multer.MulterError) {
             return res.status(500).json(err)
         } else if (err) {
             return res.status(500).json(err)
         }
    return res.status(200).send(req.file)

  })

});app.post('/login',function(req,res){
  const {userName , password} = req.body.body;
  if(!userName || !password)
  return res.status(500).send({description:'Bad Request.'})
  var q = 'SELECT * FROM user where userName="'+userName+'"'
  connection.query(q, function (error, results, fields) {
    if (error||results.length==0) return res.status(300).send({description:'database error.'})
    if(password!=results[0].password) return res.status(300).send({description:'incorrect password'})
    const info = {userName , firstName:results[0].firstName ,lastName:results[0].lastName}
    const token=createToken(userName);
    return res.send({info,token})
  })
})

app.post('/admin',function(req,res){
  if (!req.body['reqUserName']) return res.status(500).send();
  const user=req.body['reqUserName'];
 console.log(req.body)
  const {slug,title,description,image,id} = req.body;
  var q='DELETE from post where slug="'+slug+'" AND author="'+user+'"'
  if(!id && (title || title=='')) q="INSERT INTO `post` (`id`, `title`, `description`, `author`, `image`, `slug`, `time`) VALUES (NULL, '"+title+"', '"+description+"', '"+user+"', '"+image+"', '"+slug+"', NULL);";
  else if(id) q="UPDATE `post` SET `title`='"+title+"', `description`='"+description+"', `slug`='"+slug+"', `image`='"+image+"' WHERE `post`.`id`='"+id+"' AND `post`.`author`='"+user+"';";

  console.log(q);
  //q="UPDATE `post` SET `title` = 'title of first post u' WHERE `post`.`id` = 1;"
  connection.query(q, function (error, results, fields) {
    if (error) return res.status(500).send({description:'database error.'})
    console.log(results);
    if(results.affectedRows==1) return res.send();
    return res.status(500).send();
  })
})
app.get('/posts',function(req,res,next){
    if(!req.query.from) req.query.from="0";
    if(!req.query.to) req.query.to='100';
    var from = parseInt(req.query.from);
    var to = parseInt(req.query.to)
    var user = req.query.user
    var slug = req.query.slug
    var q="SELECT * FROM post"+(user ? ' where author="'+user+'"' : '')+(slug? ' where slug="'+slug+'"': '')+" ORDER BY id DESC"
    console.log(q)
    connection.query(q, function (error, results, fields) {
        if (error) return res.status(500).send({description:'database error.'})
        if(results.length<from || from>to) 
        {   
            return res.status(400).send({description:'request error.'})
        }
        return res.send(
            results.slice(from,(to+1>results.length ? results.length : to+1))
            )
      });
})
function createToken(u){
   return jwt.sign({
        exp: Math.floor(Date.now() / 1000) + (60 * 60 * 24 * 365),
        data: u
      }, secretKey);
}
function parseToken (t) { 
 try {
    var decoded = jwt.verify(t, secretKey);
    if(decoded) return decoded
    return ""
 } catch (error) {
    // console.log(error)
     return(undefined)
 }   
 }
