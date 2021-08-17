const Map = require('./../internal/entities/map.js');

module.exports = new Map({
    name: 'Main Map',
    room_name: 'rPlay',
    description: 'A test map, a placeholder if you will',

    mode: 'pvp',
    start_pos: [
        {x: 15, y: 320},
        {x: 700, y: 320}
    ],
    max_players: 2
})