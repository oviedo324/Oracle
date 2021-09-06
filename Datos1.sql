

INSERT ALL 
    INTO usuario (id, email, password, first_name, last_name) VALUES ('6258', 'juan.oviedo01@gmail.com', 'oviedo324', 'juan david', 'oviedo')
    INTO usuario (id, email, password, first_name, last_name)  VALUES ('1358', 'manuela.wallen01@gmail.com', 'manuela69', 'manuela', 'wallen')
    INTO usuario (id, email, password, first_name, last_name)  VALUES ('4070', 'mariana.mejia01@gmail.com', 'hmariana01', 'mariana', 'mejia')
    INTO usuario (id, email, password, first_name, last_name)  VALUES ('0931', 'arlex.saavedra@hotmail.com', 'arlex9843', 'arlex david', 'saavedra')
    INTO usuario (id, email, password, first_name, last_name)  VALUES ('3196', 'daniel.moreno01@hotmail.com', 'danielm1234', 'daniel herman', 'moreno')
    INTO usuario (id, email, password, first_name, last_name)  VALUES ('4525', 'laura.valencia@outlook.com', 'laura1234', 'laura', 'valencia')
    INTO usuario (id, email, password, first_name, last_name)  VALUES ('4345', 'cristian.toro@hotmail.com', 'toro1234', 'cristian', 'toro')
    INTO usuario (id, email, password, first_name, last_name)  VALUES ('4333', 'cristian.lopez@hotmail.com', 'lopez12', 'cristian', 'lopez')
    INTO usuario (id, email, password, first_name, last_name)  VALUES ('1234', 'dayana.mejia@outlook.com', 'dayana1234', 'dayana', 'mejia')
    INTO usuario (id, email, password, first_name, last_name)  VALUES ('4321', 'diana.manzano@gmail.com', 'diana1234', 'diana', 'manzano')
    INTO state (id, name) VALUES ('76', 'bogota')
    INTO state (id, name) VALUES ('75', 'antioquia')
    INTO state (id, name) VALUES ('74', 'atlantico')
    INTO state (id, name) VALUES ('73', 'quindio')
    INTO state (id, name) VALUES ('72', 'nariño')
    INTO state (id, name) VALUES ('71', 'caldas')
    INTO state (id, name) VALUES ('70', 'quindio')
    INTO state (id, name) VALUES ('69', 'valle del cauca')
    INTO state (id, name) VALUES ('68', 'putumayo')
    INTO state (id, name) VALUES ('67', 'huila')
    INTO state (id, name) VALUES ('66', 'cauca')
    INTO city (id,state_id,name) VALUES ('111', '76', 'bogota')
    INTO city (id,state_id,name) VALUES ('222', '76', 'tulua')
    INTO city (id,state_id,name) VALUES ('333', '76', 'cali')
    INTO city (id,state_id,name) VALUES ('444', '74', 'medellin')
    INTO city (id,state_id,name) VALUES ('555', '74', 'cartagena')
    INTO city (id,state_id,name) VALUES ('666', '73', 'manizales')
    INTO city (id,state_id,name) VALUES ('777', '72', 'pereira')
    INTO city (id,state_id,name) VALUES ('888', '68', 'pasto')
    INTO city (id,state_id,name) VALUES ('999', '69', 'ibage')
    INTO city (id,state_id,name) VALUES ('000', '70', 'popayán')
    INTO amenity (id, name) VALUES ('1', 'muy malo')
    INTO amenity (id, name) VALUES ('2', 'malo')
    INTO amenity (id, name) VALUES ('3', 'regular')
    INTO amenity (id, name) VALUES ('4', 'bueno')
    INTO amenity (id, name) VALUES ('5', 'excelente')
    INTO place (id, user_id, name, city_id, description) VALUES ('1', '6258', 'vayju', '111', 'ecoparque turistico ambiental')
    INTO place (id, user_id, name, city_id, description) VALUES ('2', '1358', 'termales', '222', 'piscinas con calefacion excelente')
    INTO place (id, user_id, name, city_id, description) VALUES ('3', '4070', 'ecovalle', '333',  'glamping con hermosa vista al valle')
    INTO place (id, user_id, name, city_id, description) VALUES ('4', '0931',  'rancho azul', '444', 'parque tematico de antioquia lindas vistas')
    INTO place (id, user_id, name, city_id, description) VALUES ('5', '3196', 'napoles', '555', 'hacienda tematica con animales y buena comida')
    INTO place (id, user_id, name, city_id, description) VALUES ('6', '4525', 'glamping flex', '666',  'glamping en el eje cafetero con lindas vistas a los cafetales')
    INTO place (id, user_id, name, city_id, description) VALUES ('7', '4345', 'finca panaca', '777',  'finca tipo rancho con animales bonitos')
    INTO place (id, user_id, name, city_id, description) VALUES ('8', '4333', 'monaco', '888',  'casa de lujo para los amantes de la buena comida')
    INTO place (id, user_id, name, city_id, description) VALUES ('9', '1234', 'intercontinental', '999', 'hotel 5 estrellas del valle')
    INTO place (id, user_id, name, city_id, description) VALUES ('10', '4321', 'tenquendama', '000', 'vive la mejor esperiencia en un hotel con historia')
    INTO placeamenity (amenity_id, place_id) VALUES ('5', '1')
    INTO placeamenity (amenity_id, place_id) VALUES ('4', '2')
    INTO placeamenity (amenity_id, place_id) VALUES ('3', '3')
    INTO placeamenity (amenity_id, place_id) VALUES ('2', '4')
    INTO placeamenity (amenity_id, place_id) VALUES ('2', '5')
    INTO placeamenity (amenity_id, place_id) VALUES ('1', '6')
    INTO placeamenity (amenity_id, place_id) VALUES ('1', '7')
    INTO placeamenity (amenity_id, place_id) VALUES ('3', '8')
    INTO placeamenity (amenity_id, place_id) VALUES ('4', '9')
    INTO placeamenity (amenity_id, place_id) VALUES ('5', '10')
    INTO review (id, user_id, place_id, text) VALUES ('1', '6258', '1', 'malo, pesima atencion')
    INTO review (id, user_id, place_id, text) VALUES ('2', '1358', '2', 'no me gusto el servicio es muy malo')
    INTO review (id, user_id, place_id, text) VALUES ('3', '4070', '3', 'no tiene mucho que ofrecer')
    INTO review (id, user_id, place_id, text) VALUES ('4', '0931', '4', 'el aire no funciona y pesima comida')
    INTO review (id, user_id, place_id, text) VALUES ('5', '3196', '5', 'tiene una piscina muy binita y lindas vistas')
    INTO review (id, user_id, place_id, text) VALUES ('6', '4525', '6', 'buen sitio pero les falta mejorar en atencion')
    INTO review (id, user_id, place_id, text) VALUES ('7', '4345', '7', 'no se puede pedir mas por el precio')
    INTO review (id, user_id, place_id, text) VALUES ('8', '4333', '8', 'muy bueno me gusto todo')
    INTO review (id, user_id, place_id, text) VALUES ('9', '1234', '9', 'tiene buena atencion de servicio a la habitacion')
    INTO review (id, user_id, place_id, text) VALUES ('10', '4321', '10', 'el personal es muy arrogante')
