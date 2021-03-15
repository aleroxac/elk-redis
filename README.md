# elk-redis
![Elastic Stack](assets/elkafka.png)

## Descrição
Implementação da Elastic Stack com Redis



## Modo de uso
``` sh
### Visualizando mensagens dentro do redis
docker-compose exec redis redis-cli lrange input_key 0 0
docker-compose exec redis redis-cli lrange output_key 0 0

### Reiniciando o processo de indexação
assets/scripts/restart apache
```
![Elastic Stack](assets/kibana_kafka.png )



## Referências
- [Logstash Reference](https://www.elastic.co/guide/en/logstash/7.8/index.html)
- [Filebeat Reference](https://www.elastic.co/guide/en/beats/filebeat/7.8/index.html)
- [Flog](https://github.com/mingrammer/flog)