const cacheName = 'adlk-v1';
const assets = [
  '/',
  '/index.html',
  '/lesson_player.html',
  '/students_tracker.js'
];

self.addEventListener('install', e => {
  e.waitUntil(
    caches.open(cacheName).then(cache => {
      cache.addAll(assets);
    })
  );
});

self.addEventListener('fetch', e => {
  e.respondWith(
    caches.match(e.request).then(res => {
      return res || fetch(e.request);
    })
  );
});

