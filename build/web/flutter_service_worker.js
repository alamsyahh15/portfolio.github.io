'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "main.dart.js": "ed3ad178ea9aa0d8325e48cdcdc31444",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"index.html": "b2096067449eb6ffea3ee4b56b7f1357",
"/": "b2096067449eb6ffea3ee4b56b7f1357",
"assets/AssetManifest.json": "e2fcedffac8aa70c7e026c9ee84d71ad",
"assets/NOTICES": "b87e7ceb9de555cb3775cbfd1db2618c",
"assets/assets/config/data.json": "cd3fd2853b2e7f8a686ad81e519bc082",
"assets/assets/bg_image.jpg": "58b376bd8371e5af6554b48d6d17e03e",
"assets/assets/ab-img.png": "8d7ae5ac6e934401e57e82f70b996bc1",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"version.json": "9bd366ae7e2bd098e01fc371564007ea",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/config": "3e13c66cae48e07485aaeb1f469d8bdf",
".git/refs/remotes/origin/main": "870f81aaa7ba09bbc0478a4a02296afc",
".git/refs/heads/main": "870f81aaa7ba09bbc0478a4a02296afc",
".git/index": "d673e3897ddc3e802aec57d58f039ff6",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/objects/91/f4099cb671cf8722fc75bfdca3383a50f3de29": "337d5d86b936e30a20da3da9ec500bc7",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/36/8b38de354dcf04e6b0bafae954916744e2f6b3": "0d2bf5c3ee5d910d3860af2704c36324",
".git/objects/82/acde57db98571603a4aad50b3b4ba10c8d3300": "3e9a3ba176ca072ede04094bce823937",
".git/objects/71/ce442c81b1d3981f763e9348d2c0c6fae56ad3": "8c6e90e8eb2b49d203595b8914d1aa79",
".git/objects/8a/dddca8f426bde61aa588a34a0fe0b3f764efe2": "33e41164e222aaffca27098575dc2920",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/b9/eed0940818843a7ed91c7768114b9b8e56a9e3": "06474bd548432b507285f9d3ffafa5d9",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/e5/8e05e8f79ddac924d9fb64500bda85cebc65b4": "cd768280cd3c826e27cc01ac0d6d8e84",
".git/objects/68/359807e6fd58e18d8b5998c445d84e14d9ff71": "b99b8a0d65d07700000f9120e8a05e02",
".git/objects/51/8b2d70131e8cbe8f88f497a6e781876c6f6932": "9331914adb6959b5e3e59eab31f096ac",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/2a/0b7e91099c1279770c51d3554c046108d55576": "14273d8ac9ae174692c285c37c25c2e8",
".git/objects/2b/59edf0dba8bd07e3f146f2ed88f1902ee5f5a0": "138e634931926ae49916a96d272e6196",
".git/objects/69/ab0c6ec8121f7740e45b02a27c63590e8d870c": "1eb102fcddc52f3265ad5ae1935473ae",
".git/objects/3a/ac2afc9ad0a295cb5266b09918b160d3f21e5e": "cdecc4fed49848317dde643ee411b8a2",
".git/objects/3a/5b90e006f982d18f190797b8f35084f5dfe59b": "a95940b3ca18a660001a17dab4f49152",
".git/objects/12/511f3ce7149d19ba43ca6f8b204879b1496ac6": "d5b838c65b417c5e00b035f52b3cfd74",
".git/objects/ed/80a7cabee0bde95ac70e0ec7b57e035e1dc092": "f456900075feef90a90eaab1971c1b72",
".git/objects/f2/5787c93ad00665f0f797a43ab397f0628a273e": "59e425d1456034072d902c75d18ec75f",
".git/objects/9c/f0127a1d307c3c6ba69b9ff891c61ee25e74da": "8dead96c050cc167fdccb7e32685ba2e",
".git/objects/7e/9831b60c80474b1f730a5434cfe3ce13410617": "63a851a91d931a5ce23adf452bc7cf51",
".git/objects/37/af47f86bea9311d27798acba9c616c060b1510": "4a924fd074f391651f1cd1a6dcd97703",
".git/objects/ae/034bbb62555c799c7c67e1b3389bb569c11363": "66f8833a4d2c6f11be365e9092cb73c9",
".git/objects/f1/ae99a854bbf6142c6fe0cd1de763a7ad84d4fa": "2b2566a9646ab27429c1b8965fd2f2d3",
".git/objects/c2/fb447d73a792b67820fd4f333ecb2f5fa564d8": "83ac6669233ba925d909ccf1ce077191",
".git/objects/a8/3a17d54b6dc2156c855c6580301cefc9c8d017": "6525101be8d70b808a809af9c83fa4ad",
".git/objects/4b/a322171995917da01c9afb9185f85249198ed8": "3d148917358347e9e86051120a2e3dc2",
".git/objects/f7/ef2b3518b8d0d0530294e14bda87942a5fde8a": "5bcc5a6e38e4f654b1f3c8215ccaacd7",
".git/objects/73/c33edd160712f1fa0b28b9043d8fcd6c923b8f": "6941b172b2fc577042f3373c10279e12",
".git/objects/9d/26f889aedde6d430501e51cac15bb813521e43": "3fe0f97f67cc2c046524c044d6c87e8d",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/20/5bb5db271c6d8de8399864c7bb9b917f638893": "c993b22f115d7f3ae6d5b7b212806539",
".git/objects/67/39b9269121239e518dc71e5bcd04fa2a56fbb6": "87fcd124a4e8418d4c2e7353316fc8fd",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/90/87711c2081e43140f68ce6ea317754d04210bf": "b2caf33601daa6a4c0a737b195e4958e",
".git/objects/40/5130419679a62da7c3a6ab39cbf60cccff755f": "d1ff2fa8a93b14eefd13d57f3809d3bf",
".git/objects/63/141d02054cd3cbe665b1982a0e372dbd4b77da": "b93fb39ce8b4f0c7103e744368912c84",
".git/objects/22/1a43e2543e0818429f6cc7664a7899148a7347": "81eb2c8bbc7c73778fbf7f8ec7a7d2fd",
".git/objects/d4/369e214943bf452c0739a62636a3d0d6d4202e": "c267cfdaf95b9ef01052b4a11c1b672c",
".git/objects/ab/0e98497a51ead7821d1da35a24968ff314e50f": "557c35fe3928eb2af403d1b3926bb9ba",
".git/objects/e7/af267d4dcccb4831551f84e7fb4bfb5aa14cbf": "4ce54616607c247fd0960960312d2bba",
".git/objects/84/3e7eb3441a069e0f018297d90dbba7ca26f676": "84251b7f5561b48aa677eeb7bc83b645",
".git/objects/be/d3b27ad2413b24fd9fb9256d31ea3ae7d25364": "9d0575c37a1d3b5e47495e44de49e756",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/COMMIT_EDITMSG": "030c6af722e5187679e13239d8e7e7ae",
".git/ORIG_HEAD": "99f94ee31c57722d4fd14cce2c370226",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "01b1688f97f94776baae85d77b06048b",
".git/hooks/update.sample": "517f14b9239689dff8bda3022ebd9004",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/pre-push.sample": "3c5989301dd4b949dfa1f43738a22819",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/fsmonitor-watchman.sample": "ecbb0cb5ffb7d773cd5b2407b210cc3b",
".git/FETCH_HEAD": "596a9591408a4f2231615f4dd78ee1a1",
".git/logs/HEAD": "655a2bb429d409b8a00b3bd74ed8b8c3",
".git/logs/refs/remotes/origin/main": "7ab283c00773dc217422510591578daf",
".git/logs/refs/heads/main": "c1ff518823ef4b9eaf9eba7a29757de7",
"manifest.json": "25657114ea89185a3af245fc491ed675"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
