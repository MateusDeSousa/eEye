import Foundation
import UIKit

class News {
    
    var thumbnail : UIImage
    var title : String
    var content : String
    
    init(thumbnail : UIImage, title: String, content : String) {
        self.thumbnail = thumbnail
        self.title = title
        self.content = content
    }
    
    public class func getNews() -> [News] {
        var news : [News] = []
        
        news.append(News(thumbnail: UIImage(named: "news-img-1")!, title: "Astigmatismo: Como identificar?", content: """
Sintomas

O sintoma mais comum do astigmatismo é a visão borrada ou dupla. Se a visão está apenas um pouco afetada, é possível que não tenha nada de errado. Astigmatismo mais significativo pode causar distorções visíveis.

É particularmente importante lembrar que bebês e crianças com problemas de visão podem não perceber o problema. Afinal, elas podem nunca ter visto o mundo em foco. É por isso que é uma boa ideia ter um controle regular da visão das crianças, principalmente se há casos de problemas refrativos na família. É de suma importância fazer o teste do olhinho logo no nascimento do bebê e levar a criança ao oftalmologista no primeiro ano de vida. Neste período, muitas doenças podem ser diagnosticadas e tratadas, sendo algumas com medidas simples como uso de tampão, evitando assim a cegueira.

Aqui estão alguns sintomas de astigmatismo:

Não conseguir ler letras pequenas;

Dificuldade de leitura;

Visão dupla;

Incapacidade de ver de perto e de longe sem apertar os olhos;

Fotofobia (sensibilidade à luz);

Piora da acuidade visual a noite (miopia também causa piora da acuidade visual noturna).

Crianças com astigmatismo podem experimentar:

Dificuldade com foco em palavras e linhas impressas;

Tensão do olho;

Olhos cansados;

Dores de cabeça.
"""))
        
