# Makefile

# ---------- Configurações ----------
OUT_DIR    := presentations
FINAL_DECK := $(OUT_DIR)/deck_final.pptx

.PHONY: run run_all clean $(OUT_DIR)

# Garante que a pasta exista
$(OUT_DIR):
	mkdir -p $(OUT_DIR)

# ------------ Targets -------------

# Gera o deck final, entrando em src para achar o script
run: | $(OUT_DIR)
	python ./src/generate_deck.py --out $(FINAL_DECK)

# Alias para rodar tudo de uma vez
run_all: run

# Limpa caches Python (__pycache__ e .pyc)
clean:
	find src -type f -name "*.pyc" -delete
	find src -type d -name "__pycache__" -exec rm -rf {} +