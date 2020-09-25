from tests_app.models import Ticket

def get_all_correct_answers_from_db(self):
    ticket = Ticket.objects.get(slug=self.kwargs['slug'],
                                category__slug=self.kwargs['category_slug'])
    questions_from_db = ticket.questions.all()
    correct_answers_dict = {}
    for question in questions_from_db:
        k = question.id
        correct_answers_dict[k] = question.correct_answer
    print(ticket)
    return correct_answers_dict


def get_answers(self):
    answers = self.request.GET
    return answers


def get_result(self):
    correct_answers = get_correct_and_incorrect_answer(self)[0]
    if len(correct_answers) >= 1:
        result = True
    else:
        result = False
    return result


def get_correct_and_incorrect_answer(self):
    answers = self.request.GET
    correct_answers_dict = get_all_correct_answers_from_db(self)
    incorrect_answers = {}
    correct_answers = {}
    for key in answers.keys():
        print(key+"dd")
        if answers[key] == correct_answers_dict[int(key)]:
            correct_answers[int(key)] = answers[key]
        else:
            incorrect_answers[int(key)] = answers[key].rstrip()

    return correct_answers, incorrect_answers