        news.append(News(thumbnail: UIImage(named: "news-img-2")!, title: "O que é Astigmatismo", content: """

O que é Astigmatismo?

Astigmatismo é uma imperfeição comum, leve e facilmente tratável na curvatura do olho. A maior parte do poder de foco no olho ocorre ao longo da superfície frontal, chamada córnea. A próxima estrutura envolvida na focagem é o cristalino, lente que fica atrás da iris no interior do olho.

A córnea ideal tem uma superfície simetricamente curva, como uma bola de basquete. O astigmatismo é causado por uma córnea ou uma lente que não é simétrica. Como resultado, as pessoas com astigmatismo podem ter visão distorcida ou borrada.

O astigmatismo pode ocorrer em famílias e na maioria dos casos está associado com outros problemas de refração, como miopia ou hipermetropia. Ele também pode aumentar ao longo do tempo devido à idade.

Causas

Seu olho tem duas partes que concentram as imagens, a córnea e o cristalino. Num olho com a forma perfeita, cada um destes elementos de focagem tem uma curvatura lisa, como a superfície de uma esfera.

A córnea ou cristalino com tais curvas de superfície de curvatura refrata toda a luz recebida da mesma maneira e faz uma imagem perfeitamente focada na parte de trás do olho.

No entanto, se sua córnea ou lente não é uniforme e curva, os raios de luz não são refratados corretamente, e a imagem não fica igualmente focada. Isso faz com que a visão parece borrada, dando origem ao astigmatismo.

No astigmatismo, a córnea ou o cristalino tem uma curva mais acentuada para uma direção do que para outra. Você tem astigmatismo corneano, sua córnea tem uma forma distorcida. Você tem astigmatismo lenticular se seu cristalino é distorcido.

O astigmatismo pode ocorrer em combinação com outros erros refrativos. Veja:

Miopia: ocorre quando a córnea é curva demais ou o olho é mais longo do que o normal. Em vez de se focar justamente na retina, a luz é focalizada na frente da retina, resultando em uma aparência embaçada para objetos distantes
Hipermetropia: ocorre quando a córnea é pouco curva ou seu olho é mais curto do que o normal. O efeito é o oposto da miopia. Quando o olho está em um estado de relaxamento, a luz é focada na parte de trás, fazendo com que objetos próximos fiquem embaçados.
O astigmatismo pode estar presente desde o nascimento, ou pode se desenvolver após uma lesão ocular, doença ou cirurgia. O astigmatismo não é causado ou agravado pela leitura com pouca luz, sentar muito perto da televisão ou estrabismo. Uma causa importante de astigmatismo é coçar o olho, prática muito comum em clima seco e alta concentração de poeira no ar.




Sintomas de Astigmatismo

O sintoma mais comum do astigmatismo é a visão borrada ou dupla. Se a visão está apenas um pouco afetada, é possível que não tenha nada de errado. Astigmatismo mais significativo pode causar distorções visíveis.

É particularmente importante lembrar que bebês e crianças com problemas de visão podem não perceber o problema. Afinal, elas podem nunca ter visto o mundo em foco. É por isso que é uma boa ideia ter um controle regular da visão das crianças, principalmente se há casos de problemas refrativos na família. É de suma importância fazer o teste do olhinho logo no nascimento do bebê e levar a criança ao oftalomologista no primeiro ano de vida. Neste período, muitas doenças podem ser diagnosticadas e tratadas, sendo algumas com medidas simples como uso de tampão, evitando assim a cegueira.

Aqui estão alguns sintomas de astigmatismo:


Não conseguir ler letras pequenas
Dificuldade de leitura
Visão dupla
Incapacidade de ver de perto e de longe sem apertar os olhos
Fotofobia (sensibilidade à luz)
Piora da acuidade visual a noite (miopia também causa piora da acuidade visual noturna).

Crianças com astigmatismo podem experimentar:
Dificuldade com foco em palavras e linhas impressas
Tensão do olho
Olhos cansados
Dores de cabeça.
Diagnóstico e Exames

Buscando ajuda médica

Se a qualidade da sua visão está atrapalhando suas atividades pessoais ou de trabalho e interfere com a sua capacidade de realizar tarefas cotidianas, consulte um oftalmologista. Um oftalmologista pode determinar se você tem astigmatismo e, em caso afirmativo, em que grau. Ele ou ela pode aconselhá-lo sobre suas opções para corrigir sua visão.

Para adultos saudáveis com mais de 40 anos, é importante ter os olhos examinados a cada dois ou quatro anos até 55 anos de idade. Depois dessa idade, faça uma avaliação a cada três anos, e a cada dois anos após os 65 anos. É recomendado acompanhamento anual, não para avaliar o grau somente, mas para prevenir doenças graves e com potencial de cegueira, como glaucoma.


Caso você tenha outros problemas oculares, pode precisar ter seus olhos verificados com mais frequência. Se você está em risco de certas doenças oculares, como o glaucoma, ou está tratando o diabetes, converse com seu médico para entender com que frequência você precisa ter seus olhos examinados.



Na consulta médica

O médico habilitado a diagnosticar problema de visão como o astigmatismo é o oftalmologista. Estar preparado para a consulta pode facilitar o diagnóstico e otimizar o tempo. Dessa forma, você já pode chegar à consulta com algumas informações:

Uma lista com todos os sintomas e há quanto tempo eles apareceram
Histórico médico, incluindo outras condições que o paciente tenha e medicamentos ou suplementos que ele tome com regularidade.
O médico provavelmente fará uma série de perguntas, tais como:

Quando os sintomas começaram?
Seus sintomas são contínuos ou ocasionais?
Quão grave são os seus sintomas?
O que, se alguma coisa, parece melhorar os seus sintomas?
O que, se alguma coisa, parece piorar os seus sintomas?


Também é importante levar suas dúvidas para a consulta por escrito, começando pela mais importante. Isso garante que você conseguirá respostas para todas as perguntas relevantes antes da consulta acabar. Para astigmatismo, algumas perguntas básicas incluem:

O que provavelmente está causando meus sintomas?
Além de astigmatismo, quais são as outras causas possíveis para os meus sintomas?
Quais exames eu preciso fazer?
Minha condição provavelmente é temporária ou crônica?
Qual é o melhor curso de ação?
Quais são as alternativas para a abordagem primária que você está sugerindo?
Eu tenho essas outras condições de saúde. Como posso melhor gerenciá-las juntas?
Existem restrições que eu preciso seguir?
Devo consultar um especialista da córnea?
Há algum material impresso que eu posso levar para casa comigo? Quais sites você recomenda visitar?
Diagnóstico de Astigmatismo
O médico pode usar um ou mais desses quatro exames para diagnosticar o astigmatismo e medir sua gravidade:

Exame de visão

Usando um gráfico padronizado, o paciente deve ler quadros de letras, conhecidos como tabela de snellen, que se encontram a partir de 6 metros. Atualmente, os projetores permitem simular esta distância com espaço menores. Se sua visão é 20/20, você pode ver a 20 pés o que um olho normal pode ver a partir de 20 pés. Se sua visão é 20/80, você só pode ver a 20 pés o que um olho normal deve ser capaz de ver a partir de 80 pés de distância.

Exame de refração

Uma máquina chamada foróptero, que contém lentes corretivas, é posicionado na afrente do olho e usado para medir a receita. Às vezes, o médico olha para o reflexo da luz do seu olho através de um dispositivo portátil chamado de retinoscópio e usa lentes de mão para determinar se algum erro de refração está presente. Em seguida, o oftalmologista irá oferecer-lhe diferentes opções de lentes através do foróptero para refinar a correção até que você possa ler o texto claramente. Depois que ambos os olhos são medidos, o médico irá escrever uma receita para óculos ou lentes de contato com base nas lentes corretivas que funcionaram para você.

Ceratometria

Este aparelho mede a curvatura da córnea central. As córneas que não têm astigmatismo apresentam uma curvatura simétrica, enquanto córneas com astigmatismo não tem curvatura uniforme. O ceratômetro determina as curvas mais íngremes e mais planas da córnea, permitindo o diagnóstico. Esse aparelho também é usado para ajustar as lentes de contato e para acompanhar a curvatura da córnea após uma cirurgia ocular.

Topografia da córnea

Esta tecnologia avançada fornece as informações mais detalhadas sobre a forma da córnea. O paciente olha para um alvo visual enquanto o dispositivo recolhe milhares de medições minúsculas. Um computador então constrói um mapa de cores no computador a partir dos dados. Este mapa permite ao médico ver uma imagem abrangente de sua córnea. Tais medições sofisticadas são importantes para o planejamento de cirurgia refrativa, cirurgia de catarata, e, ocasionalmente, para ajustar lentes de contato. A topografia da córnea é importante no diagnóstico de ceratocone, uma das causa de astigmatismo.

Tratamento e Cuidados

Tratamento de Astigmatismo

O objetivo do tratamento de astigmatismo é melhorar a visão do paciente ou operar a córnea desigual. Os tratamentos incluem óculos, lentes de contato gelatinosa tórica e lente rígida, anel intra estromal (anel de ferrara para casos de ceratocone), cirurgia refrativa, e cirurgia de catarata com implante de lente intra-ocular tórica.

Lentes corretivas

Lentes corretivas tratam astigmatismo por contrariar a curvatura desigual da sua córnea. Tipos de lentes corretivas incluem:

Óculos: pode ser feito com lentes especiais que ajudam a compensar a forma irregular de seu olho
Lentes de contato: como os óculos, as lentes de contato podem corrigir o astigmatismo. Uma variedade de lentes de contato está disponível, incluindo as lentes de contato rígidas, moles, de uso prolongado, descartáveis, gás permeáveis e bifocais.


Cirurgia refrativa

Este método de tratamento para astigmatismo corrige o problema, reformulando a superfície do olho. Antes da cirurgia, os médicos vão avaliá-lo e determinar se você é um candidato para a cirurgia refrativa. Métodos incluem:

Cirurgia LASIK: é um procedimento em que um médico faz um corte circular na córnea. O cirurgião levanta a tampa da córnea e, em seguida, utiliza um laser excimer para esculpir a forma da córnea por baixo da aba. Um laser de excímero é diferente de outros lasers pois não produz calor
Cirurgia PRK: o cirurgião retira a camada de proteção exterior da córnea, e então utilizar um excimer laser para alterar a curvatura da córnea
Cirurgia LASEK: uma camada muito fina de córnea é dobrada para trás, o que torna o olho menos vulnerável a danos decorrentes de uma lesão. A cirurgia LASEK pode ser uma opção se você tiver uma córnea fina ou se está em alto risco de uma lesão no olho no trabalho ou de praticar esportes
SMILE, retirada de uma lente moldada dentro da córnea por meio do laser femtosegundo, técnica mais moderna, mas ainda sem resultados em longo prazo.
Convivendo (prognóstico)
Complicações possíveis
O astigmatismo não corrigido em somente um olho pode causar ambliopia (popularmente conhecido como olho preguiçoso). Coçar o olho constantemente e bruscamente pode favorecer o apareciemto ou a evolução do astigmatismo para ceratocone.

Prevenção

Não tem como prevenir o astigmatismo. O ideal é ficar atento aos sintomas e fazer o diagnóstico precocemente, para tratar o problema antes de qualquer complicação. Além disso, evitar coçar o olho pode ajudar a prevenir complicações.
"""))
        
