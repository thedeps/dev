#Projeto deps dev.
===


### Rodando o projeto

1. ```git clone https://github.com/thedeps/dev.git dev-box```

2. ``` cd dev-box```

3. ``` vagrant up ```

Caso algum erro acontecer, use o ```vagrant destroy```, e tente os passos 2 e 3 denovo.

4. ``` vagrant ssh ```


5. ``` cd applications && bundle install ```

6. ``` rails server ```

Passo 6 rodará a aplicação, que poderá ser acessada -> ```192.168.33.100:3000```