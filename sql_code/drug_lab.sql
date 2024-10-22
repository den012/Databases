CREATE TABLE drug(
    drug_name VARCHAR(50) NOT NULL,
    short_description TINYTEXT,
    long_description TEXT,
    number_of_pills INT,
    PRIMARY KEY(drug_name)
);

CREATE TABLE contraindications(
    contraindication_id INT AUTO_INCREMENT,
    drug_name VARCHAR(50) NOT NULL,
    description TEXT,
    PRIMARY KEY(contraindication_id),
    FOREIGN KEY(drug_name) REFERENCES drug(drug_name) ON UPDATE CASCADE ON DELETE RESTRICT
);
create TABLE components(
    component_code INT NOT NULL,
    title VARCHAR(50),
    PRIMARY KEY(component_code)
);
CREATE TABLE artificial_component(
    component_code INT NOT NULL,
    company VARCHAR(50),
    PRIMARY KEY(component_code), 
    FOREIGN KEY(component_code) REFERENCES components(component_code) ON UPDATE CASCADE ON DELETE RESTRICT
);
CREATE TABLE natural_component(
    component_code INT NOT NULL,
    plant_species VARCHAR(50),
    PRIMARY KEY(component_code), 
    FOREIGN KEY(component_code) REFERENCES components(component_code) ON UPDATE CASCADE ON DELETE RESTRICT
);
CREATE TABLE drug_components(
    drug_name VARCHAR(50) NOT NULL,
    component_code INT NOT NULL,
    proportion INT,
    PRIMARY KEY(drug_name, component_code),
    FOREIGN KEY(drug_name) REFERENCES drug(drug_name) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY(component_code) REFERENCES components(component_code) ON UPDATE CASCADE ON DELETE RESTRICT
);