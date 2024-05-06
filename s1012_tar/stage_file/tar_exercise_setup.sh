
mkdir -p documents logs images videos
echo "This is a report." > documents/report.txt
echo "This is a summary." > documents/summary.txt
echo "This is a note." > documents/note.txt
echo "Log update 1." > update.log
echo "System error logged" > logs/system.log
echo "Event start logged" > logs/event.log
echo "Sample photo content" > images/photo1.jpg
echo "Sample photo content" > images/photo2.jpg
echo "Sample video content" > videos/video1.mp4
echo "Sample video content" > videos/video2.mp4

# Create initial archives
tar -cvf docs.tar -C documents .
tar -czvf logs.tar.gz -C logs .
