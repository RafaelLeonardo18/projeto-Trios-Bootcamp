Feature: Cadastro

    Scenario: Validar preenchimento válido do nome completo

    CT-0002

        Given que estou no site da Trios de Capacitação na aba Cadastro "https://triosdecapacitacao.eadplataforma.com/cadastro/"
        And informo o nome completo
        And informo o telefone
        And informo o email
        And crio uma senha
        And informo o Captcha
        And concluo o cadastro

        When insiro os dados de "nome completo"
        And o dado tem pelo menos dois caracters seguidos não brancos
        And após a primeira sequência de caracteres tem um caractere em branco
        And após o caractere em branco tem outra sequência de pelo menos dois caracters não brancos
        And não possuir nenhum caractere especial, exceto o apóstrofo
        And não possuir números
        Then valida os dados de "nome completo"

        Scenario Outline:

        | Nome Completo               |
        | "Rafael Leonardo de Lima"   |
        | "Itamar Irani de Lima"      |
        | "Marilane Leonardo de Lima" |