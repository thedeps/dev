#Projeto deps dev.
===


### Rodando o projeto

1. ```git clone https://github.com/thedeps/dev.git dev-box```

2. ``` cd dev-box```

3. ``` vagrant up ```

Caso algum erro acontecer, use o ```vagrant destroy```, e tente os passos 2 e 3 denovo.

4. ``` vagrant ssh ```


5. ``` cd applications && rails server ```

Passo 5 rodará a aplicação, que poderá ser acessada -> ```192.168.33.100:3000```