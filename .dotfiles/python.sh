# Ignore python bytecode
export PYTHONDONTWRITEBYTECODE=1

function activate {
	[ -s evn/bin/activate ] && source env/bin/activate
}
