video_speedup() {
    ffmpeg -i "$2" -pix_fmt yuv420p -vcodec libx264 -filter_complex "[0:v]setpts=PTS/$1[v]" -map "[v]" -an "${2%.*}-x$1.mp4"
}
