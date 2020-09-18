# frozen_string_literal: true

families = [
  {
    name: 'Utthita sthiti',
    translation: 'Posturas em pé'
  },
  {
    name: 'Upavistha sthiti',
    translation: 'Posturas sentadas'
  },
  {
    name: 'Paschima pratana sthiti',
    translation: 'Flexões - front bends'
  },
  {
    name: 'Purva pratana sthiti',
    translation: 'Retroflexões - back bends'
  },
  {
    name: 'Parivrtta Sthiti',
    translation: 'Torções - extensões laterais'
  },
  {
    name: 'Supta Sthiti',
    translation: 'Posturas supinadas'
  },
  {
    name: 'Hasta Tolana Sthiti',
    translation: 'Posturas de equilíbrio sobre as mãos'
  },
  {
    name: 'Viparita Sthiti',
    translation: 'Posturas invertidas'
  },
  {
    name: 'Udara Akunchana Sthiti',
    translation: 'Posturas abdominais / barco'
  },
  {
    name: 'Visranta Karaka',
    translation: 'Posturas restaurativas'
  },
  {
    name: 'Grathana Sthiti',
    translation: 'Posturas de corpo em nó'
  }
]

words = [
  { name: 'utthita', translation: 'estendido, esticado' },
  { name: 'eka', translation: 'um' },
  { name: 'dwi', translation: 'dois' },
  { name: 'tri', translation: 'três' },
  { name: 'chatur', translation: 'quatro' },
  { name: 'pancha', translation: 'cinco' },
  { name: 'kona', translation: 'ângulo' },
  { name: 'parsva', translation: 'lateral' },
  { name: 'tada', translation: 'montanha' },
  { name: 'sama', translation: 'ereto, reto, imóvel' },
  {
    name: 'sthiti',
    translation: 'firme, permanecer parado'
  },
  { name: 'hasta', translation: 'mão, braço' },
  { name: 'pada', translation: 'pé, perna' },
  { name: 'danda', translation: 'bastão' },
  { name: 'ardha', translation: 'meia, metade' },
  { name: 'chandra', translation: 'lua' },
  { name: 'parivrtta', translation: 'revolvido, torcido' },
  { name: 'ut', translation: 'intenso' },
  { name: 'tan', translation: 'alongar, estirar' },
  { name: 'prasarita', translation: 'expandido, espalhado' },
  { name: 'viparita', translation: 'invertido' },
  { name: 'padangustha', translation: 'dedão do pé' },
  { name: 'sava', translation: 'cadáver' },
  { name: 'urdhva', translation: 'voltado para cima' },
  { name: 'dhanu', translation: 'arco' },
  {
    name: 'Garuda',
    translation: 'águia/rei dos pássaros - veículo de Vishnu'
  },
  {
    name: 'Virabhadra',
    translation:
      'poderoso herói criado por Siva a partir de sua cabeleira emaranhada'
  },
  {
    name: 'Matsyendra',
    translation:
      'discípulo de Shiva que recebeu os ensinamentos de yoga estando dentro da barriga de um peixe ou sendo um peixe'
  },
  {
    name: 'Marichi',
    translation:
      'o sábio, filho do Criador Brahma, avô de Surya - o deus do Sol'
  },
  { name: 'Surya', translation: 'Sol, o deus do Sol' },
  { name: 'mala', translation: 'guirlanda' },
  {
    name: 'Bharadvaja',
    translation: 'o sábio, pai de Drona - treinador dos Kauravas e Pandavas'
  },
  { name: 'upavistha', translation: 'sentado' },
  { name: 'baddha', translation: 'fechado' },
  { name: 'supta', translation: 'deitado, supinado' },
  { name: 'pachima', translation: 'oeste, parte posterior do corpo' },
  { name: 'ugra', translation: 'formidável, poderoso, nobre' },
  {
    name: 'brahmacharya',
    translation: 'estudo religioso, autocontrole, celibato'
  },
  { name: 'janu', translation: 'joelho' },
  { name: 'sirsa', translation: 'cabeça' },
  { name: 'setu', translation: 'ponte' },
  { name: 'sarva', translation: 'todo, completo' },
  { name: 'anga', translation: 'membro, parte' },
  { name: 'hala', translation: 'arado' },
  { name: 'salamba', translation: 'com suporte' },
  { name: 'niralamba', translation: 'sem suporte' },
  { name: 'nava', translation: 'navio, barco' },
  { name: 'ustra', translation: 'camelo' },
  { name: 'adho', translation: 'voltado para baixo' },
  { name: 'mukha', translation: 'cara, boca' },
  { name: 'svana', translation: 'cachorro' },
  { name: 'bhujanga', translation: 'serpente' },
  { name: 'makara', translation: 'crocodilo' },
  { name: 'salabha', translation: 'gafanhoto' },
  { name: 'vira', translation: 'herói, guerreiro, campeão' },
  {
    name: 'parigha',
    translation: 'trave, barra usada para fechar portão'
  },
  { name: 'utkata', translation: 'poderoso, impetuoso, desigual' },
  { name: 'ud', translation: 'superioridade, expandindo, poder' },
  { name: 'jaya', translation: 'conquista, vitória, sucesso, triunfo' },
  { name: 'vi', translation: 'prefixo de negação' },
  { name: 'loma', translation: 'pelo' },
  { name: 'bhramari', translation: 'abelha grande e negra' }
]

