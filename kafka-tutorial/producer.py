import os
from confluent_kafka import Producer

producer_conf = {
    "bootstrap.servers":"localhost:9092"
}
producer = Producer(producer_conf)
def acked(err, msg):
    if err is not None:
        print("Failed to deliver message: %s: %s" % (str(msg), str(err)))
    else:
        print("Message produced: %s" % (str(msg)))
      
msg={
  'Type':'Truck 2',
  'Log':'90N',
  'Lat':'66S'
}
producer.produce(topic='Delivery', partition=1, value=str(msg), callback=acked)
#producer.flush() #has tendency to get duplicate-Synchronous write
producer.poll(1)



# kafka-topics --bootstrap-server broker:29092 --create --topic HelloWorld --if-not-exists --replication-factor 1 --partitions 1