const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.send('I am a pretty with jenkins try again 4')
})

app.listen(port, () => {
  console.log(`this is on listening on http://localhost:${port}`)
})