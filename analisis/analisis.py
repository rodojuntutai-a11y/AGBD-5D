import pandas as pd 
import seaborn as sns 
import matplotlib.pyplot as plt

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

# -----------------------------------------
#grafico1 : grafico de barras (con saborn)
#------------------------------------------
print("\n Generando Gafico de Barras")

sns.set_theme(style="whitegrid")

plt.figure(figsize=(9,5))

sns.barplot(
data=df,
x= "fragment_index",
y= "genre",
estimator=sum,
errorbar=None,
palette="Blues_d",
)

plt.title(
    "cantidad de generos en la base de datos", fontsize=14

)

plt.xlabel("tipo de hardware", fontsize=11)
plt.ylabel("total (millones usd)", fontsize=11)

plt.tight_layout()
plt.savefig("grafico_barras.png", dpi=300)
plt.close()
print("grafico de barras guardado exitosamente")

#-------------------------
# Grafico de Torta
#-------------------------

print("\n Generando Grafico Torta")

datos_torta=(df.groupby("genre")["fragment_start_sec"]
             .sum()
             .nlargest(5)
)
plt.figure(figsize=(7,7))
plt.pie(
datos_torta.values,
labels=datos_torta.index,
autopct="%1.1f%%",
colors=sns.color_palette("Set2")[0:5],
startangle=140,
wedgeprops={"edgecolor":"white","linewidth":2}
)
plt.title("Distribucion interna: Tecnologia Avanzada",)
plt.savefig("grafico_torta.png", dpi=300)
plt.close()
print("Grafico de barras guardado exitosamente.")

