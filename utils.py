class utilitarios:
     def __init__(self):
          self.simbolo = ""
          self.sentimento = ""

     def simbolos(self, texto):
          if ' :) ' in texto:
               self.simbolo += ':)'
          elif ' : ) ' in texto:
               self.simbolo += ': )'
          elif ' :D ' in texto:
               self.simbolo += ':D'
          elif ' :O ' in texto:
               self.simbolo += ':O'
          elif ' :V ' in texto:
               self.simbolo += ':V'
          elif ' xD ' in texto:
               self.simbolo += 'xD'
          elif ' :P ' in texto:
               self.simbolo += ':P'
          elif ' :/ ' in texto:
               self.simbolo += ':/'
          elif ' :( ' in texto:
               self.simbolo += ':('
          elif ' :-) ' in texto:
               self.simbolo += ':-)'
          elif ' :-( ' in texto:
               self.simbolo += ':-('
          elif " :´) " in texto:
               self.simbolo += ":´)"
          elif " :/´) " in texto:
               self.simbolo += ":´´)"
          elif " :´( " in texto:
               self.simbolo += ":´("
          return self.simbolo
     def sentimentos(self):
          if self.simbolo in [':)', ': )', ':D', 'xD', ':-)']:
               sentimento = "Positivo"
          elif self.simbolo in [':O', ':V', ':P']:
               sentimento = "Neutro"
          elif self.simbolo in [':/', ':(', ':-(', ":´)", ":´´)", ":´("]:
               sentimento = "Negativo"
          else:
               sentimento = "N/A"
          return sentimento
          
