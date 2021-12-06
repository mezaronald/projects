#!/usr/bin/env python
# coding: utf-8

# In[1]:


import numpy as np
import matplotlib.pyplot as plt


# In[2]:


ingreso_m = 200     #ingreso esperado
ingreso_desvest =  40     #desviación estándar
iteraciones = 1000     #número de iteraciones


# In[3]:


ingreso = np.random.normal(ingreso_m, ingreso_desvest, iteraciones)
ingreso


# In[4]:


plt.figure(figsize=(13,8))
plt.plot(ingreso, color = 'black', label = 'Iteraciones: ingreso esperado')
leg = plt.legend()
plt.show()


# In[5]:


CBV = - (ingreso*np.random.normal(0.5,0.15))  #Costo de bienes vendidos = 50% de los ingresos

plt.figure(figsize=(13,8))
plt.plot(CBV, color = 'blue', label = 'Costo de bienes vendidos')
leg = plt.legend()
plt.show()


# In[ ]:


# Se cuenta ya con 1,000 puntos de data de ingresos (1,000 iteraciones)


# In[6]:


CBV.mean()  #media de los costos de bienes vendidos


# In[7]:


CBV.std()  #desviación estándar de costos de bienes vendidos


# In[13]:


#Beneficio bruto
BB = ingreso + CBV
BB

plt.figure(figsize=(13,8))
plt.plot(BB,color = 'green',label = 'Beneficio bruto')
leg = plt.legend()
plt.show()


# In[14]:


max(BB)


# In[15]:


min(BB)


# In[17]:


BB.mean()


# In[18]:


BB.std()


# In[20]:


#Histograma

plt.figure(figsize=(12,7))
plt.hist(BB,bins=20);
plt.show()

