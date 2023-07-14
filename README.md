# Desenvolvimento em Solidity

Este repositório contém exemplos e informações sobre desenvolvimento em Solidity, uma linguagem de programação utilizada para escrever contratos inteligentes na plataforma Ethereum.

## Solidity

Solidity é uma linguagem de programação orientada a contratos inteligentes, projetada especificamente para a plataforma Ethereum. Ela permite que os desenvolvedores escrevam contratos inteligentes que definem as regras e a lógica dos aplicativos descentralizados (DApps).

## Smart Contracts

Smart Contracts (contratos inteligentes) são programas de computador autônomos que são executados em uma blockchain, como a Ethereum. Eles são escritos em linguagens de programação como Solidity e são armazenados e executados em contratos na blockchain.

Os Smart Contracts são projetados para automatizar e executar acordos entre várias partes sem a necessidade de intermediários. Eles contêm lógica programática que define as regras e as condições para o funcionamento do contrato.

Os principais recursos dos Smart Contracts incluem:

- **Imutabilidade:** Uma vez implantados em uma blockchain, os Smart Contracts não podem ser alterados. Isso garante que as regras e as condições do contrato permaneçam consistentes e confiáveis.

- **Transparência:** Todas as transações e alterações de estado realizadas por um Smart Contract são registradas e visíveis publicamente na blockchain, o que aumenta a transparência e a confiança nas transações.

- **Execução automática:** Os Smart Contracts são autônomos e executam suas ações automaticamente quando as condições programadas são atendidas. Isso permite que as partes envolvidas confiem na execução confiável e precisa do contrato.

Exemplo de código de um Smart Contract básico em Solidity:

```solidity
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SimpleContract {
    uint public myNumber;

    constructor() {
        myNumber = 0;
    }

    function setNumber(uint newNumber) public {
        myNumber = newNumber;
    }
}
```

Neste exemplo, temos um Smart Contract simples que armazena um número na variável myNumber e permite que ele seja atualizado por meio da função setNumber(). Qualquer pessoa que interaja com este contrato pode ver o valor atual de myNumber e atualizá-lo se tiver permissão.

## Ethereum

Ethereum é uma plataforma descentralizada baseada em blockchain que permite a execução de contratos inteligentes. É uma das principais plataformas para o desenvolvimento de aplicativos descentralizados e usa a linguagem Solidity para programação de contratos.

## GAS

GAS é a unidade de medida utilizada para quantificar o consumo de recursos computacionais em uma transação na rede Ethereum. Cada operação em um contrato inteligente consome uma certa quantidade de GAS, que é paga pelos participantes da rede.

## Tipos de dados em Solidity

### **string**

O tipo `string` é usado para armazenar sequências de caracteres.

Exemplo de código:
```solidity
string public myString = "Hello, world!";
```

### **int**

O tipo `int` é usado para armazenar números inteiros com sinal.

Exemplo de código:
```solidity
int public myInt = -42;
```

### **uint**

O tipo `uint` é usado para armazenar números inteiros sem sinal.

Exemplo de código:
```solidity
uint public myUint = 42;
```

### **bool**

O tipo `bool` é usado para armazenar valores booleanos (verdadeiro ou falso).

Exemplo de código:
```solidity
bool public myBool = true;
```

### **address**

O tipo `address` é usado para armazenar endereços de contas Ethereum.

Exemplo de código:
```solidity
address public myAddress = 0x1234567890123456789012345678901234567890;
```

## Funções

### **view**

A palavra-chave `view` é usada para declarar funções que não modificam o estado do contrato e retornam um valor.

Exemplo de código:
```solidity
function getName() public view returns (string memory) {
    return "John Doe";
}
```

### **pure**

A palavra-chave `pure` é usada para declarar funções que não modificam nem acessam o estado do contrato.

Exemplo de código:
```solidity
function add(uint a, uint b) public pure returns (uint) {
    return a + b;
}
```

### Funções de escrita

As funções de escrita são usadas para modificar o estado do contrato, geralmente realizando alterações no blockchain.

Exemplo de código:
```solidity
function setName(string memory newName) public {
    name = newName;
}
```

## Modificadores de Acesso

Os modificadores de acesso são usados para controlar o acesso e o comportamento das funções em um contrato.

Exemplo de código:
```solidity
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyContract {

    address public owner;
    uint public value;

    modifier onlyOwner() {
        require(msg.sender == owner, "Apenas o proprietário pode chamar esta função");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function setValue(uint newValue) public onlyOwner {
        value = newValue;
    }
}
```
No exemplo acima, o modificador `onlyOwner` é definido e aplicado à função `setValue()`. O modificador verifica se o remetente da transação é o proprietário do contrato antes de permitir a execução da função. Se o remetente não for o proprietário, a função será revertida com uma mensagem de erro.

Isso demonstra como os modificadores de acesso podem ser usados para adicionar restrições e controlar o acesso a certas funções em um contrato.
