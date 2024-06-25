import tensorflow as tf
from tensorflow import keras
from keras import layers, models
import numpy as np
import matplotlib.pyplot as plt

# Cargar y preprocesar el dataset MNIST
mnist = tf.keras.datasets.mnist
(x_train, y_train), (x_test, y_test) = mnist.load_data()

x_train, x_test = x_train / 255.0, x_test / 255.0

# Definir el modelo de memristor HP
class HPMemristorLayer(layers.Layer):
    def __init__(self, units=32, input_dim=32):
        super(HPMemristorLayer, self).__init__()
        self.units = units
        self.input_dim = input_dim
        self.weight = self.add_weight(
            shape=(input_dim, units),
            initializer="random_normal",
            trainable=True,
        )
        self.D = 1.0  # Thickness of the memristor device
        self.mu = 1e-10  # Mobility of the dopants
        self.R_on = 1e2  # Minimum resistance
        self.R_off = 1e5  # Maximum resistance
        self.w = self.add_weight(
            shape=(input_dim, units),
            initializer="random_uniform",
            trainable=True,
        )

    def call(self, inputs):
        # Memristance computation
        R = self.R_on * self.w + self.R_off * (1 - self.w)
        V = tf.matmul(inputs, self.weight)
        dw = self.mu * tf.matmul(tf.transpose(inputs), V) / self.D
        self.w.assign_add(dw)
        self.w.assign(tf.clip_by_value(self.w, 0, 1))
        return V

    def compute_output_shape(self, input_shape):
        return (input_shape[0], self.units)

# Construcción del modelo
model = models.Sequential([
    layers.Flatten(input_shape=(28, 28)),
    HPMemristorLayer(128, 784),
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