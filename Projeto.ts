//A CodeTech, uma agência de desenvolvimento de software em expansão, está
//buscando melhorar a gestão de seus projetos e a colaboração entre suas equipes de
//desenvolvedores. Para atender essa necessidade, a CodeTech solicita o desenvolvimento
//de um sistema de gerenciamento de projetos que facilite o acompanhamento de tarefas, o
//controle de prazos e a alocação de recursos.
class Empresa {

    constructor(
        public nome: string,
        public cnpj: string,
        public endereco: string[],
        public telefone: string,
        public email: string) {

    }
    mostrarDados() {
        console.log('Dados da Empresa:')
        console.log(`Nome: ${this.nome}`)
        console.log(`CNPJ: ${this.cnpj}`)
        console.log(`Endereço: ${this.endereco}`)
        console.log(`Telefone: ${this.telefone}`)
        console.log(`Email: ${this.email}`)

    }
}
const empresa1 = new Empresa(
    'Code Tech',
    '25664446834217',
    ['Vila Lobos'],
    '080035324678',
    'emp@gmail.com')

console.log(empresa1.mostrarDados())
console.log('=======================================================================')

class Funcionario {

    constructor(
        public nome: string,
        public cpf: string,
        public rg: string,
        public telefone: string,
        public endereco: string[],
        public email: string,
        public cargo: string,
        public data_nascimento: Date) {

    }
    mostrarDados() {
        console.log('Dados do Funcionario:')
        console.log(`Nome: ${this.nome}`)
        console.log(`CPF: ${this.cpf}`)
        console.log(`RG: ${this.rg}`)
        console.log(`Telefone: ${this.telefone}`)
        console.log(`Endereço: ${this.endereco}`)
        console.log(`Email: ${this.email}`)
        console.log(`Cargo: ${this.cargo}`)
        console.log(`Data_Nascimento: ${this.data_nascimento.toLocaleDateString('pt-BR')}`)

    }
}

const funcionario1 = new Funcionario(
    'Gabriel',
    '23236468854',
    '3685754',
    '673787589687',
    ['Maranguape'],
    'gab@gmail.com',
    'DevFront',
    new Date('2002-03-16'))
const funcionario2 = new Funcionario(
    'Thomas',
    '32454466896',
    '4676578',
    '57475886565',
    ['Paulistana'],
    'tho@gmail.com',
    'DevBack',
    new Date('2003-02-18'))
const funcionario3 = new Funcionario(
   'Silva',
   '468657463646',
   '46756854',
   '47894795648',
   ['Cachoeira'],
   'sil@gmail.com',
   'Gerenciador',
   new Date('2001-14-02'))
const funcionario4 = new Funcionario(
    'Lima',
    '469317267582',
    '44770324',
    '2958372622',
    ['Pico da Neblina'],
    'lima@gmail.com',
    'Analista',
    new Date('2005-11-08'))

console.log(funcionario1.mostrarDados())
console.log('=======================================================================')
console.log(funcionario2.mostrarDados())
console.log('=======================================================================')
console.log(funcionario3.mostrarDados())
console.log('=======================================================================')
console.log(funcionario4.mostrarDados())
console.log('=======================================================================')


class Projeto {

    constructor(
        public nome: string,
        public descricao: string,
        public tecnologias: string,
        public data_inicio: Date,
        public data_fim: Date,
        public cadastro: string,
        public status: string) {
    }
    mostrarDados() {
        console.log('Dados do Projeto:')
        console.log(`Nome: ${this.nome}`)
        console.log(`Descrição: ${this.descricao}`)
        console.log(`Tecnologias: ${this.tecnologias}`)
        console.log(`Data_Inicio: ${this.data_inicio}`)
        console.log(`Data_Fim: ${this.data_fim}`)
        console.log(`Cadastro: ${this.cadastro}`)
        console.log(`Status: ${this.status}`)
    }

}

 const projeto1 = new Projeto(
    'Tecnology',
    'Progresso',
    'Ferramentas Modernas',
    new Date('2023-02-16'),
    new Date('2025-02-19'),
    'Novos Projetos',
    'Em Andamento')
 const projeto2 = new Projeto(
    'Tech',
     'Projeto Grande',
    'Ferramentas Futuristas',
     new Date('2022-01-16'),
     new Date('2024-02-16'),
     'Próximo Projeto',
     'Em Andamento')
  const projeto3 = new Projeto(
        'TecnoRio',
        'Projeto Inovador',
        'Ferramentas de Ponta',
        new Date('2022-02-16'),
        new Date('2024-02-19'),
        'Projeto 3',
        'Em Andamento')
  const projeto4 = new Projeto(
            'TecnoRN',
            'Projeto do Ano',
            'Ferramentas de Ponta',
            new Date('2024-02-16'),
            new Date('2027-02-19'),
            'Projeto 4',
            'Em Andamento')
    

