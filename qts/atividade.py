#constante da media de aprovação
MEDIA_APROVACAO = 6.0

#listas(ou arrays)
#estão vazias para armazenarem os nomes
nomes = []
nota1 = []
nota2 = []
medias = []

#função para calcular a media
def calcular_media(n1, n2):
    return (n2 + n2) / 2

#entrada de dados dos 10 alunos
#repitindo por dez vezes
for i in range (10):
    print(f"\nAluno {i+1}")
    
    nome = input("Digite o nome: ")
    n1 = float(input("Digite a 1ª nota: "))
    n2 = float(input("Digite a 2ª nota: "))
    
    media = calcular_media(n1, n2)
    
    #append. = armazenar os valores nas arrays
    nomes.append(nome)
    nota1.append(n1)
    nota2.append(n2)
    medias.append(media)
    
#busca de alunos
print("\n--- Busca de Alunos---")
nome_busca = input("Digite o nome d aluno para buscar: ")

#está verificando se o nome existe na lista/array
#o index serve para pegar a posição para acessar os dados correspondentes, ou seja, ele puxará o nome e junto, as notas e a média
if nome_busca in nomes:
    indice = nomes.index(nome_busca)
    
    print("\n Dados do Aluno")
    print("Nome: ", nomes[indice])
    print("Nota 1: ", nota1[indice])
    print("Nota 2 ", nota2[indice])
    print("Média: ", medias[indice])
    
    if medias[indice] >= MEDIA_APROVACAO:
        print("Status: Aprovado")
    
    else:
        print("Status: Reprovado")
        
else:
    print("Aluno não encontrado")
    
    
    