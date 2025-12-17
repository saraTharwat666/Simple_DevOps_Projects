echo "🔥 Generating CPU load..."
for i in {1..4}; do
    yes > /dev/null &
done

sleep 30
pkill yes 

echo "✅ Test complete! Check your Netdata dashboard for CPU alerts."