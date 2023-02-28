# RSP_PROJECT

Popis projektu
Projekt se zabývá tvorbou webové aplikace, která bude umožňovat uživatelům vytvářet, upravovat a vyplňovat dotazníky. Dotazníky se budou skládat z otázek, na které bude možné odpovědět zaškrtnutím vybrané možnosti. Uživatelé budou moct vytvořené dotazníky sdílet a výsledné odpovědi vyexportovat. K dispozici bude tvorba uzavřených skupin, které budou sloužit k přístupu k dotazníku pouze pro určité uživatele. Dále budou mít uživatelé možnost si vybrat, zda si chtějí předplatit Premium verzi, která bude nabízet četnější využívání vybraných funkcí, nebo zda zůstanou u Free verze.


## How to run backend

```
// Database
docker-compose up -d

// Spring boot
./mvnw spring-boot:run

// React
cd frontend
npm install 
npm start
```