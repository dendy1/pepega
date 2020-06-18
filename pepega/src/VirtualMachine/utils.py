def is_float_literal(value):
    try:
        float(value)
        return True
    except ValueError:
        return False

def is_int_literal(value):
    try:
        int(value)
        return True
    except ValueError:
        return False