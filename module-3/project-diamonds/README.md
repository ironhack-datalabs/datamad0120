# project-machine-learning Price - Diamonds
El proyecto consiste en lograr la mejor predicción de precios de unos diamantes, los cuales obtenemos la información por medio de un dataset. El dataset lo trabajamos como dataframe que contiene toda la información posible de los mismos, tal como: carat, clarity, cut, sus dimensiones, etc. Para luego utilizar distintos modelos de machine learning y con ello lograr la mejor predicción posible de sus respectivos precios.

## Estructura del trabajo realizado:
* Limpieza y análisis del dataframe.
* Robutscaler para escalar las variables.
* KFold de cross validation para crear mayor número de particiones a entrenar.
* Utilizar varios modelos para predecir el precio de los diamantes del dataframe.

## Modelos utilizados y su respectivo resultado:
* HistGradientBoostingRegressor (learning rate 0.2) -> RMSE:  549,92
* HistGradientBoostingRegressor -> RMSE: 549,93
* RandomForestRegressor (n_estimators = 300) -> RMSE: 558,15
* GradientBoostingRegressor -> RMSE: 616,93
* KNeighborsRegressor -> RMSE: 1808,35
* LinearSVR -> RMSE: 1909,10

## Conclusión:
Observamos que el modelo que mejor resultado da es el HistGradientBoostingRegressor, y como por defecto su Learning Rate es de 0.10 lo aumentamos a un 0.20 para ver si ofrecía mejor resultado, el cual fue casi imperceptible.



