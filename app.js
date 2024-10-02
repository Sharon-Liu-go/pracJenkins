const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.send('I am a pretty')
})

app.listen(port, () => {
  console.log(`this is on listening on http://localhost:${port}`)
})