// escrevendo em arquivo com fs.writeFile  Se o arquivo não existir, ele é criado.
// Caso contrário, é reescrito, ou seja, 
//tem seu conteúdo apagado antes de o novo conteúdo ser escrito. 
//A flag 'wx', por exemplo, funciona como 'w',
// mas lança um erro caso o arquivo já exista.

const fs = require('fs').promises;

async function main() {
  try {
    await fs.writeFile('./meu-arquivo.txt', 'Meu textão');
    console.log('Arquivo escrito com sucesso!');
  } catch (err) {
    console.error(`Erro ao escrever o arquivo: ${err.message}`);
  }
}

main();