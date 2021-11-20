import hashlib
class NeuralCoinBlock:
    def __init__(self, previous_block_hash, transaction_list):
        self.previous_block_hash = previous_block_hash
        self.transaction_list = transaction_list

        self.block_data = "-".join(transaction_list)+ "-" + previous_block_hash
        self.block_hash = hashlib.sha256(self.block_data.encode()).hexdigest()
t1 = "Jessica sends 5 NC to Lisa"
t2 = "kavya sends 7 NC to Lisa"
t3 = "Lisa sends 3 NC to Kavya"
t4 = "Keerthi sends 9.3 NC to Jessica"
t5 = "Lisa sends 9 NC to Abhi"
t6 = "Lisa sends 5.4 NC to Keerthi"
 
initial_block = NeuralCoinBlock("initial_string",[t1,t2])

print(initial_block.block_data)
print(initial_block.block_hash)

second_block = NeuralCoinBlock(initial_block.block_hash, [t3,t4])
  
print(second_block.block_data)
print(second_block.block_hash)

third_block = NeuralCoinBlock(second_block.block_hash, [t5,t6]) 

print(third_block.block_data)
print(third_block.block_hash)






    

