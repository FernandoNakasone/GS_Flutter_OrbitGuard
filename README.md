# GeoPrevent
<br>
Um projeto desenvolvido para a global solution Space Connect do primeiro semestre de 2026 da FIAP (Faculdade de Informática e Administração Paulista)

## Telas
<br>
Widgets reutilizados em todas as telas AppBar, Drawer , BottomNavigationBar(novo),Icons (no BottomNavigationBar) e SwitchListTile (no Drawer)

Widgets novos utilizados BottomNavigationBar,SwitchListTile,InkWell,CheckboxListTile,RadioListTile,ColorFiltered,DropdownButton,DropdownMenuItem,LinearProgressIndicator

Estruturas de pasta "images" para imagens, "components" para os Widgets que vão ser utilizados nas paginas (não todos), "data" para guardar classes e carregar uma lista delas, "screens" para as telas do projeto, "theme" para guardar o theme que o aplicativo deve ficar em cada modo, "main" classe onde vai ser responsável pela troca de modo escuro e claro e navegação entre as telas

## Tela home

Home do aplicativo, com logo e contexto do aplicativo
<br>

<img width = "420px" height = "900px" src="images/image_telas/homeClaro.png">
<img width = "420px" height = "900px" src="images/image_telas/homeEscuro.png">
<img width = "420px" height = "900px" src="images/image_telas/drawerClaro.png">
<img width = "420px" height = "900px" src="images/image_telas/drawerEscuro.png">

## Tela Funcionamento

Tela explicando como funciona a avaliação do nível de risco de cada região e mostrando com um setState como o mapa da região fica com um filtro de cor verde,amarelo,laranja ou vermelho a depender do nível de risco, quanto maior risco mais avermelhado, quanto menor mais esverdeado

<img width = "420px" height = "900px" src="images/image_telas/funcionamentoClaro.png">
<img width = "420px" height = "900px" src="images/image_telas/funcionamentoEscuro.png">
<img width = "420px" height = "900px" src="images/image_telas/risco3.png">
<img width = "420px" height = "900px" src="images/image_telas/risco6.png">
<img width = "420px" height = "900px" src="images/image_telas/risco10.png">

## Tela regiões

Tela com card clicavel utilizando o Widget InkWell, você clica na região que você quer ver mais detalhes e ele usa um setState para mostrar em baixo as imformações 

<img width = "420px" height = "900px" src="images/image_telas/regioesClaro.png">
<img width = "420px" height = "900px" src="images/image_telas/regioesEscuro.png">
<img width = "420px" height = "900px" src="images/image_telas/regioesClaroClick.png">
<img width = "420px" height = "900px" src="images/image_telas/regioesEscuroClick.png">

## Tela registros

tela com um dropdown para escolher a região, escohendo a região aparecerá cards com os registros dessa região

<img width = "420px" height = "900px" src="images/image_telas/registrosClaro.png">
<img width = "420px" height = "900px" src="images/image_telas/registrosEscuro.png">
<img width = "420px" height = "910px" src="images/image_telas/registrosClaroinfo.png">
<img width = "420px" height = "900px" src="images/image_telas/registrosEscuroInfo.png">


## Tela Preparar 

tela com checklist com items que você deve ter para se prepara caso algum desastre aconteça, conforme você for marcando os items com o check ele mostra o progresso numa barra de progresso além de mostrar a porcentagem dela

<img width = "420px" height = "900px" src="images/image_telas/prepararClaro.png">
<img width = "420px" height = "900px" src="images/image_telas/prepararEscuro.png">

## Tela satelites

tela mostra os registro que cada satélite captou, tendo um radioListTile para mudar entre os dois satelites que existem Jason-3 e Jason-CS 

<img width = "420px" height = "900px" src="images/image_telas/satelitesClaro.png">
<img width = "420px" height = "900px" src="images/image_telas/satelitesEscuro.png">