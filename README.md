# HPCTOOLSAI

En este repositorio se encuentran los archivos relativos a la resolución de la tarea 2 de HPC Tools.

* main1GPU.py -> es la baseline implementation. Se trata de una red siamesa usada para estimar la similitud entre imágenes
  El modelo original se puede encontrar en https://github.com/pytorch/examples/tree/main/siamese_network
  
* mainNGPU.py -> es la versión distribuida del código
  - Para la implementación se usó Pytorch Fabric, debido a la sencillez y a la similitud con el código original. Así, se integran las librerías de Fabric y se llama 
  a la función Fabric, que tiene como argumentos el acelerador a usar (GPUs), la estategia, número de nodos y número de máquinas por nodo.
  - Se deja que Fabric gestione el reparto del modelo, optimizadores y datos a través de la inclusión de esta función en las llamadas a estos en el programa, así 
  como a la función loss. Tras ello, la ejecución produce la implementación distribuida buscada.

* srun.sh -> script que activa conda y contiene las llamadas al modelo con las diferentes estrategias
  
* sbatch.sh -> el script que realmente ejecutamos en el ft3. Contiene una llamada al anterior. Aquí configuramos el número de GPUs, nodos y demás parámetros
  
* report.txt -> contiene nuestro análisis detallado de los resultados obtenidos
  
* casox.out -> son los outputs obtenidos, que contienen los valores que hemos usado en los resultados
  


