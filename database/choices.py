from polls.models import Choice, Question

def choices_input(qlst, clst, votes=0):
# qlst = Question.objects.all()
# clst = ['Yes', 'No', 'Not sure']
    for q in qlst:
        for c in clst:
            q.choice_set.create(choice_text=c, votes=0)

if __name__ == '__main__':
    
    qlst = Question.objects.all()
    clst = ['Yes', 'No', 'Not sure']
    choices_input(qlst, clst, votes=0)
