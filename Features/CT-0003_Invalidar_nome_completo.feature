Feature: Cadastro

  Scenario: Invalidar preenchimento do nome completo

    CT-0003

      Given que estou no site da Trios de Capacitação na aba Cadastro "https://triosdecapacitacao.eadplataforma.com/cadastro/"
      And informo o nome completo
      And informo o telefone
      And informo o email
      And crio uma senha
      And informo o Captcha
      And concluo o cadastro

