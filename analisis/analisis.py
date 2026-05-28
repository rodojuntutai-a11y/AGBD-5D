import pandas as pd
df=pd.read_csv('latin_music_features_dataset.csv') 

print("OKEY! Archivo cargado correctamente")

print(df.head())

filas,columnas = df.shape
print (f"el dataframe tiene {filas} filas y {columnas} colunmas")

total_fragment_index = df ["fragment_index"].count()
print (f"cantidad de filas del fragmento: {total_fragment_index}")


print("--------analisis avanzado de Datos---------")

filtro_avanzado = df['genre'].str.startswith('Reggaeton', na=False)
df_filtrado = df [filtro_avanzado]
total_fragment_index=df_filtrado['genre'].count()
#print(f"cantidad de envios de tecnologia 'Reggaeton': {total_fragment_index}")

suma_cosas=df_filtrado["fragment_start_sec"].sum()
#print(f"tiempo total de este genero: {suma_cosas:.2f} segundos")
print ("reporte automatizado")
print(f"monto total : usd {suma_cosas:.2f}milions")

if Default_limite_alto:=(suma_cosas>400): 
    print ("alerta el volunmen del mercado es critico y de alta prioridad.")
    print ("requiere revision inmediata")

elif suma_cosas > 200:
    print ("aviso: volumen mercado moderado / alto")
    print (" monitorear comportamiento proximo trimestre")

else: 
    print ("estado: volumen de mercado bajo o entro del parametro")
    print("no se requiere accion adicional")