        news.append(News(thumbnail: UIImage(named: "news-img-3")!, title: "Astigmatismo: Principais diagnóstico e exames.", content: """
Buscando ajuda médica

Se a qualidade da sua visão está atrapalhando suas atividades pessoais ou de trabalho e interfere com a sua capacidade de realizar tarefas cotidianas, consulte um oftalmologista. Um oftalmologista pode determinar se você tem astigmatismo e, em caso afirmativo, em que grau. Ele ou ela pode aconselhá-lo sobre suas opções para corrigir sua visão.

Para adultos saudáveis com mais de 40 anos, é importante ter os olhos examinados a cada dois ou quatro anos até 55 anos de idade. Depois dessa idade, faça uma avaliação a cada três anos, e a cada dois anos após os 65 anos. É recomendado acompanhamento anual, não para avaliar o grau somente, mas para prevenir doenças graves e com potencial de cegueira, como glaucoma.


Caso você tenha outros problemas oculares, pode precisar ter seus olhos verificados com mais frequência. Se você está em risco de certas doenças oculares, como o glaucoma, ou está tratando o diabetes, converse com seu médico para entender com que frequência você precisa ter seus olhos examinados.



Na consulta médica

O médico habilitado a diagnosticar problema de visão como o astigmatismo é o oftalmologista. Estar preparado para a consulta pode facilitar o diagnóstico e otimizar o tempo. Dessa forma, você já pode chegar à consulta com algumas informações:

Uma lista com todos os sintomas e há quanto tempo eles apareceram
Histórico médico, incluindo outras condições que o paciente tenha e medicamentos ou suplementos que ele tome com regularidade.
O médico provavelmente fará uma série de perguntas, tais como:

Quando os sintomas começaram?
Seus sintomas são contínuos ou ocasionais?
Quão grave são os seus sintomas?
O que, se alguma coisa, parece melhorar os seus sintomas?
O que, se alguma coisa, parece piorar os seus sintomas?


Também é importante levar suas dúvidas para a consulta por escrito, começando pela mais importante. Isso garante que você conseguirá respostas para todas as perguntas relevantes antes da consulta acabar. Para astigmatismo, algumas perguntas básicas incluem:

O que provavelmente está causando meus sintomas?
Além de astigmatismo, quais são as outras causas possíveis para os meus sintomas?
Quais exames eu preciso fazer?
Minha condição provavelmente é temporária ou crônica?
Qual é o melhor curso de ação?
Quais são as alternativas para a abordagem primária que você está sugerindo?
Eu tenho essas outras condições de saúde. Como posso melhor gerenciá-las juntas?
Existem restrições que eu preciso seguir?
Devo consultar um especialista da córnea?
Há algum material impresso que eu posso levar para casa comigo? Quais sites você recomenda visitar?
Diagnóstico de Astigmatismo
O médico pode usar um ou mais desses quatro exames para diagnosticar o astigmatismo e medir sua gravidade:

Exame de visão

Usando um gráfico padronizado, o paciente deve ler quadros de letras, conhecidos como tabela de snellen, que se encontram a partir de 6 metros. Atualmente, os projetores permitem simular esta distância com espaço menores. Se sua visão é 20/20, você pode ver a 20 pés o que um olho normal pode ver a partir de 20 pés. Se sua visão é 20/80, você só pode ver a 20 pés o que um olho normal deve ser capaz de ver a partir de 80 pés de distância.

Exame de refração

Uma máquina chamada foróptero, que contém lentes corretivas, é posicionado na afrente do olho e usado para medir a receita. Às vezes, o médico olha para o reflexo da luz do seu olho através de um dispositivo portátil chamado de retinoscópio e usa lentes de mão para determinar se algum erro de refração está presente. Em seguida, o oftalmologista irá oferecer-lhe diferentes opções de lentes através do foróptero para refinar a correção até que você possa ler o texto claramente. Depois que ambos os olhos são medidos, o médico irá escrever uma receita para óculos ou lentes de contato com base nas lentes corretivas que funcionaram para você.

Ceratometria

Este aparelho mede a curvatura da córnea central. As córneas que não têm astigmatismo apresentam uma curvatura simétrica, enquanto córneas com astigmatismo não tem curvatura uniforme. O ceratômetro determina as curvas mais íngremes e mais planas da córnea, permitindo o diagnóstico. Esse aparelho também é usado para ajustar as lentes de contato e para acompanhar a curvatura da córnea após uma cirurgia ocular.

Topografia da córnea

Esta tecnologia avançada fornece as informações mais detalhadas sobre a forma da córnea. O paciente olha para um alvo visual enquanto o dispositivo recolhe milhares de medições minúsculas. Um computador então constrói um mapa de cores no computador a partir dos dados. Este mapa permite ao médico ver uma imagem abrangente de sua córnea. Tais medições sofisticadas são importantes para o planejamento de cirurgia refrativa, cirurgia de catarata, e, ocasionalmente, para ajustar lentes de contato. A topografia da córnea é importante no diagnóstico de ceratocone, uma das causa de astigmatismo.

"""))
        news.append(News(thumbnail: UIImage(named: "news-img-4")!, title: "Astigmatismo: Tratamentos e Cuidados", content: """
Tratamento de Astigmatismo

O objetivo do tratamento de astigmatismo é melhorar a visão do paciente ou operar a córnea desigual. Os tratamentos incluem óculos, lentes de contato gelatinosa tórica e lente rígida, anel intra estromal (anel de ferrara para casos de ceratocone), cirurgia refrativa, e cirurgia de catarata com implante de lente intra-ocular tórica.

Lentes corretivas

Lentes corretivas tratam astigmatismo por contrariar a curvatura desigual da sua córnea. Tipos de lentes corretivas incluem:

Óculos: pode ser feito com lentes especiais que ajudam a compensar a forma irregular de seu olho

Lentes de contato: como os óculos, as lentes de contato podem corrigir o astigmatismo. Uma variedade de lentes de contato está disponível, incluindo as lentes de contato rígidas, moles, de uso prolongado, descartáveis, gás permeáveis e bifocais.


Cirurgia refrativa

Este método de tratamento para astigmatismo corrige o problema, reformulando a superfície do olho. Antes da cirurgia, os médicos vão avaliá-lo e determinar se você é um candidato para a cirurgia refrativa. Métodos incluem:

Cirurgia LASIK: é um procedimento em que um médico faz um corte circular na córnea. O cirurgião levanta a tampa da córnea e, em seguida, utiliza um laser excimer para esculpir a forma da córnea por baixo da aba. Um laser de excímero é diferente de outros lasers pois não produz calor
Cirurgia PRK: o cirurgião retira a camada de proteção exterior da córnea, e então utilizar um excimer laser para alterar a curvatura da córnea

Cirurgia LASEK: uma camada muito fina de córnea é dobrada para trás, o que torna o olho menos vulnerável a danos decorrentes de uma lesão. A cirurgia LASEK pode ser uma opção se você tiver uma córnea fina ou se está em alto risco de uma lesão no olho no trabalho ou de praticar esportes
"""))
        news.append(News(thumbnail: UIImage(named: "news-img-5")!, title: "Causas do Astigmatismo", content: """
Seu olho tem duas partes que concentram as imagens, a córnea e o cristalino. Num olho com a forma perfeita, cada um destes elementos de focagem tem uma curvatura lisa, como a superfície de uma esfera.

A córnea ou cristalino com tais curvas de superfície de curvatura refrata toda a luz recebida da mesma maneira e faz uma imagem perfeitamente focada na parte de trás do olho.

No entanto, se sua córnea ou lente não é uniforme e curva, os raios de luz não são refratados corretamente, e a imagem não fica igualmente focada. Isso faz com que a visão parece borrada, dando origem ao astigmatismo.

No astigmatismo, a córnea ou o cristalino tem uma curva mais acentuada para uma direção do que para outra. Você tem astigmatismo corneano, sua córnea tem uma forma distorcida. Você tem astigmatismo lenticular se seu cristalino é distorcido.

O astigmatismo pode ocorrer em combinação com outros erros refrativos. Veja:

Miopia: ocorre quando a córnea é curva demais ou o olho é mais longo do que o normal. Em vez de se focar justamente na retina, a luz é focalizada na frente da retina, resultando em uma aparência embaçada para objetos distantes

Hipermetropia: ocorre quando a córnea é pouco curva ou seu olho é mais curto do que o normal. O efeito é o oposto da miopia. Quando o olho está em um estado de relaxamento, a luz é focada na parte de trás, fazendo com que objetos próximos fiquem embaçados.

O astigmatismo pode estar presente desde o nascimento, ou pode se desenvolver após uma lesão ocular, doença ou cirurgia. O astigmatismo não é causado ou agravado pela leitura com pouca luz, sentar muito perto da televisão ou estrabismo. Uma causa importante de astigmatismo é coçar o olho, prática muito comum em clima seco e alta concentração de poeira no ar.
"""))
        news.append(News(thumbnail: UIImage(named: "news-img-6")!, title: "Causas do Daltonismo", content: """
O daltonismo é um distúrbio genético ligado ao cromossomo X. Neste distúrbio, ocorre um problema com os pigmentos de determinadas cores em células nervosas do olho, chamadas de cones, localizadas na retina. Mesmo que apenas um pigmento esteja faltando, uma pessoa pode apresentar problemas para reconhecer e identificar diversas cores, tonalidades ou brilho.

Fatores de risco

O daltonismo é uma doença recessiva e está diretamente relacionada ao cromossomo X. O sexo masculino é determinado pelos cromossomos X e Y e o feminino por dois cromossomos X, que são herdados dos pais. A mãe sempre fornecerá um cromossomo X e o pai poderá fornecer o X ou Y ao bebê. Por ser uma doença recessiva, o daltonismo só irá se manifestar em pessoas que tiverem uma alteração em todos os cromossomos X presentes no corpo. Ou seja: a mulher precisa herdar o cromossomo alterado tanto do pai quanto da mãe, enquanto que o homem só precisa herdar o X alterado da mãe, uma vez que estará recebendo o cromossomo Y do pai.

Mas não são somente fatores genéticos que podem levar uma pessoa a desenvolver daltonismo, embora este seja bem mais comum em pessoas que apresentam o distúrbio por herança genética. Veja:

Doenças

Algumas condições podem levar ao daltonismo. Veja as principais:

Diabetes
Doença de Alzheimer
Doença de Parkinson
Leucemia
Anemia falciforme.


Outras doenças do olho, como glaucoma e degeneração macular, também podem contribuir para o problema.

Medicamentos

Remédios usados para tratar hipertensão arterial e alguns distúrbios psicológicos podem elevar as chances de uma pessoa desenvolver daltonismo.

Produtos químicos

Uma pessoa que for exposta a determinados produtos químicos, como sulfureto de carbono e alguns fertilizantes, também podem ser mais suscetíveis ao daltonismo.

Envelhecimento

A capacidade de enxergar, distinguir e reconhecer cores pode se deteriorar lentamente como parte natural do processo de envelhecimento.

"""))
        news.append(News(thumbnail: UIImage(named: "news-img-7")!, title: "Daltonismo: Diagnóstico e Exames", content: """
Buscando ajuda médica

O teste rápido de daltonismo pode revelar se você tem a doença ou não. Se você for pai ou mãe e notar que seu filho está confundindo as cores ou está com dificuldade para distinguir algumas, principalmente vermelho e verde, procure um especialista para que sejam feitos os testes necessários.

Na consulta médica

Especialistas que podem diagnosticar daltonismo são:

Clínico geral
Oftalmologista
Pediatra
Neurologista


Estar preparado para a consulta pode facilitar o diagnóstico e otimizar o tempo. Dessa forma, você já pode chegar à consulta com algumas informações:

Uma lista com todos os sintomas e há quanto tempo eles apareceram
Histórico médico, incluindo outras condições que o paciente tenha e medicamentos ou suplementos que ele tome com regularidade
Se possível, peça para uma pessoa te acompanhar
O médico provavelmente fará uma série de perguntas, tais como:

Você já fez o teste de daltonismo? Qual o resultado?
Você consegue distinguir algumas cores específicas?
Quais cores você tem dificuldade de enxergar?
Você apresentou outros sintomas?
Você tem histórico familiar de daltonismo? Seu pai ou sua mãe têm daltonismo?
Se você estiver acompanhando seu filho ou filha na consulta médica, as perguntas que o especialista fará poderão ser diferentes. Veja:


Quando você notou a dificuldade de seu filho distinguir cores?
Quantas vezes isso já aconteceu?
Você ou seu marido/esposa têm daltonismo?
Há algum caso de daltonismo na família?

O exame de fundo de olho não é capaz de denunciar quaisquer tipos de anormalidades nos olhos, por isso o diagnóstico para daltonismo deve ser feito a partir de duas abordagens distintas, mas que, unidas, garantem um diagnóstico muito mais rápido e preciso. O diagnóstico pode ser feito tanto por meio de um questionamento rápido envolvendo o histórico clínico e familiar do paciente ou, ainda, por meio de exames simples:

Teste de Ishihara

Desenvolvido em 1917 pelo médico japonês Shinobu Ishihara, o teste de Ishihara é um dos mais utilizados no mundo para detecção da doença. O método é composto de um conjunto de 38 placas com pontos coloridos em intensidades diferentes. No centro dessas placas há um numeral com uma cor que o indivíduo com daltonismo pode não identificar. O resultado é fácil de se chegar: se você enxergar o número no centro, não é daltônico. Se não enxergar, melhor procurar um especialista. As cores do teste variam para diagnosticar o grau e o tipo de daltonismo do paciente.

Eletrorretinografia

A eletrorretinografia é o exame que avalia a função da retina por meio de eletrodos que captam a atividade elétrica em resposta a estímulos luminosos. Essa pode ser uma opção para o diagnóstico de daltonismo.
"""))
        news.append(News(thumbnail: UIImage(named: "news-img-8")!, title: "O que é Daltonismo?", content: """
O daltonismo é um tipo de deficiência visual em que o indivíduo não é capaz de reconhecer e diferenciar algumas cores específicas. O distúrbio recebeu este nome em homenagem ao químico inglês John Dalton, que foi o primeiro estudar as características do daltonismo.

Tipos

Existem três tipos principais de daltonismo:

Protanopia

Este tipo de daltonismo é o mais comum de todos e é caracterizado, principalmente, pela diminuição ou ausência total do pigmento vermelho. No lugar dele, o indivíduo com o distúrbio pode enxergar tons de marrom, verde ou cinza, mas, em geral, varia de acordo com a quantidade de pigmentos que o objeto possui. Neste tipo, o verde tende a parecer semelhante ao vermelho.

Deuteranopia

Uma pessoa com este tipo de daltonismo não é capaz de distinguir a cor verde. Mas, da mesma forma que ocorre com a protanopia, os tons vistos geralmente são puxados para o marrom. Assim, quando ela observa uma árvore, enxerga tudo em apenas uma cor, com uma pequena diferença de tonalidade entre tronco e folhas.

Tritanopia

A tritanopia é o tipo mais raro de daltonismo. Ela interfere na distinção e reconhecimento das cores azul e amarelo. Uma pessoa com este tipo de visão não perde totalmente a noção do azul, o enxerga em tonalidades diferentes. Já o amarelo vira um rosa-claro. Pessoas com tritanopia não enxergam a cor laranja.


Causas

O daltonismo é um distúrbio genético ligado ao cromossomo X. Neste distúrbio, ocorre um problema com os pigmentos de determinadas cores em células nervosas do olho, chamadas de cones, localizadas na retina. Mesmo que apenas um pigmento esteja faltando, uma pessoa pode apresentar problemas para reconhecer e identificar diversas cores, tonalidades ou brilho.

Fatores de risco

O daltonismo é uma doença recessiva e está diretamente relacionada ao cromossomo X. O sexo masculino é determinado pelos cromossomos X e Y e o feminino por dois cromossomos X, que são herdados dos pais. A mãe sempre fornecerá um cromossomo X e o pai poderá fornecer o X ou Y ao bebê. Por ser uma doença recessiva, o daltonismo só irá se manifestar em pessoas que tiverem uma alteração em todos os cromossomos X presentes no corpo. Ou seja: a mulher precisa herdar o cromossomo alterado tanto do pai quanto da mãe, enquanto que o homem só precisa herdar o X alterado da mãe, uma vez que estará recebendo o cromossomo Y do pai.

Mas não são somente fatores genéticos que podem levar uma pessoa a desenvolver daltonismo, embora este seja bem mais comum em pessoas que apresentam o distúrbio por herança genética. Veja:

Doenças

Algumas condições podem levar ao daltonismo. Veja as principais:

Diabetes
Doença de Alzheimer
Doença de Parkinson
Leucemia
Anemia falciforme.


Outras doenças do olho, como glaucoma e degeneração macular, também podem contribuir para o problema.

Medicamentos

Remédios usados para tratar hipertensão arterial e alguns distúrbios psicológicos podem elevar as chances de uma pessoa desenvolver daltonismo.

Produtos químicos

Uma pessoa que for exposta a determinados produtos químicos, como sulfureto de carbono e alguns fertilizantes, também podem ser mais suscetíveis ao daltonismo.

Envelhecimento

A capacidade de enxergar, distinguir e reconhecer cores pode se deteriorar lentamente como parte natural do processo de envelhecimento.

Sintomas de Daltonismo

Os sinais e sintomas de daltonismo costumam variar de intensidade conforme a pessoa e de acordo com o tipo do distúrbio. Em geral, os sinais mais comuns podem incluir:



Dificuldade para enxergar cores e suas diferentes tonalidades e brilhos de maneira normal
-Incapacidade de distinguir a diferença entre as tonalidades de cores iguais ou semelhantes
Muitas vezes, os sintomas podem ser tão leves que algumas pessoas podem nem perceber que são daltônicas. Mas é muito comum que os pais notem sinais de daltonismo quando uma criança está aprendendo a diferenciar as cores.

Diagnóstico e Exames

Buscando ajuda médica

O teste rápido de daltonismo pode revelar se você tem a doença ou não. Se você for pai ou mãe e notar que seu filho está confundindo as cores ou está com dificuldade para distinguir algumas, principalmente vermelho e verde, procure um especialista para que sejam feitos os testes necessários.

Na consulta médica

Especialistas que podem diagnosticar daltonismo são:

Clínico geral
Oftalmologista
Pediatra
Neurologista


Estar preparado para a consulta pode facilitar o diagnóstico e otimizar o tempo. Dessa forma, você já pode chegar à consulta com algumas informações:

Uma lista com todos os sintomas e há quanto tempo eles apareceram
Histórico médico, incluindo outras condições que o paciente tenha e medicamentos ou suplementos que ele tome com regularidade
Se possível, peça para uma pessoa te acompanhar
O médico provavelmente fará uma série de perguntas, tais como:

Você já fez o teste de daltonismo? Qual o resultado?
Você consegue distinguir algumas cores específicas?
Quais cores você tem dificuldade de enxergar?
Você apresentou outros sintomas?
Você tem histórico familiar de daltonismo? Seu pai ou sua mãe têm daltonismo?
Se você estiver acompanhando seu filho ou filha na consulta médica, as perguntas que o especialista fará poderão ser diferentes. Veja:


Quando você notou a dificuldade de seu filho distinguir cores?
Quantas vezes isso já aconteceu?
Você ou seu marido/esposa têm daltonismo?
Há algum caso de daltonismo na família?

O exame de fundo de olho não é capaz de denunciar quaisquer tipos de anormalidades nos olhos, por isso o diagnóstico para daltonismo deve ser feito a partir de duas abordagens distintas, mas que, unidas, garantem um diagnóstico muito mais rápido e preciso. O diagnóstico pode ser feito tanto por meio de um questionamento rápido envolvendo o histórico clínico e familiar do paciente ou, ainda, por meio de exames simples:

Teste de Ishihara

Desenvolvido em 1917 pelo médico japonês Shinobu Ishihara, o teste de Ishihara é um dos mais utilizados no mundo para detecção da doença. O método é composto de um conjunto de 38 placas com pontos coloridos em intensidades diferentes. No centro dessas placas há um numeral com uma cor que o indivíduo com daltonismo pode não identificar. O resultado é fácil de se chegar: se você enxergar o número no centro, não é daltônico. Se não enxergar, melhor procurar um especialista. As cores do teste variam para diagnosticar o grau e o tipo de daltonismo do paciente.

Eletrorretinografia

A eletrorretinografia é o exame que avalia a função da retina por meio de eletrodos que captam a atividade elétrica em resposta a estímulos luminosos. Essa pode ser uma opção para o diagnóstico de daltonismo.
"""))
        news.append(News(thumbnail: UIImage(named: "news-img-9")!, title: "Sintomas de Daltonismo", content: """
Os sinais e sintomas de daltonismo costumam variar de intensidade conforme a pessoa e de acordo com o tipo do distúrbio. Em geral, os sinais mais comuns podem incluir:

Dificuldade para enxergar cores e suas diferentes tonalidades e brilhos de maneira normal;

Incapacidade de distinguir a diferença entre as tonalidades de cores iguais ou semelhantes.

Muitas vezes, os sintomas podem ser tão leves que algumas pessoas podem nem perceber que são daltônicas. Mas é muito comum que os pais notem sinais de daltonismo quando uma criança está aprendendo a diferenciar as cores.


"""))
        news.append(News(thumbnail: UIImage(named: "news-img-10")!, title: "O que é metamorfopsia?", content: """
Metamorfopsia é a visão distorcida dos objetos, isto é, as imagens podem aparecer menores, maiores, inclinadas, mais próximas ou mais distantes. Uma ilusão visual que distorce as imagens.

É importante, em caso de ver distorção de imagens, que o paciente procure um oftalmologista para exame pois pode estar relacionado com alterações na retina, com degeneração macular relacionada a idade (DMRI), edemas maculares, e outras alterações vireo-retinianas.

Em pessoas idosas, episódios de isquemia transitória na carótida interna, podem manifestar-se com metamorfopsia. Outras doenças que podem levar a metamorfopsia são: - epilepsia, esquizofrenia, intoxicação.
"""))
        
        
        return news
    }
    
}
