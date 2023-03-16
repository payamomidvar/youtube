const List posts = [
  {
    "id": 1,
    "thumbnail_img": "assets/images/thumbnail1.jpg",
    "profile_img": "assets/images/menu1.jpg",
    "username": "Lionsgate Movies",
    "title": "About My Father (2023) Official Trailer",
    "view_count": "7.3M",
    "day_ago": "5 days ago",
    "subscriber_count": "1.93M",
    "like_count": "50K",
    "unlike_count": "2K",
    "video_url": "assets/videos/video1.mp4",
    "video_duration": "2:47"
  },
  {
    "id": 2,
    "thumbnail_img": "assets/images/thumbnail2.jpg",
    "profile_img": "assets/images/menu2.jpg",
    "username": "ONE Media",
    "title": "AIR Trailer (2023) Ben Affleck, Matt Damon",
    "view_count": "1.2M",
    "day_ago": "2 weeks ago",
    "subscriber_count": "4.39M",
    "like_count": "13K",
    "unlike_count": "1K",
    "video_url": "assets/videos/video2.mp4",
    "video_duration": "2:28"
  },
  {
    "id": 3,
    "thumbnail_img": "assets/images/thumbnail3.jpg",
    "profile_img": "assets/images/menu3.jpg",
    "username": "Teaser PRO",
    "title": "SPIDER-MAN: NEW HOME (2024) - FIRST TRAILER",
    "view_count": "1.2M",
    "day_ago": "2 weeks ago",
    "subscriber_count": "1.05M",
    "like_count": "8.3K",
    "unlike_count": "1K",
    "video_url": "assets/videos/video3.mp4",
    "video_duration": "2:50"
  },
  {
    "id": 4,
    "thumbnail_img": "assets/images/thumbnail4.jpg",
    "profile_img": "assets/images/menu4.jpg",
    "username": "Movie Coverage",
    "title": "RARE OBJECTS Trailer (2023) Katie Holmes, Alan Cumming",
    "view_count": "6.9K",
    "day_ago": "5 hours ago",
    "subscriber_count": "1.05M",
    "like_count": "252",
    "unlike_count": "5",
    "video_url": "assets/videos/video4.mp4",
    "video_duration": "2:23"
  },
  {
    "id": 5,
    "thumbnail_img": "assets/images/thumbnail5.jpg",
    "profile_img": "assets/images/menu5.jpg",
    "username": "Movie Trailers Source",
    "title": "FUBAR Official Teaser Trailer (2023)",
    "view_count": "19K",
    "day_ago": "20 hours ago",
    "subscriber_count": "2.38M",
    "like_count": "368",
    "unlike_count": "10",
    "video_url": "assets/videos/video5.mp4",
    "video_duration": "0:41"
  }
];

const List home_video_detail = [
  // {
  //   "id": 1,
  //   "thumbnail_img": "assets/images/menu1.jpg",
  //   "profile_img": "assets/images/menu1.jpg",
  //   "username": "Lionsgate Movies",
  //   "title": "About My Father (2023) Official Trailer",
  //   "view_count": "7.3M",
  //   "day_ago": "5 days go",
  //   "subscriber_count": "1.93M",
  //   "like_count": "50K",
  //   "unlike_count": "2K",
  //   "video_url": "assets/videos/video1.mp4",
  //   "video_duration": "2:47"
  // },
  // {
  //   "id": 2,
  //   "thumbnail_img": "assets/images/menu_1.jpg",
  //   "profile_img":
  //       "https://yt3.ggpht.com/ytc/AAUvwnhuheOArV1o5BSo10TdUivctyIHSfzYGKLwudMCdg=s176-c-k-c0xffffffff-no-rj-mo",
  //   "username": "a day magazine",
  //   "title": "Violette Wautier - I'd Do It Again | Live in a day",
  //   "view_count": "1,122,707",
  //   "day_ago": "Jul 2, 2020",
  //   "subscriber_count": "88.6K",
  //   "like_count": "11K",
  //   "unlike_count": "88",
  //   "video_url": "assets/videos/video_1.mp4",
  //   "video_duration": "04:30"
  // },
  // {
  //   "id": 3,
  //   "thumbnail_img": "assets/images/menu_6.jpg",
  //   "profile_img":
  //       "https://yt3.ggpht.com/ytc/AAUvwniOFTckqAPsjNIg5zGVZnJqLZ58RTgH0a4RSmFKBQ=s176-c-k-c0xffffffff-no-nd-rj-mo",
  //   "username": "Kmeng Khmer - ក្មេងខ្មែរ Official",
  //   "title": "KmengKhmer - ឆ្ងាយតែកាយ (Far Away) [Official MV]",
  //   "view_count": "5,388,486",
  //   "day_ago": "Sep 8, 2018",
  //   "subscriber_count": "562K",
  //   "like_count": "13K",
  //   "unlike_count": "69",
  //   "video_url": "assets/videos/video_6.mp4",
  //   "video_duration": "07:05"
  // },
  // {
  //   "id": 4,
  //   "thumbnail_img": "assets/images/menu_2.jpg",
  //   "profile_img":
  //       "https://yt3.ggpht.com/ytc/AAUvwniJv0lOI9XzTWKHHA5pD04MMZSsGWCT9qWxb1w9Dw=s176-c-k-c0xffffffff-no-nd-rj-mo",
  //   "username": "វណ្ណដា-VannDa Official",
  //   "title": "VANNDA - HIK HIK (FEAT. BAD BOY BERT) [OFFICIAL MUSIC VIDEO]",
  //   "view_count": "5,109,116",
  //   "day_ago": "Nov 25, 2020",
  //   "subscriber_count": "1.45M",
  //   "like_count": "13K",
  //   "unlike_count": "69",
  //   "video_url": "assets/videos/video_2.mp4",
  //   "video_duration": "04:30"
  // },
  // {
  //   "id": 5,
  //   "thumbnail_img": "assets/images/menu_4.jpg",
  //   "profile_img":
  //       "https://yt3.ggpht.com/ytc/AAUvwnjcXhQ1Tl-tCyXrovuQwBMHrFwE9uMzzclq2SzHjg=s176-c-k-c0xffffffff-no-rj-mo",
  //   "username": "KlapYaHandz",
  //   "title": "Vin Vitou - រាល់ថ្ងៃនេះ (Nowadays) Ft. Ruthko [Official MV]",
  //   "view_count": "292,288",
  //   "day_ago": "Sep 25, 2020",
  //   "subscriber_count": "511K",
  //   "like_count": "5.9K",
  //   "unlike_count": "65",
  //   "video_url": "assets/videos/video_4.mp4",
  //   "video_duration": "04:30"
  // },
];