console.log(projeto1.mostrarDados())
console.log('=======================================================================')
console.log(projeto2.mostrarDados())
console.log('=======================================================================')
console.log(projeto3.mostrarDados())
console.log('=======================================================================')
console.log(projeto4.mostrarDados())
console.log('=======================================================================')

class Tarefa extends Projeto{

    constructor(
        public nome: string,
        public qntd: string,
        public solicitacao: string,
        public data_inicio: Date,
        public data_fim: Date,
        public descricao: string,
        public cadastro: string,
        public tecnologias: string,
        public status: string,
        public responsavel: string) {
            super(nome, descricao, tecnologias, data_inicio, data_fim, cadastro, status)
    }
    mostrarDados() {
        console.log('Dados de Tarefas:')
        console.log(`Nome: ${this.nome}`)
        console.log(`Qntd: ${this.qntd}`)
        console.log(`Solicitações: ${this.solicitacao}`)
        console.log(`Data_Inicio: ${this.data_inicio}`)
        console.log(`Data_Fim: ${this.data_fim}`)
        console.log(`Descrição: ${this.descricao}`)
        console.log(`Cadastro: ${this.cadastro}`)
        console.log(`Tecnologias: ${this.tecnologias}`)
        console.log(`Desenvolvedor Responsável: ${this.responsavel}`)
    }

}

const tarefa1 = new Tarefa(
    'Modernidade',
    '10',
    'Gerente',
    new Date('2023-05-15'),
    new Date('2024-03-14'),
    'Em Frente',
    '5788688',
    'As melhores',
    'Quase Pronto',
    'DevFront')
const tarefa2 = new Tarefa(
        'Futurista',
        '5',
        'Empresa Cliente',
        new Date('2022-03-18'),
        new Date('2024-03-18'),
        'Em diante',
        '6853578',
        'Modernas',
        'Quase lá',
        'DevBack')
const tarefa3 = new Tarefa(
        'Inovação',
        '8',
        'Empresa Terceira',
         new Date('2022-05-19'),
         new Date('2024-05-18'),
         'Em Frente',
         '5478986',
         'As melhores',
         'Quase Finalizado',
        'DevFULL')

console.log(tarefa1.mostrarDados())
console.log('=======================================================================')
console.log(tarefa2.mostrarDados())
console.log('=======================================================================')
console.log(tarefa3.mostrarDados())
console.log('=======================================================================')


class Equipe {

    constructor(
        public id: string,
        public nome: string,
        public cargo: string,
        public lider: string,
        public membros: string,
        public data_admissao: Date) {

    }
    mostrarDados() {
        console.log('Dados da Equipe:')
        console.log(`ID: ${this.id}`)
        console.log(`Nome: ${this.nome}`)
        console.log(`Cargo: ${this.cargo}`)
        console.log(`Lider: ${this.lider}`)
        console.log(`Membros: ${this.membros}`)
        console.log(`Data_Admissão: ${this.data_admissao}`)
    }

}

const equipe1 = new Equipe(
    '2574467',
    'Criadores',
    'Desenvolvedores',
    'Chefe',
    'Pessoas Incluidas',
    new Date('2023-01-01'))
const equipe2 = new Equipe(
        '5895433',
        'Projetistas',
        'Chefe',
        'Pessoas Incluidas',
        'Gerência',
        new Date('2022-01-06'))

console.log(equipe1.mostrarDados())
console.log('=======================================================================')
console.log(equipe2.mostrarDados())
console.log('=======================================================================')
