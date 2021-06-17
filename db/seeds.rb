Status.create({name: "В обработке"})
Status.create({name: "Подтверждён"})

Role.create({name: "Parent"})
Role.create({name: "Teacher"})
Role.create({name: "Admin"})

d = Direction.create({name: "IT"})
Direction.create({name: "Развивающие"})

c = Course.create({title: "Рисование", description: "обучение рисованию", age: "4", photo: "https://static.wixstatic.com/media/c2d622_03962842e64e4c1da1e01c9e995a467b~mv2.jpg/v1/crop/x_37,y_0,w_723,h_478/fill/w_192,h_127,al_c,q_80,usm_0.66_1.00_0.01/3d-ruchka-kupit-v-moskve.webp", sessions: "30", people_in_group: "5"})

c.direction = d