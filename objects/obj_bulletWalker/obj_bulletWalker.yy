{
  "spriteId": {
    "name": "spr_walkerbullet",
    "path": "sprites/spr_walkerbullet/spr_walkerbullet.yy",
  },
  "solid": false,
  "visible": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "obj_harmful",
    "path": "objects/obj_harmful/obj_harmful.yy",
  },
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"isDnD":true,"eventNum":0,"eventType":0,"collisionObjectId":null,"parent":{"name":"obj_bulletWalker","path":"objects/obj_bulletWalker/obj_bulletWalker.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":true,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},"parent":{"name":"obj_bulletWalker","path":"objects/obj_bulletWalker/obj_bulletWalker.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":true,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"parent":{"name":"obj_bulletWalker","path":"objects/obj_bulletWalker/obj_bulletWalker.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [],
  "overriddenProperties": [
    {"propertyId":{"name":"collision_damage","path":"objects/obj_harmful/obj_harmful.yy",},"objectId":{"name":"obj_harmful","path":"objects/obj_harmful/obj_harmful.yy",},"value":"10","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
  ],
  "parent": {
    "name": "Enemies",
    "path": "folders/Objects/Enemies.yy",
  },
  "resourceVersion": "1.0",
  "name": "obj_bulletWalker",
  "tags": [],
  "resourceType": "GMObject",
}