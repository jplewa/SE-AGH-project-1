import pyswip


class Controller:
    def __init__(self):
        self.prolog = pyswip.Prolog()
        self.prolog.consult('mushrooms.pl')

    def calculate(self, data):
        for mushroom_part in data.keys():
            for attribute in data[mushroom_part].keys():
                for value in data[mushroom_part][attribute].keys():
                    query = '{}({}, {}, {})'.format(data[mushroom_part][attribute][value], mushroom_part, attribute,
                                                    value)
                    self.prolog.assertz(query)

        try:
            x = list(self.prolog.query('mushroom_is(X)'))
            return x[0]['X']
        except (UnboundLocalError, IndexError):
            return 'undefined'
        finally:
            self.prolog.retractall('xpositive(X,Y,Z)')
            self.prolog.retractall('xnegative(X,Y,Z)')
