SETUP = ansible-playbook ./playbooks/setup.yml $(MMM)
REMOTE = $(SETUP) --ask-pass --ask-become-pass
mode: PH
ifneq (, $(findstring local, $(MAKECMDGOALS)))
	$(SETUP) --connection local
else
ifneq (, $(findstring remote, $(MAKECMDGOALS)))
	$(REMOTE)
endif
	$(SETUP)
endif
PH:
.PHONY: $(PH)