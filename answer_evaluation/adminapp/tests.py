from django.test import TestCase
import nltk
from nltk import word_tokenize
from nltk.metrics import jaccard_distance
from nltk.corpus import stopwords



def text_similarity_nltk(answer1, answer2):
    stop_words = set(stopwords.words("english"))
    tokenized_answers = [word_tokenize(answer) for answer in [answer1, answer2]]

    filtered_answers = [[word for word in answer if word.lower() not in stop_words] for answer in tokenized_answers]

    similarity = 1 - jaccard_distance(set(filtered_answers[0]), set(filtered_answers[1]))

    print("Jaccard Similarity: ", similarity)
    return similarity


answer1 = "Urbanization, the growth of cities and increased urban development, often leads to increased pollution in the form of air pollution, water pollution, and noise pollution. Cities are often filled with cars, factories, and other sources of emissions that contribute to smog and other harmful air pollutants, while runoff from urban areas can carry pollutants into waterways and harm aquatic life. Noise pollution from traffic, construction, and other sources can be loud and disruptive, causing stress and health problems. To minimize these environmental impacts and protect the health of people and the environment, it's crucial to manage urban growth in a responsible and sustainable way."
answer2 = "The growth of cities and urbanization can lead to numerous environmental problems, including air pollution, water pollution, and noise pollution. The increased presence of cars, factories, and other sources of emissions in cities can contribute to the formation of smog and other harmful air pollutants. Meanwhile, runoff from urban areas can carry pollutants into nearby waterways, causing harm to aquatic life. The loud and disruptive noise pollution from traffic, construction, and other sources can also cause health problems and stress. To reduce these environmental impacts and ensure the well-being of both people and the environment, it's critical to approach urban growth in a sustainable and responsible manner."

text_similarity_nltk(answer1,answer2)

