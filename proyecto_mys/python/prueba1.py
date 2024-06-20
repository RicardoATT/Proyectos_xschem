import tensorflow as tf
from tensorflow import keras
from keras import layers, models
import numpy as np
import matplotlib.pyplot as plt

# Cargar y preprocesar el dataset MNIST
mnist = tf.keras.datasets.mnist
(x_train, y_train), (x_test, y_test) = mnist.load_data()

x_train, x_test = x_train / 255.0, x_test / 255.0

# Definir el modelo de memristor
class MemristorLayer(layers.Layer):
    def __init__(self, units=32, input_dim=32):
        super(MemristorLayer, self).__init__()
        self.units = units
        self.weight = self.add_weight(
            shape=(input_dim, units),
            initializer="random_normal",
            trainable=True,
        )

    def call(self, inputs):
        return tf.matmul(inputs, self.weight)

# Construcción del modelo
model = models.Sequential([
    layers.Flatten(input_shape=(28, 28)),
    MemristorLayer(128, 784),
    layers.Activation('relu'),
    layers.Dense(10)
])

# Compilar el modelo
model.compile(optimizer='adam',
              loss=tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True),
              metrics=['accuracy'])

# Entrenar el modelo
model.fit(x_train, y_train, epochs=5)

# Evaluar el modelo
test_loss, test_acc = model.evaluate(x_test, y_test, verbose=2)
print('\nTest accuracy:', test_acc)

# Realizar predicciones
probability_model = tf.keras.Sequential([model, 
                                         tf.keras.layers.Softmax()])
predictions = probability_model.predict(x_test)

# Mostrar algunas predicciones
def plot_image(i, predictions_array, true_label, img):
  predictions_array, true_label, img = predictions_array[i], true_label[i], img[i]
  plt.grid(False)
  plt.xticks([])
  plt.yticks([])

  plt.imshow(img, cmap=plt.cm.binary)

  predicted_label = np.argmax(predictions_array)
  if predicted_label == true_label:
    color = 'blue'
  else:
    color = 'red'

  plt.xlabel("{} {:2.0f}% ({})".format(class_names[predicted_label],
                                100*np.max(predictions_array),
                                class_names[true_label]),
                                color=color)

class_names = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

num_rows = 5
num_cols = 3
num_images = num_rows*num_cols
plt.figure(figsize=(2*2*num_cols, 2*num_rows))
for i in range(num_images):
  plt.subplot(num_rows, 2*num_cols, 2*i+1)
  plot_image(i, predictions, y_test, x_test)
plt.tight_layout()
plt.show()
