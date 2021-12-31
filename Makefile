.DEFAULT_GOAL := default

default:
	@echo "The following commands are supported:"
	@echo "clear \t\t # Clear local pipenv cache"
	@echo "install \t # Install project dependencies"
	@echo "sfilter \t # Run sfilter"

clear:
	@echo "Clear pipenv cache"
	pipenv --clear
	pipenv --rm

install:
	@echo "Install pipenv"
	pipenv install

sfilter:
	@echo "Run sfilter"
	PIPENV_IGNORE_VIRTUALENVS=1 pipenv run sfilter .
