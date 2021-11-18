const express = require('express');
const playlistController = require('../controllers/playlist.controller');
const router = express.Router();

router.post('/', playlistController.createPlaylist)
router.get('/:id', playlistController.userPlaylist)
router.delete('/:id', playlistController.deletePlaylist)

module.exports = router;