import nltk
from nltk.tokenize import word_tokenize
from sklearn.feature_extraction.text import CountVectorizer
from sklearn.metrics.pairwise import cosine_similarity
from sklearn.feature_extraction.text import CountVectorizer
from sklearn.metrics.pairwise import cosine_similarity
from nltk.metrics import jaccard_distance
from nltk.corpus import stopwords

# text similarity using sklearn

def cosine_similarity_text(text1, text2):
    vectorizer = CountVectorizer().fit_transform([text1, text2])
    similarity = cosine_similarity(vectorizer[0], vectorizer[1])
    return similarity[0][0]


def text_similarity_nltk(answer1, answer2):
    stop_words = set(stopwords.words("english"))
    # Tokenize the answers into individual words
    tokenized_answers = [word_tokenize(answer) for answer in [answer1, answer2]]

    # Remove stop words from the tokenized answers
    filtered_answers = [[word for word in answer if word.lower() not in stop_words] for answer in tokenized_answers]

    # Calculate the Jaccard similarity between the two answers
    similarity = 1 - jaccard_distance(set(filtered_answers[0]), set(filtered_answers[1]))

    return similarity



