cd easyrtc/server_example && npm start &
python language_theater/manage.py runserver &

exit_script() {
    echo "Exiting..."
    trap - SIGINT SIGTERM # clear the trap
    kill -- -$$ # Sends SIGTERM to child/sub processes
}

trap exit_script SIGINT SIGTERM
sleep infinity