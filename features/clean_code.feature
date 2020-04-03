Feature: See Clean Code book price
    I want to know the price of this book in amazon.com.br

    Scenario: Search for the book
        Given I acess |site|https://amazon.com.br|
        When i search for 'Código Limpo'
        Then i'll find my book 'Código Limpo'