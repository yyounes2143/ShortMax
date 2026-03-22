package com.ss.ttvideoengine.strategy.refresh;

import android.util.LruCache;
import com.bytedance.vcloud.cacheModule.info.PlaylistCacheInfo;
/* loaded from: classes6.dex */
final class PlaylistCache {
    private static final LruCache<String, PlaylistCacheInfo> sGlobalCache = new LruCache<>(100);

    private PlaylistCache() {
    }

    public static PlaylistCacheInfo get(String str) {
        return sGlobalCache.get(str);
    }

    public static boolean isExpired(PlaylistCacheInfo playlistCacheInfo) {
        if (playlistCacheInfo.playlistExpireTimeS < System.currentTimeMillis() / 1000) {
            return true;
        }
        return false;
    }

    public static void put(String str, PlaylistCacheInfo playlistCacheInfo) {
        sGlobalCache.put(str, playlistCacheInfo);
    }
}
