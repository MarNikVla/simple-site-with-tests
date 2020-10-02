from tests_app.models import Ticket


# Получение всех правильных ответов на Билет (Ticket) из DB
def get_all_correct_answers_from_db(self):
    ticket = Ticket.objects.get(slug=self.kwargs['slug'],
                                category__slug=self.kwargs['category_slug'])
    questions_from_db = ticket.questions.all()
    correct_answers_dict = {}
    for question in questions_from_db:
        k = question.id
        correct_answers_dict[k] = question.correct_answer
    return correct_answers_dict


# Получение всех ответов пользователя на Билет из get параметров
def get_answers(self):
    answers = self.request.GET
    return answers


# Генерация результата экзамена сдан(True)/не сдан(False) в
# зависимости от необходимого количества правильных ответов (quantity_of_answers_to_done)
def get_result(self, quantity_of_answers_to_done=8):
    correct_answers = get_correct_and_incorrect_answer(self)[0]
    if len(correct_answers) >= quantity_of_answers_to_done:
        result = True
    else:
        result = False
    return result


# Разделение ответов пользователя на правлильные и неправильные
def get_correct_and_incorrect_answer(self):
    answers = self.request.GET
    correct_answers_dict = get_all_correct_answers_from_db(self)
    incorrect_answers = {}
    correct_answers = {}
    for key in answers.keys():
        if answers[key] == correct_answers_dict[int(key)]:
            correct_answers[int(key)] = answers[key]
        else:
            incorrect_answers[int(key)] = answers[key].rstrip()

    return correct_answers, incorrect_answers
