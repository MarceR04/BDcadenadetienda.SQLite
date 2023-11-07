-- database: :memory:
ALTER TABLE Producto
ADD CONSTRAINT fk_Producto_Categoria FOREIGN KEY (categoria_id) REFERENCES Categoria (id)
;

ALTER TABLE Stock
ADD CONSTRAINT fk_Stock_Sucursal FOREIGN KEY (sucursal_id) REFERENCES Sucursal (id)
;

ALTER TABLE Stock
ADD CONSTRAINT fk_Stock_Producto FOREIGN KEY (producto_id) REFERENCES Producto (id)
;

ALTER TABLE Orden
ADD CONSTRAINT fk_Orden_Cliente FOREIGN KEY (cliente_id) REFERENCES Cliente (id)
;

ALTER TABLE Orden
ADD CONSTRAINT fk_Orden_Sucursal FOREIGN KEY (sucursal_id) REFERENCES Sucursal (id)
;