SELECT * FROM DUAL;

--Se procede a la creación de las vistas tal como se solicitaron

SELECT *
FROM place;

CREATE VIEW review_of_oviedo
AS  SELECT  review.id, review.text
    FROM    review, place
    WHERE   (SELECT id FROM usuario WHERE first_name = 'juan david') = review.user_id;

CREATE VIEW places_of_tulua
AS  SELECT  place.id, place.name
    FROM    place, city
    WHERE   city.name = 'tulua';    


CREATE VIEW places_of_valle
AS  SELECT  place.id, place.name
    FROM    place, city
    WHERE   (SELECT id FROM state WHERE name = 'valle del cauca')= city.state_id;  
    

--Se da el permiso de usar las tablas y vistas al usuario usertaller2

GRANT   select, update, alter, insert
ON      review
TO      usertaller2;

GRANT   select, update, alter, insert
ON      usuario
TO      usertaller2;

GRANT   select, update, alter, insert
ON      place
TO      usertaller2;

GRANT   select, update, alter, insert
ON      amenity
TO      usertaller2;

GRANT   select, update, alter, insert
ON      placeamenity
TO      usertaller2;

GRANT   select, update, alter, insert
ON      state
TO      usertaller2;

GRANT   select, update, alter, insert
ON      city
TO      usertaller2;

GRANT   select
ON      review_of_oviedo
TO      usertaller2;

GRANT   select
ON      places_of_tulua
TO      usertaller2;

GRANT   select
ON      places_of_valle
TO      usertaller2;
