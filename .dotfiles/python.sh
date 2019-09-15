# Ignore python bytecode
export PYTHONDONTWRITEBYTECODE=1

function activate {
	[ -s env/bin/activate ] && source env/bin/activate
}
