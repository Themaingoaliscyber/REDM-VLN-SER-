function _(id, ...) local text = Translation[id] or id return (text):format(...) end
Translation = {
    ['title_dragon_dead'] = 'Dragon',
    ['message_dragon_dead'] = 'Has died',

    ['title_dragon_already_spawned'] = 'Dragon',
    ['message_dragon_already_spawned'] = 'Is already spawned',

    ['title_dragon_spawned'] = 'Dragon',
    ['message_dragon_spawned'] = 'Has spawned',

    ['title_dragon_despawned'] = 'Dragon',
    ['message_dragon_despawned'] = 'Has despawned',

    ['title_no_space_for_dragon'] = 'Dragon',
    ['message_no_space_for_dragon'] = 'No clear space available',

    ['title_dragon_not_owned'] = 'Dragon',
    ['message_dragon_not_owned'] = 'You do not own this dragon',

    ['title_cant_spawn_dragon_while_mounted_dragon'] = 'Dragon',
    ['message_cant_spawn_dragon_while_mounted_dragon'] = 'Cannot do this while riding the dragon',
    
    ['unmount_dragon'] = 'Unmount Dragon',
    ['mount_dragon'] = 'Mount Dragon',

    ['title_wrong_dragon_index'] = 'Unexisting dragon index',
    ['message_wrong_dragon_index'] = 'You specified wrong dragon index. Check your config.lua.',
}