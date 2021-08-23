const express = require("express");
const router = express.Router();


router.get("/", (_, res) => {
    res.send('serveur démarré')
});

module.exports = router;