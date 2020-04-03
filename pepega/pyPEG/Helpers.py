from pypeg2 import *
from pyPEG.CSharpGrammars import *

def class_name():
    return attr ("class_name", Symbol)

def method_name():
    return attr("method_name", Symbol)

def variable_name():
    return attr("variable_name", Symbol)

def method_parameters():
    return attr("method_parameters", MethodParameters)
