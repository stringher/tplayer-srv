const express = require('express');
const playlistItemController = require('../controllers/playlistItem.controller');
const router = express.Router();

router.post('/', playlistItemController.addMidiaPlaylist); 
router.get('/:id', playlistItemController.getById);
router.delete('/', playlistItemController.deletePlaylistItem);

module.exports = router;