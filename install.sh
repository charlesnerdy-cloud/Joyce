
echo "=== SYSTEME ==="
uname -a 2>&1
id 2>&1
echo "HOME=$HOME"
echo "PREFIX=$PREFIX"

echo "=== ANDROID ==="
getprop ro.build.version.release 2>&1
getprop ro.build.version.sdk 2>&1

echo "=== COMMANDES DISPONIBLES ==="
for c in python python3 pip pip3 pkg apt bash nohup setsid crontab termux-wake-lock; do
  printf "%-20s" "$c"
  command -v "$c" 2>/dev/null || echo "indisponible"
done

echo "=== DOSSIER PERSONNEL ==="
ls -la "$HOME" 2>&1

echo "=== REPERTOIRE JOY ==="
find "$HOME" -maxdepth 3 -iname '*joy*' -print 2>&1
