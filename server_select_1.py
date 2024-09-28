from transformers import AutoTokenizer, AutoModelForCausalLM

class HuggingFaceModel:
    def __init__(self, model_name="unsloth/Llama-3.2-1B"):
            tokenizer = AutoTokenizer.from_pretrained(model_name)
            model = AutoModelForCausalLM.from_pretrained(model_name)

    def generate_response(self, message: str) -> str:
        inputs = self.tokenizer(message, return_tensors="pt")
        outputs = self.model.generate(inputs["input_ids"], max_length=50)
        response = self.tokenizer.decode(outputs[0], skip_special_tokens=True)

def get_response(message: str) -> str:
    model = HuggingFaceModel()
    return model.generate_response(message)