movements = [
  { name: 'flexão plantar do tornozelo', joint: 'Tornozelos' },
  { name: 'flexão dorsal do tornozelo', joint: 'Tornozelos' },
  { name: 'eversão do tornozelo', joint: 'Tornozelos' },
  { name: 'inversão do tornozelo', joint: 'Tornozelos' },
  { name: 'flexão do joelho', joint: 'Joelhos' },
  { name: 'extensão do joelho', joint: 'Joelhos' },
  { name: 'rotação externa do joelho', joint: 'Joelhos' },
  { name: 'rotação interna do joelho', joint: 'Joelhos' },
  { name: 'abdução do quadril', joint: 'Quadris' },
  { name: 'adução do quadril', joint: 'Quadris' },
  { name: 'extensão do quadril', joint: 'Quadris' },
  { name: 'flexão do quadril', joint: 'Quadris' },
  { name: 'rotação externa do quadril', joint: 'Quadris' },
  { name: 'rotação medial do quadril', joint: 'Quadris' },
  { name: 'anteversão da pelve', joint: 'Pelve' },
  { name: 'retroversão da pelve', joint: 'Pelve' },
  { name: 'extensão da coluna', joint: 'Coluna vertebral' },
  { name: 'flexão da coluna', joint: 'Coluna vertebral' },
  { name: 'extensão do punho', joint: 'Punhos' },
  { name: 'flexão do punho', joint: 'Punhos' },
  { name: 'desvio ulnar punho', joint: 'Punhos' },
  { name: 'desvio radial punho', joint: 'Punhos' },
  { name: 'flexão do cotovelo', joint: 'Cotovelos' },
  { name: 'extensão do cotovelo', joint: 'Cotovelos' },
  { name: 'abdução do ombro', joint: 'Ombros' },
  { name: 'adução do ombro', joint: 'Ombros' },
  { name: 'extensão do ombro', joint: 'Ombros' },
  { name: 'flexão do ombro', joint: 'Ombros' },
  { name: 'retroposição do ombro', joint: 'Ombros' },
  { name: 'rotação lateral do ombro', joint: 'Ombros' },
  { name: 'extensão cervical', joint: 'Pescoço' },
  { name: 'flexão cervical', joint: 'Pescoço' },
  { name: 'rotação cervical', joint: 'Pescoço' }
]

tags = [
  { name: 'Iniciante', category: 1 },
  { name: 'Intermediário', category: 1 },
  { name: 'Avançado', category: 1, premium: true },
  { name: 'Bloquinho', category: 2 },
  { name: 'Bolster', category: 2 },
  { name: 'Cadeira', category: 2 },
  { name: 'Cavalo', category: 2 },
  { name: 'Cinto', category: 2 },
  { name: 'Manta', category: 2 },
  { name: 'Parede', category: 2 },
  { name: 'Quadril', category: 3 },
  { name: 'Gestação', category: 3 },
  { name: 'Joelhos', category: 3 },
  { name: 'Lombar', category: 3 },
  { name: 'Ciclo menstrual', category: 3 },
  { name: 'Pescoço e Ombros', category: 3 },
  { name: 'Didática', category: 4 },
  { name: 'Preparatório', category: 4 },
  { name: 'Ajuste', category: 4, premium: true }
]

families.each do |family|
  Family.create(family)
end

words.each do |word|
  Word.create(word)
end

movements.each do |movement|
  Movement.create(movement)
end

tags.each do |tag|
  Tag.create(tag)
end
