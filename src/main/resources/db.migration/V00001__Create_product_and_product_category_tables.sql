CREATE TABLE IF NOT EXISTS product_category
(
    id            BIGINT(200)  NOT NULL AUTO_INCREMENT,
    category_name VARCHAR(255) NULL DEFAULT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS product
(
    id             BIGINT(20) NOT NULL AUTO_INCREMENT,
    sku            VARCHAR(255)   DEFAULT NULL,
    name           VARCHAR(255)   DEFAULT NULL,
    description    VARCHAR(255)   DEFAULT NULL,
    unit_price     DECIMAL(13, 2) DEFAULT NULL,
    image_url      VARCHAR(255)   DEFAULT NULL,
    active         BIT            DEFAULT 1,
    units_in_stock INT(11)        DEFAULT NULL,
    date_created   DATETIME(6)    DEFAULT NULL,
    last_updated   DATETIME(6)    DEFAULT NULL,
    category_id    BIGINT(20) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (category_id) REFERENCES product_category (id)
);